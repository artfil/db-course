create table if not exists matches
(
    hr_user        bigint not null,
    candidate_user bigint not null,
    constraint matches_idx unique (hr_user, candidate_user),
    foreign key (hr_user) references users (id) on delete cascade
);