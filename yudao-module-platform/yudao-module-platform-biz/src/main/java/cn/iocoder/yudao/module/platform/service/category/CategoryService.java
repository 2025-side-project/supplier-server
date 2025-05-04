package cn.iocoder.yudao.module.platform.service.category;

import java.util.List;

import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategoryListReqVO;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategorySaveReqVO;
import cn.iocoder.yudao.module.platform.dal.dataobject.category.CategoryDO;
import jakarta.validation.Valid;

/**
 * 商品分类 Service 接口
 *
 * @author 芋道源码
 */
public interface CategoryService {

    /**
     * 创建商品分类
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createCategory(@Valid CategorySaveReqVO createReqVO);

    /**
     * 更新商品分类
     *
     * @param updateReqVO 更新信息
     */
    void updateCategory(@Valid CategorySaveReqVO updateReqVO);

    /**
     * 删除商品分类
     *
     * @param id 编号
     */
    void deleteCategory(Long id);

    /**
     * 获得商品分类
     *
     * @param id 编号
     * @return 商品分类
     */
    CategoryDO getCategory(Long id);

    /**
     * 获得商品分类列表
     *
     * @param listReqVO 查询条件
     * @return 商品分类列表
     */
    List<CategoryDO> getCategoryList(CategoryListReqVO listReqVO);

    /**
     * 判断当前商品分类层级是否小于三级
     *
     * @param id 商品分类 Id
     * @return true 表示小于三级
     */
    boolean checkCategoryLevelLessThanThird(Long id);
}
