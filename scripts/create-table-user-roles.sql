create table if not exists user_roles
(
    user_id bigint not null,
    role    varchar(50),
    constraint user_roles_idx unique (user_id, role),
    foreign key (user_id) references users (id) on delete cascade
);