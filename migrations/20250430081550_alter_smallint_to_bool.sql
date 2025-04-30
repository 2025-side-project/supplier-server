-- Script to modify the 'deleted' column in multiple tables

-- Table: infra_api_access_log
ALTER TABLE infra_api_access_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_api_access_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_api_access_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_api_error_log
ALTER TABLE infra_api_error_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_api_error_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_api_error_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_codegen_column
ALTER TABLE infra_codegen_column ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_codegen_column ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_codegen_column ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_codegen_table
ALTER TABLE infra_codegen_table ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_codegen_table ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_codegen_table ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_config
ALTER TABLE infra_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_data_source_config
ALTER TABLE infra_data_source_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_data_source_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_data_source_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_file
ALTER TABLE infra_file ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_file ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_file ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_file_config
ALTER TABLE infra_file_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_file_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_file_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_file_content
ALTER TABLE infra_file_content ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_file_content ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_file_content ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_job
ALTER TABLE infra_job ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_job ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_job ALTER COLUMN deleted SET DEFAULT false;

-- Table: infra_job_log
ALTER TABLE infra_job_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE infra_job_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE infra_job_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_dept
ALTER TABLE system_dept ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_dept ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_dept ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_dict_data
ALTER TABLE system_dict_data ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_dict_data ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_dict_data ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_dict_type
ALTER TABLE system_dict_type ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_dict_type ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_dict_type ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_login_log
ALTER TABLE system_login_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_login_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_login_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_mail_account
ALTER TABLE system_mail_account ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_mail_account ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_mail_account ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_mail_log
ALTER TABLE system_mail_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_mail_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_mail_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_mail_template
ALTER TABLE system_mail_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_mail_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_mail_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_menu
ALTER TABLE system_menu ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_menu ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_menu ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_notice
ALTER TABLE system_notice ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_notice ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_notice ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_notify_message
ALTER TABLE system_notify_message ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_notify_message ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_notify_message ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_notify_template
ALTER TABLE system_notify_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_notify_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_notify_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_oauth2_access_token
ALTER TABLE system_oauth2_access_token ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_oauth2_access_token ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_oauth2_access_token ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_oauth2_approve
ALTER TABLE system_oauth2_approve ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_oauth2_approve ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_oauth2_approve ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_oauth2_client
ALTER TABLE system_oauth2_client ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_oauth2_client ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_oauth2_client ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_oauth2_code
ALTER TABLE system_oauth2_code ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_oauth2_code ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_oauth2_code ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_oauth2_refresh_token
ALTER TABLE system_oauth2_refresh_token ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_oauth2_refresh_token ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_oauth2_refresh_token ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_operate_log
ALTER TABLE system_operate_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_operate_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_operate_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_post
ALTER TABLE system_post ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_post ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_post ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_role
ALTER TABLE system_role ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_role ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_role ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_role_menu
ALTER TABLE system_role_menu ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_role_menu ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_role_menu ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_sms_channel
ALTER TABLE system_sms_channel ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_sms_channel ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_sms_channel ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_sms_code
ALTER TABLE system_sms_code ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_sms_code ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_sms_code ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_sms_log
ALTER TABLE system_sms_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_sms_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_sms_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_sms_template
ALTER TABLE system_sms_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_sms_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_sms_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_social_client
ALTER TABLE system_social_client ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_social_client ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_social_client ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_social_user
ALTER TABLE system_social_user ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_social_user ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_social_user ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_social_user_bind
ALTER TABLE system_social_user_bind ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_social_user_bind ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_social_user_bind ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_tenant
ALTER TABLE system_tenant ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_tenant ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_tenant ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_tenant_package
ALTER TABLE system_tenant_package ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_tenant_package ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_tenant_package ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_user_post
ALTER TABLE system_user_post ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_user_post ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_user_post ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_user_role
ALTER TABLE system_user_role ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_user_role ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_user_role ALTER COLUMN deleted SET DEFAULT false;

-- Table: system_users
ALTER TABLE system_users ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE system_users ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE system_users ALTER COLUMN deleted SET DEFAULT false;

-- Table: yudao_demo01_contact
ALTER TABLE yudao_demo01_contact ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE yudao_demo01_contact ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE yudao_demo01_contact ALTER COLUMN deleted SET DEFAULT false;

