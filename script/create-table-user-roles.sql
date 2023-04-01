create table if not exists platform_user.user_roles
(
    user_id bigint not null,
    role    varchar(50),
    constraint user_roles_idx unique (user_id, role),
    foreign key (user_id) references platform_user.users (id) on delete cascade
);