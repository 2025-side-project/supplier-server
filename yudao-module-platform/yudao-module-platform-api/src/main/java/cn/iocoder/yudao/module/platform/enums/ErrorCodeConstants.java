package cn.iocoder.yudao.module.platform.enums;

import cn.iocoder.yudao.framework.common.exception.ErrorCode;

public interface ErrorCodeConstants {
    // ========== 平台商品分类 2-001-000-000  ==========
    ErrorCode PRODUCT_CATEGORY_NOT_EXISTS = new ErrorCode(2_001_000_000, "商品分类不存在");
    ErrorCode PRODUCT_CATEGORY_EXITS_CHILDREN = new ErrorCode(2_001_000_001, "存在存在子商品分类，无法删除");
    ErrorCode PRODUCT_CATEGORY_PARENT_NOT_EXITS = new ErrorCode(2_001_000_002, "父级商品分类不存在");
    ErrorCode PRODUCT_CATEGORY_PARENT_ERROR = new ErrorCode(2_001_000_003, "不能设置自己为父商品分类");
    ErrorCode PRODUCT_CATEGORY_NAME_DUPLICATE = new ErrorCode(2_001_000_004, "已经存在该分类名称的商品分类");
    ErrorCode PRODUCT_CATEGORY_PARENT_IS_CHILD = new ErrorCode(2_001_000_005,
        "不能设置自己的子ProductCategory为父ProductCategory");
    ErrorCode PRODUCT_CATEGORY_LEVEL_EXCEED_THIRD = new ErrorCode(2_001_000_006,
        "商品分类层级不能超过三级");
}
