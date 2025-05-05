package cn.iocoder.yudao.module.platform.service.category;

import java.util.List;
import java.util.Objects;

import cn.iocoder.yudao.framework.common.enums.CommonStatusEnum;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategoryListReqVO;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategorySaveReqVO;
import cn.iocoder.yudao.module.platform.dal.dataobject.category.CategoryDO;
import cn.iocoder.yudao.module.platform.dal.mysql.category.CategoryMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_BINDING_ERROR;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_DISABLED;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_EXITS_CHILDREN;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_LEVEL_EXCEED_THIRD;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_NAME_DUPLICATE;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_NOT_EXISTS;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_PARENT_ERROR;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_PARENT_IS_CHILD;
import static cn.iocoder.yudao.module.platform.enums.ErrorCodeConstants.PLATFORM_CATEGORY_PARENT_NOT_EXITS;

/**
 * 商品分类 Service 实现类
 */
@Service
@Validated
public class CategoryServiceImpl implements CategoryService {

    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public Long createCategory(CategorySaveReqVO createReqVO) {
        // 校验父分类编号的有效性
        validateParentProductCategory(null, createReqVO.getParentId());
        // 校验分类名称的唯一性
        validateProductCategoryNameUnique(null, createReqVO.getParentId(), createReqVO.getName());

        // 插入
        CategoryDO productCategory = BeanUtils.toBean(createReqVO, CategoryDO.class);
        categoryMapper.insert(productCategory);
        // 返回
        return productCategory.getId();
    }

    @Override
    public void updateCategory(CategorySaveReqVO updateReqVO) {
        // 校验存在
        validateProductCategoryExists(updateReqVO.getId());
        // 校验父分类编号的有效性
        validateParentProductCategory(updateReqVO.getId(), updateReqVO.getParentId());
        // 校验分类名称的唯一性
        validateProductCategoryNameUnique(updateReqVO.getId(), updateReqVO.getParentId(), updateReqVO.getName());

        // 更新
        CategoryDO updateObj = BeanUtils.toBean(updateReqVO, CategoryDO.class);
        categoryMapper.updateById(updateObj);
    }

    @Override
    public void deleteCategory(Long id) {
        // 校验存在
        validateProductCategoryExists(id);
        // 校验是否有子商品分类
        if (categoryMapper.selectCountByParentId(id) > 0) {
            throw exception(PLATFORM_CATEGORY_EXITS_CHILDREN);
        }
        // 删除
        categoryMapper.deleteById(id);
    }

    private void validateProductCategoryExists(Long id) {
        if (categoryMapper.selectById(id) == null) {
            throw exception(PLATFORM_CATEGORY_NOT_EXISTS);
        }
    }

    private void validateParentProductCategory(Long id, Long parentId) {
        if (parentId == null || CategoryDO.PARENT_ID_ROOT.equals(parentId)) {
            return;
        }
        // 不能设置自己为父商品分类
        if (Objects.equals(id, parentId)) {
            throw exception(PLATFORM_CATEGORY_PARENT_ERROR);
        }
        // 判断是否为超过三层
        if (!checkCategoryLevelLessThanThird(parentId)) {
            throw exception(PLATFORM_CATEGORY_LEVEL_EXCEED_THIRD);
        }
        // 父商品分类不存在
        CategoryDO parentProductCategory = categoryMapper.selectById(parentId);
        if (parentProductCategory == null) {
            throw exception(PLATFORM_CATEGORY_PARENT_NOT_EXITS);
        }
        // 递归校验父商品分类，如果父商品分类是自己的子商品分类，则报错，避免形成环路
        if (id == null) { // id 为空，说明新增，不需要考虑环路
            return;
        }
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            // 校验环路
            parentId = parentProductCategory.getParentId();
            if (Objects.equals(id, parentId)) {
                throw exception(PLATFORM_CATEGORY_PARENT_IS_CHILD);
            }
            // 继续递归下一级父商品分类
            if (parentId == null || CategoryDO.PARENT_ID_ROOT.equals(parentId)) {
                break;
            }
            parentProductCategory = categoryMapper.selectById(parentId);
            if (parentProductCategory == null) {
                break;
            }
        }
    }

    private void validateProductCategoryNameUnique(Long id, Long parentId, String name) {
        CategoryDO category = categoryMapper.selectByParentIdAndName(parentId, name);
        if (category == null) {
            return;
        }
        // 如果 id 为空，说明不用比较是否为相同 id 的商品分类
        if (id == null) {
            throw exception(PLATFORM_CATEGORY_NAME_DUPLICATE);
        }
        if (!Objects.equals(category.getId(), id)) {
            throw exception(PLATFORM_CATEGORY_NAME_DUPLICATE);
        }
    }

    @Override
    public CategoryDO getCategory(Long id) {
        return categoryMapper.selectById(id);
    }

    @Override
    public List<CategoryDO> getCategoryList(CategoryListReqVO listReqVO) {
        return categoryMapper.selectList(listReqVO);
    }

    @Override
    public boolean checkCategoryLevelLessThanThird(Long id) {
        Long grandParentId = categoryMapper.getCategoryGrandParentId(id);
        // 如果为空, 表示其为一级分类, 返回 0 表示其为二级分类
        return grandParentId == null || grandParentId.equals(CategoryDO.PARENT_ID_ROOT);
    }

    @Override
    public void validateProductBinding(Long id) {
        CategoryDO store = categoryMapper.selectById(id);
        if (store == null) {
            throw exception(PLATFORM_CATEGORY_NOT_EXISTS);
        }
        if (CommonStatusEnum.DISABLE.getStatus() == store.getStatus().intValue()) {
            throw exception(PLATFORM_CATEGORY_DISABLED, store.getName());
        }
        Long grandParentId = categoryMapper.getCategoryGrandParentId(store.getId());
        if (grandParentId != 0L) {
            throw exception(PLATFORM_CATEGORY_BINDING_ERROR);
        }
    }
}
