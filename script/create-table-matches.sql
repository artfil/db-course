create table if not exists matches
(
    id           bigint                  not null
        constraint matches_pkey primary key,
    hr_id        bigint                  not null,
    candidate_id bigint                  not null,
    match_date   timestamp default now() not null,
    constraint matches_idx unique (hr_id, candidate_id),
    foreign key (hr_id) references users (id) on delete cascade,
    foreign key (candidate_id) references users (id) on delete cascade
);