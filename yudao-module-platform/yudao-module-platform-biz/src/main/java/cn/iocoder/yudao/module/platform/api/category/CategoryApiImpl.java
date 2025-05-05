package cn.iocoder.yudao.module.platform.api.category;

import cn.iocoder.yudao.module.platform.service.category.CategoryService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

@Service
@Validated
public class CategoryApiImpl implements CategoryApi{

    @Resource
    private CategoryService categoryService;

    @Override
    public void validateProductBinding(Long id) {
        categoryService.validateProductBinding(id);
    }
}
