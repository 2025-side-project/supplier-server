package cn.iocoder.yudao.module.platform.enums;

import cn.iocoder.yudao.framework.common.exception.ErrorCode;

public interface ErrorCodeConstants {
    // ========== 平台商品分类 2-001-000-000  ==========
    ErrorCode PLATFORM_CATEGORY_NOT_EXISTS = new ErrorCode(2_001_000_000, "平台分类不存在");
    ErrorCode PLATFORM_CATEGORY_EXITS_CHILDREN = new ErrorCode(2_001_000_001, "存在子平台分类，无法删除");
    ErrorCode PLATFORM_CATEGORY_PARENT_NOT_EXITS = new ErrorCode(2_001_000_002, "父级平台分类不存在");
    ErrorCode PLATFORM_CATEGORY_PARENT_ERROR = new ErrorCode(2_001_000_003, "不能设置自己为父平台分类");
    ErrorCode PLATFORM_CATEGORY_NAME_DUPLICATE = new ErrorCode(2_001_000_004, "已经存在该分类名称的平台分类");
    ErrorCode PLATFORM_CATEGORY_PARENT_IS_CHILD = new ErrorCode(2_001_000_005,
        "不能设置自己的子ProductCategory为父ProductCategory");
    ErrorCode PLATFORM_CATEGORY_LEVEL_EXCEED_THIRD = new ErrorCode(2_001_000_006,
        "平台分类层级不能超过三级");
    ErrorCode PLATFORM_CATEGORY_BINDING_ERROR = new ErrorCode(2_001_000_007, "商品绑定平台分类失败");
    ErrorCode PLATFORM_CATEGORY_DISABLED = new ErrorCode(2_001_000_008, "平台分类({})已禁用，无法使用");
}
