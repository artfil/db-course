create table if not exists vacancies
(
    id            bigint                  not null
        constraint vacancies_pkey primary key,
    company_id    bigint                  not null,
    name          varchar(50)             not null,
    creation_date timestamp default now() not null,
    published     boolean   default false not null,
    description   text,
    constraint vacancies_idx unique (company_id, id),
    foreign key (company_id) references companies (id) on delete cascade
);