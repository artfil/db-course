create table if not exists results
(
    id                int unsigned           not null auto_increment primary key,
    vacancy_id        int unsigned           not null,
    user_id           int unsigned           not null,
    time              time                   not null,
    testing_date      datetime default now() not null,
    correct_answers   int unsigned           not null,
    incorrect_answers int unsigned           not null,
    pass              boolean                not null,
    constraint results_idx unique (user_id, vacancy_id, id),
    foreign key (vacancy_id) references vacancies (id) on delete cascade,
    foreign key (user_id) references users (id) on delete cascade
);