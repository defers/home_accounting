CREATE TABLE IF NOT EXISTS account(
    id SERIAL PRIMARY KEY,
    currency_id varchar(10) not null,
    commentary varchar(255),
    sort int,
    is_active boolean default true,
    is_deleted boolean default false,
    updated_date timestamp,
    created_date timestamp,
    CONSTRAINT fk_account_currency
        FOREIGN KEY (currency_id) REFERENCES currency(code)
);

