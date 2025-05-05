-- Add migration script here

-- 添加 platform_category 表
DROP TABLE IF EXISTS platform_category;
CREATE TABLE platform_category (
                                           id int GENERATED ALWAYS AS IDENTITY primary key,
                                           parent_id int8 NOT NULL,
                                           name varchar(255) NOT NULL,
                                           sort int4 NULL DEFAULT 0,
                                           status int2 NOT NULL,
                                           creator varchar(64) NULL DEFAULT '',
                                           create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           updater varchar(64) NULL DEFAULT '',
                                           update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           deleted bool NOT NULL DEFAULT false,
                                           tenant_id int8 NOT NULL DEFAULT 0
);

COMMENT ON TABLE platform_category IS '平台分类';

COMMENT ON COLUMN platform_category.id IS '分类编号';
COMMENT ON COLUMN platform_category.parent_id IS '父分类编号';
COMMENT ON COLUMN platform_category.name IS '分类名称';
COMMENT ON COLUMN platform_category.sort IS '分类排序';
COMMENT ON COLUMN platform_category.status IS '开启状态';
COMMENT ON COLUMN platform_category.creator IS '创建者';
COMMENT ON COLUMN platform_category.create_time IS '创建时间';
COMMENT ON COLUMN platform_category.updater IS '更新者';
COMMENT ON COLUMN platform_category.update_time IS '更新时间';
COMMENT ON COLUMN platform_category.deleted IS '是否删除';
COMMENT ON COLUMN platform_category.tenant_id IS '租户编号';
COMMENT ON TABLE platform_category IS '分类';

-- 修改 system_menu id 的生成策略
do
$$
    declare
        b boolean;
    begin
        select is_identity = 'YES' into b
        from information_schema.columns
        where table_name = 'system_menu'
          and column_name = 'id';

        if not b then
            alter table system_menu
                alter id drop default;
            drop sequence if exists system_menu_seq;
            alter table system_menu
                alter id set data type bigint,
                alter id add generated always as identity (start 2808);
        end if;
    end
$$;

-- 添加页面到 system_menu
do $$
    declare parentId int;

    begin
        INSERT INTO system_menu (name, permission, type, sort, parent_id,
                                 path, icon, component, status, component_name)
        VALUES ('平台分类管理', '', 2, 0, 1,
                'platform/category', '', 'platform/category/index', 0, 'PlatformCategory')
        returning id into parentId;

        INSERT INTO system_menu(name, permission, type, sort, parent_id,
                                path, icon, component, status)
        VALUES ('分类查询', 'platform:category:query', 3, 1, parentId,
                '', '', '', 0),
               ('分类创建', 'platform:category:create', 3, 2, parentId,
                '', '', '', 0),
               ('分类更新', 'platform:category:update', 3, 3, parentId,
                '', '', '', 0),
               ('分类删除', 'platform:category:delete', 3, 4, parentId,
                '', '', '', 0),
               ('分类导出', 'platform:category:export', 3, 5, parentId,
                '', '', '', 0);
    end;
$$;
