package cn.iocoder.yudao.module.platform.controller.admin.category;

import java.io.IOException;
import java.util.List;

import cn.iocoder.yudao.framework.apilog.core.annotation.ApiAccessLog;
import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.framework.excel.core.util.ExcelUtils;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategoryListReqVO;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategoryRespVO;
import cn.iocoder.yudao.module.platform.controller.admin.category.vo.CategorySaveReqVO;
import cn.iocoder.yudao.module.platform.dal.dataobject.category.CategoryDO;
import cn.iocoder.yudao.module.platform.service.category.CategoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import static cn.iocoder.yudao.framework.apilog.core.enums.OperateTypeEnum.EXPORT;
import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "平台管理 - 分类管理")
@RestController
@RequestMapping("/platform/category")
@Validated
public class CategoryController {

    @Resource
    private CategoryService productCategoryService;

    @PostMapping("/create")
    @Operation(summary = "创建平台分类")
    @PreAuthorize("@ss.hasPermission('platform:category:create')")
    public CommonResult<Long> createProductCategory(@Valid @RequestBody CategorySaveReqVO createReqVO) {
        return success(productCategoryService.createCategory(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新平台分类")
    @PreAuthorize("@ss.hasPermission('platform:category:update')")
    public CommonResult<Boolean> updateProductCategory(@Valid @RequestBody CategorySaveReqVO updateReqVO) {
        productCategoryService.updateCategory(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除平台分类")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('platform:category:delete')")
    public CommonResult<Boolean> deleteProductCategory(@RequestParam("id") Long id) {
        productCategoryService.deleteCategory(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得平台分类")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('platform:category:query')")
    public CommonResult<CategoryRespVO> getProductCategory(@RequestParam("id") Long id) {
        CategoryDO productCategory = productCategoryService.getCategory(id);
        return success(BeanUtils.toBean(productCategory, CategoryRespVO.class));
    }

    @GetMapping("/list")
    @Operation(summary = "获得平台分类列表")
    @PreAuthorize("@ss.hasPermission('platform:category:query')")
    public CommonResult<List<CategoryRespVO>> getProductCategoryList(@Valid CategoryListReqVO listReqVO) {
        List<CategoryDO> list = productCategoryService.getCategoryList(listReqVO);
        return success(BeanUtils.toBean(list, CategoryRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出平台分类 Excel")
    @PreAuthorize("@ss.hasPermission('platform:category:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportProductCategoryExcel(@Valid CategoryListReqVO listReqVO,
                                           HttpServletResponse response) throws IOException {
        List<CategoryDO> list = productCategoryService.getCategoryList(listReqVO);
        // 导出 Excel
        ExcelUtils.write(response, "平台分类.xls", "数据", CategoryRespVO.class,
            BeanUtils.toBean(list, CategoryRespVO.class));
    }

}
