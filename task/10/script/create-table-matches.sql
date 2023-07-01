create table if not exists matches
(
    id           int unsigned           not null auto_increment primary key,
    hr_id        int unsigned           not null,
    candidate_id int unsigned           not null,
    match_date   datetime default now() not null,
    constraint matches_idx unique (hr_id, candidate_id),
    foreign key (hr_id) references users (id) on delete cascade,
    foreign key (candidate_id) references users (id) on delete cascade
);