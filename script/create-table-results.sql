create table if not exists platform_test.results
(
    id                bigint                  not null
        constraint results_pkey primary key,
    vacancy_id        bigint                  not null,
    user_id           bigint                  not null,
    time              time                    not null,
    testing_date      timestamp default now() not null,
    correct_answers   integer                 not null,
    incorrect_answers integer                 not null,
    pass              boolean                 not null,
    constraint results_idx unique (user_id, vacancy_id, id),
    foreign key (vacancy_id) references platform_company.vacancies (id) on delete cascade,
    foreign key (user_id) references platform_user.users (id) on delete cascade
);