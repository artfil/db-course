create table if not exists vacancies
(
    id            int unsigned           not null auto_increment primary key,
    company_id    int unsigned           not null,
    name          varchar(50)            not null,
    creation_date datetime default now() not null,
    published     boolean  default false not null,
    description   text,
    constraint vacancies_idx unique (company_id, id),
    foreign key (company_id) references companies (id) on delete cascade
);