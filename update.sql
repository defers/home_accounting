create table account (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, commentary varchar(255), is_active boolean, sort int4, currency_id int8, primary key (id));
create table category (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, transaction_type varchar(255), parent_id int8, primary key (id));
create table currency (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, code varchar(255), is_active boolean, primary key (id));
create table currency_rate (date timestamp not null, rate int4, currency_id int8 not null, primary key (date, currency_id));
create sequence id_sequence start 1 increment 1;
alter table if exists account add constraint FK316pn109iutn6yqoxrqp09cpc foreign key (currency_id) references currency;
alter table if exists category add constraint FK2y94svpmqttx80mshyny85wqr foreign key (parent_id) references category;
alter table if exists currency_rate add constraint FKaw5ne4wf39unmp1t0a1fkl459 foreign key (currency_id) references currency;
create table account (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, commentary varchar(255), is_active boolean, sort int4, currency_id int8, primary key (id));
create table category (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, transaction_type varchar(255), parent_id int8, primary key (id));
create table currency (id int8 not null, created_date timestamp, is_deleted boolean, name varchar(255), updated_date timestamp, code varchar(255), is_active boolean, primary key (id));
create table currency_rate (date timestamp not null, rate int4, currency_id int8 not null, primary key (date, currency_id));
create sequence id_sequence start 1 increment 1;
alter table if exists account add constraint FK316pn109iutn6yqoxrqp09cpc foreign key (currency_id) references currency;
alter table if exists category add constraint FK2y94svpmqttx80mshyny85wqr foreign key (parent_id) references category;
alter table if exists currency_rate add constraint FKaw5ne4wf39unmp1t0a1fkl459 foreign key (currency_id) references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        code varchar(255),
        is_active boolean,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255),
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence id_sequence start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id int8,
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id int8 not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;

    create table account (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        commentary varchar(255),
        is_active boolean,
        sort int4,
        currency_id varchar(255),
        primary key (id)
    );

    create table category (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        transaction_type varchar(255),
        parent_id int8,
        primary key (id)
    );

    create table currency_rate (
       date timestamp not null,
        rate int4,
        currency_id varchar(255) not null,
        primary key (date, currency_id)
    );

    create table payee (
       id int8 not null,
        created_date timestamp,
        is_deleted boolean,
        name varchar(255) not null,
        updated_date timestamp,
        is_active boolean,
        primary key (id)
    );
create sequence account_id_seq start 1 increment 1;
create sequence category_id_seq start 1 increment 1;
create sequence payee_id_seq start 1 increment 1;

    alter table if exists account 
       add constraint FK316pn109iutn6yqoxrqp09cpc 
       foreign key (currency_id) 
       references currency;

    alter table if exists category 
       add constraint FK2y94svpmqttx80mshyny85wqr 
       foreign key (parent_id) 
       references category;

    alter table if exists currency_rate 
       add constraint FKaw5ne4wf39unmp1t0a1fkl459 
       foreign key (currency_id) 
       references currency;
