create table if not exists contacts
(
    id         bigint       not null
        constraint contacts_pkey primary key,
    user_id    bigint       not null,
    name       varchar(50)  not null,
    connection varchar(255) not null,
    constraint contacts_idx unique (user_id, id),
    foreign key (user_id) references users (id) on delete cascade
);
create unique index contacts_unique_connection_idx on contacts (connection);