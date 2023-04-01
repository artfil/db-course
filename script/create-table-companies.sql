create table if not exists platform_company.companies
(
    id          bigint      not null
        constraint companies_pkey primary key,
    user_id     bigint      not null,
    name        varchar(50) not null,
    description text,
    logo        bytea,
    constraint companies_idx unique (user_id, id),
    foreign key (user_id) references platform_user.users (id) on delete cascade
);
create unique index companies_unique_name_idx on platform_company.companies (name);