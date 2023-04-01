create table if not exists platform_company.vacancies_tests
(
    id            bigint                  not null
        constraint vacancies_tests_pkey primary key,
    vacancy_id    bigint                  not null,
    test_id       bigint                  not null,
    priority      integer                 not null,
    creation_date timestamp default now() not null,
    constraint vacancies_tests_idx unique (vacancy_id, test_id),
    foreign key (vacancy_id) references platform_company.vacancies (id) on delete cascade,
    foreign key (test_id) references platform_test.tests (id) on delete cascade
);