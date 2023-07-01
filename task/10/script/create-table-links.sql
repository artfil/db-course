create table if not exists links
(
    id      int unsigned not null auto_increment primary key,
    user_id int unsigned not null,
    url     json         not null,
    constraint links_idx unique (user_id, id),
    foreign key (user_id) references users (id) on delete cascade
);
-- create unique index links_unique_user_id_name_idx on links (user_id, name);