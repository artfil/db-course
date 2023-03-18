create table if not exists vacancies_tests
(
    id         bigint  not null
        constraint vacancies_tests_pkey primary key,
    vacancy_id bigint  not null,
    test_id    bigint  not null,
    priority   integer not null,
    creation_date   timestamp default now() not null,
    constraint vacancies_tests_idx unique (vacancy_id, test_id),
    foreign key (vacancy_id) references vacancies (id) on delete cascade
);