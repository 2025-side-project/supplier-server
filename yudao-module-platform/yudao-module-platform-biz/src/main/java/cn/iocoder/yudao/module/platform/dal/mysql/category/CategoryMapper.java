package cn.iocoder.yudao.module.platform.dal.mysql.category;

import java.util.List;

import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategoryListReqVO;
import cn.iocoder.yudao.module.platform.dal.dataobject.category.CategoryDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 商品分类 Mapper
 *
 * @author 芋道源码
 */
@Mapper
public interface CategoryMapper extends BaseMapperX<CategoryDO> {

    default List<CategoryDO> selectList(CategoryListReqVO reqVO) {
        return selectList(new LambdaQueryWrapperX<CategoryDO>()
            .eqIfPresent(CategoryDO::getParentId, reqVO.getParentId())
            .likeIfPresent(CategoryDO::getName, reqVO.getName())
            .eqIfPresent(CategoryDO::getSort, reqVO.getSort())
            .eqIfPresent(CategoryDO::getStatus, reqVO.getStatus())
            .betweenIfPresent(CategoryDO::getCreateTime, reqVO.getCreateTime())
            .orderByDesc(CategoryDO::getId));
    }

    default CategoryDO selectByParentIdAndName(Long parentId, String name) {
        return selectOne(CategoryDO::getParentId, parentId, CategoryDO::getName, name);
    }

    default Long selectCountByParentId(Long parentId) {
        return selectCount(CategoryDO::getParentId, parentId);
    }

    Long getCategoryGrandParentId(@Param("id") Long id);
}
