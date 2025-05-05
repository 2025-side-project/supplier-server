-- Add migration script here

alter table product_spu
    add column if not exists platform_category_id bigint default 0 not null ;
