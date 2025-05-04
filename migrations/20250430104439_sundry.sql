-- Add migration script here

-- disable menu button
update system_menu set status = 1
where id in (2758, 1185, 2084, 2397, 2563, 1281, 2159, 2160, 1254);
