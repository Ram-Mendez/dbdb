--liquibase formatted sql

--changeset cappfdmd-menus team:insert_new_menus dbms:postgresql
--comment: Insert new menus for summary and validation

-- Insert the new menu entry for summary
INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
VALUES ('menu.home.summary', 'summary', true, 5, (SELECT menu_id FROM core_menus WHERE title = 'menu.home')) ON CONFLICT DO NOTHING;

-- Insert the new menu entry for validation
INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
VALUES ('menu.home.validation', 'validation', true, 6, (SELECT menu_id FROM core_menus WHERE title = 'menu.home')) ON CONFLICT DO NOTHING;

