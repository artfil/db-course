create table if not exists platform_test.user_answers
(
    id            bigint not null
        constraint user_answers_pkey primary key,
    test_block_id bigint not null,
    result_id     bigint not null,
    answer_index  integer,
    answer        text,
    match_answer  text,
    foreign key (test_block_id) references platform_test.test_blocks (id) on delete cascade,
    foreign key (result_id) references platform_test.results (id) on delete cascade
);