import request from '@/config/axios'

// 商品分类 VO
export interface CategoryVO {
  id: number // 分类编号
  parentId: number // 父分类编号
  name: string // 分类名称
  sort: number // 分类排序
  status: number // 开启状态
}

// 商品分类 API
export const CategoryApi = {
  // 查询商品分类列表
  getCategoryList: async (params?: any) => {
    return await request.get({ url: `/platform/category/list`, params })
  },

  // 查询商品分类详情
  getCategory: async (id: number) => {
    return await request.get({ url: `/platform/category/get?id=` + id })
  },

  // 新增商品分类
  createCategory: async (data: CategoryVO) => {
    return await request.post({ url: `/platform/category/create`, data })
  },

  // 修改商品分类
  updateCategory: async (data: CategoryVO) => {
    return await request.put({ url: `/platform/category/update`, data })
  },

  // 删除商品分类
  deleteCategory: async (id: number) => {
    return await request.delete({ url: `/platform/category/delete?id=` + id })
  },

  // 导出商品分类 Excel
  exportCategory: async (params) => {
    return await request.download({ url: `/platform/category/export-excel`, params })
  }
}
