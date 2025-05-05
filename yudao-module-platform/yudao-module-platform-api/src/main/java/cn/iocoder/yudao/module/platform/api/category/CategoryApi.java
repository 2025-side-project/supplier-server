package cn.iocoder.yudao.module.platform.api.category;

public interface CategoryApi {

    /**
     * 校验商品绑定平台分类, 以下情况视为无效:
     * <pre>
     * - 平台分类不存在
     * - 平台分类被禁用
     * - 平台分类非第三级分类
     * </pre>
     *
     * @param id 分类 ID
     */
    void validateProductBinding(Long id);
}
