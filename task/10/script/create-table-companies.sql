create table if not exists companies
(
    id          int unsigned not null auto_increment primary key,
    user_id     int unsigned not null,
    name        varchar(50)  not null,
    description text,
    logo        longblob,
    constraint companies_idx unique (user_id, id),
    foreign key (user_id) references users (id) on delete cascade
);
create unique index companies_unique_name_idx on companies (name);