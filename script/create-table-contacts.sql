create table if not exists platform_user.contacts
(
    id         bigint       not null
        constraint contacts_pkey primary key,
    user_id    bigint       not null,
    channel    varchar(50)  not null,
    name       varchar(50)  not null,
    connection varchar(255) not null,
    constraint contacts_idx unique (user_id, id),
    foreign key (user_id) references platform_user.users (id) on delete cascade
);
create unique index contacts_unique_user_id_name_idx on platform_user.contacts (user_id, name);