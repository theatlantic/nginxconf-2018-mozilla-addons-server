ALTER TABLE addons_users
    ADD UNIQUE (addon_id, user_id),
    DROP PRIMARY KEY,
    ADD COLUMN id INTEGER UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY FIRST;
