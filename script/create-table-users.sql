create table if not exists users
(
    -- common user
    id             bigint                  not null
        constraint users_pkey primary key,
    first_name     varchar(50)             not null,
    last_name      varchar(50)             not null,
    register_email varchar(255)            not null,
    password       varchar(255)            not null,
    active_profile boolean   default true  not null,
    registered     timestamp default now() not null,
    description    text,
    avatar         bytea,
    -- candidate user
    birth_date     timestamp
);
create unique index users_unique_email_idx on users (register_email);