-- Table: yudao_demo02_category
ALTER TABLE yudao_demo02_category ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE yudao_demo02_category ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE yudao_demo02_category ALTER COLUMN deleted SET DEFAULT false;

-- Table: yudao_demo03_course
ALTER TABLE yudao_demo03_course ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE yudao_demo03_course ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE yudao_demo03_course ALTER COLUMN deleted SET DEFAULT false;

-- Table: yudao_demo03_grade
ALTER TABLE yudao_demo03_grade ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE yudao_demo03_grade ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE yudao_demo03_grade ALTER COLUMN deleted SET DEFAULT false;

-- Table: yudao_demo03_student
ALTER TABLE yudao_demo03_student ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE yudao_demo03_student ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE yudao_demo03_student ALTER COLUMN deleted SET DEFAULT false;

-- Statements from 20250430040249_add_memebr_module.sql --

-- Table: member_address
ALTER TABLE member_address ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_address ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_address ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_config
ALTER TABLE member_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_experience_record
ALTER TABLE member_experience_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_experience_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_experience_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_group
ALTER TABLE member_group ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_group ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_group ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_level
ALTER TABLE member_level ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_level ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_level ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_level_record
ALTER TABLE member_level_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_level_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_level_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_point_record
ALTER TABLE member_point_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_point_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_point_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_sign_in_config
ALTER TABLE member_sign_in_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_sign_in_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_sign_in_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_sign_in_record
ALTER TABLE member_sign_in_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_sign_in_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_sign_in_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_tag
ALTER TABLE member_tag ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_tag ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_tag ALTER COLUMN deleted SET DEFAULT false;

-- Table: member_user
ALTER TABLE member_user ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE member_user ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE member_user ALTER COLUMN deleted SET DEFAULT false;

-- Statements from 20250430041448_add_pay_module.sql --

-- Table: pay_app
ALTER TABLE pay_app ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_app ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_app ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_channel
ALTER TABLE pay_channel ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_channel ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_channel ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_demo_order
ALTER TABLE pay_demo_order ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_demo_order ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_demo_order ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_demo_transfer
ALTER TABLE pay_demo_transfer ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_demo_transfer ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_demo_transfer ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_notify_log
ALTER TABLE pay_notify_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_notify_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_notify_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_notify_task
ALTER TABLE pay_notify_task ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_notify_task ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_notify_task ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_order
ALTER TABLE pay_order ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_order ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_order ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_order_extension
ALTER TABLE pay_order_extension ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_order_extension ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_order_extension ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_refund
ALTER TABLE pay_refund ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_refund ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_refund ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_transfer
ALTER TABLE pay_transfer ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_transfer ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_transfer ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_wallet
ALTER TABLE pay_wallet ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_wallet ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_wallet ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_wallet_recharge
ALTER TABLE pay_wallet_recharge ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_wallet_recharge ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_wallet_recharge ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_wallet_recharge_package
ALTER TABLE pay_wallet_recharge_package ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_wallet_recharge_package ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_wallet_recharge_package ALTER COLUMN deleted SET DEFAULT false;

-- Table: pay_wallet_transaction
ALTER TABLE pay_wallet_transaction ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE pay_wallet_transaction ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE pay_wallet_transaction ALTER COLUMN deleted SET DEFAULT false;

-- Statements from 20250430042010_add_mall_module.sql --

-- Table: product_brand
ALTER TABLE product_brand ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_brand ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_brand ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_browse_history
ALTER TABLE product_browse_history ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_browse_history ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_browse_history ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_category
ALTER TABLE product_category ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_category ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_category ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_comment
ALTER TABLE product_comment ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_comment ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_comment ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_favorite
ALTER TABLE product_favorite ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_favorite ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_favorite ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_property
ALTER TABLE product_property ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_property ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_property ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_property_value
ALTER TABLE product_property_value ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_property_value ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_property_value ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_sku
ALTER TABLE product_sku ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_sku ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_sku ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_spu
ALTER TABLE product_spu ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_spu ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_spu ALTER COLUMN deleted SET DEFAULT false;

