create table if not exists tests
(
    id                         int unsigned not null auto_increment primary key,
    user_id                    int unsigned not null,
    name                       varchar(50)  not null,
    time_limit                 time         not null,
    description                text,
    quantity_for_match         int unsigned not null,
    quantity_for_company_match int unsigned not null,
    constraint tests_idx unique (user_id, id),
    foreign key (user_id) references users (id) on delete cascade
);