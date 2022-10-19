create sequence category_id_seq
    as integer;

alter sequence category_id_seq owner to postgres;

CREATE TABLE IF NOT EXISTS category(
    id SERIAL,
    name VARCHAR(150),
    is_deleted BOOLEAN,
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    parent_id BIGINT,
    transaction_type VARCHAR(50)
);

