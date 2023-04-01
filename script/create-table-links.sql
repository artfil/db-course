create table if not exists platform_user.links
(
    id          bigint       not null
        constraint links_pkey primary key,
    user_id     bigint       not null,
    name        varchar(50)  not null,
    url         varchar(255) not null,
    description varchar(255),
    constraint links_idx unique (user_id, id),
    foreign key (user_id) references platform_user.users (id) on delete cascade
);
create unique index links_unique_user_id_name_idx on platform_user.links (user_id, name);