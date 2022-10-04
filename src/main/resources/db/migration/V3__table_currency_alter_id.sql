ALTER TABLE currency
    DROP column id,
    ADD CONSTRAINT code_id_pkey PRIMARY KEY (code);