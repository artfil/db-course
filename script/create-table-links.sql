create table if not exists links
(
    id          bigint       not null
        constraint links_pkey primary key,
    parent_id   bigint       not null,
    name        varchar(50)  not null,
    url         varchar(255) not null,
    description varchar(255),
    constraint links_idx unique (parent_id, id),
    foreign key (parent_id) references users (id) on delete cascade,
    foreign key (parent_id) references companies (id) on delete cascade
);
create unique index links_unique_url_idx on links (url);