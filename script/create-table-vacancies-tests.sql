create table if not exists vacancies_tests
(
    vacancy_id bigint not null,
    test_id    bigint not null,
    constraint vacancies_tests_idx unique (vacancy_id, test_id),
    foreign key (vacancy_id) references vacancies (id) on delete cascade
);