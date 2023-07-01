create table if not exists vacancies_tests
(
    id            int unsigned           not null auto_increment primary key,
    vacancy_id    int unsigned           not null,
    test_id       int unsigned           not null,
    priority      integer                not null,
    creation_date datetime default now() not null,
    constraint vacancies_tests_idx unique (vacancy_id, test_id),
    foreign key (vacancy_id) references vacancies (id) on delete cascade,
    foreign key (test_id) references tests (id) on delete cascade
);