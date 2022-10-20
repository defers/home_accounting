CREATE TABLE IF NOT EXISTS payee(
    id SERIAL,
    name VARCHAR(150),
    is_deleted boolean,
    is_active boolean,
    created_date timestamp,
    updated_date timestamp,
    constraint payee_id_pk PRIMARY KEY (id)
);
