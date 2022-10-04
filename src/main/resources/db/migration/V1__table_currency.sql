CREATE TABLE if not exists currency
    (id SERIAL, name VARCHAR(150), is_deleted BOOLEAN, created_date TIMESTAMP, updated_date TIMESTAMP, code VARCHAR(10), is_active BOOLEAN);