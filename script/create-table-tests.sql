create table if not exists tests
(
    id                         bigint      not null
        constraint tests_pkey primary key,
    user_id                    bigint      not null,
    name                       varchar(50) not null,
    time_limit                 time        not null,
    description                text,
    quantity_for_match         integer     not null,
    quantity_for_company_match integer     not null,
    constraint tests_idx unique (user_id, id),
    foreign key (user_id) references users (id) on delete cascade
);