-- Table: product_statistics
ALTER TABLE product_statistics ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE product_statistics ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE product_statistics ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_article
ALTER TABLE promotion_article ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_article ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_article ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_article_category
ALTER TABLE promotion_article_category ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_article_category ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_article_category ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_banner
ALTER TABLE promotion_banner ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_banner ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_banner ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_bargain_activity
ALTER TABLE promotion_bargain_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_bargain_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_bargain_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_bargain_help
ALTER TABLE promotion_bargain_help ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_bargain_help ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_bargain_help ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_bargain_record
ALTER TABLE promotion_bargain_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_bargain_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_bargain_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_combination_activity
ALTER TABLE promotion_combination_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_combination_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_combination_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_combination_product
ALTER TABLE promotion_combination_product ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_combination_product ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_combination_product ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_combination_record
ALTER TABLE promotion_combination_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_combination_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_combination_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_coupon
ALTER TABLE promotion_coupon ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_coupon ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_coupon ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_coupon_template
ALTER TABLE promotion_coupon_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_coupon_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_coupon_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_discount_activity
ALTER TABLE promotion_discount_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_discount_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_discount_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_discount_product
ALTER TABLE promotion_discount_product ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_discount_product ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_discount_product ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_diy_page
ALTER TABLE promotion_diy_page ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_diy_page ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_diy_page ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_diy_template
ALTER TABLE promotion_diy_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_diy_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_diy_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_kefu_conversation
ALTER TABLE promotion_kefu_conversation ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_kefu_conversation ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_kefu_conversation ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_kefu_message
ALTER TABLE promotion_kefu_message ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_kefu_message ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_kefu_message ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_point_activity
ALTER TABLE promotion_point_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_point_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_point_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_point_product
ALTER TABLE promotion_point_product ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_point_product ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_point_product ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_reward_activity
ALTER TABLE promotion_reward_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_reward_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_reward_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_seckill_activity
ALTER TABLE promotion_seckill_activity ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_seckill_activity ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_seckill_activity ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_seckill_config
ALTER TABLE promotion_seckill_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_seckill_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_seckill_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: promotion_seckill_product
ALTER TABLE promotion_seckill_product ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE promotion_seckill_product ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE promotion_seckill_product ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_after_sale
ALTER TABLE trade_after_sale ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_after_sale ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_after_sale ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_after_sale_log
ALTER TABLE trade_after_sale_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_after_sale_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_after_sale_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_brokerage_record
ALTER TABLE trade_brokerage_record ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_brokerage_record ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_brokerage_record ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_brokerage_user
ALTER TABLE trade_brokerage_user ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_brokerage_user ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_brokerage_user ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_brokerage_withdraw
ALTER TABLE trade_brokerage_withdraw ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_brokerage_withdraw ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_brokerage_withdraw ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_cart
ALTER TABLE trade_cart ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_cart ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_cart ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_config
ALTER TABLE trade_config ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_config ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_config ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_delivery_express
ALTER TABLE trade_delivery_express ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_delivery_express ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_delivery_express ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_delivery_express_template
ALTER TABLE trade_delivery_express_template ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_delivery_express_template ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_delivery_express_template ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_delivery_express_template_charge
ALTER TABLE trade_delivery_express_template_charge ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_delivery_express_template_charge ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_delivery_express_template_charge ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_delivery_express_template_free
ALTER TABLE trade_delivery_express_template_free ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_delivery_express_template_free ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_delivery_express_template_free ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_delivery_pick_up_store
ALTER TABLE trade_delivery_pick_up_store ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_delivery_pick_up_store ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_delivery_pick_up_store ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_order
ALTER TABLE trade_order ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_order ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_order ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_order_item
ALTER TABLE trade_order_item ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_order_item ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_order_item ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_order_log
ALTER TABLE trade_order_log ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_order_log ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_order_log ALTER COLUMN deleted SET DEFAULT false;

-- Table: trade_statistics
ALTER TABLE trade_statistics ALTER COLUMN deleted DROP DEFAULT;
ALTER TABLE trade_statistics ALTER COLUMN deleted TYPE boolean USING deleted::int::bool;
ALTER TABLE trade_statistics ALTER COLUMN deleted SET DEFAULT false;
