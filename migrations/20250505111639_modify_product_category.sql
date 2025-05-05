-- Add migration script here

alter table product_category alter column pic_url drop not null;
alter table product_category drop constraint if exists pk_product_category;

do
$$
    declare
        b boolean;
    begin
        select is_identity = 'YES' into b
        from information_schema.columns
        where table_name = 'product_category'
          and column_name = 'id';

        if not b then
            alter table product_category
                alter id drop default;
            drop sequence if exists product_category_seq;
            alter table product_category
                alter id set data type bigint,
                alter id add generated always as identity (start 84);
        end if;
    end
$$;
