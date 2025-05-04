package cn.iocoder.yudao.module.platform.controller.admin.category.vo;

import java.time.LocalDateTime;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 平台分类列表 Request VO")
@Data
public class CategoryListReqVO {

    @Schema(description = "父分类编号", example = "20701")
    private Long parentId;

    @Schema(description = "分类名称", example = "李四")
    private String name;

    @Schema(description = "分类排序")
    private Integer sort;

    @Schema(description = "开启状态", example = "2")
    private Short status;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}
