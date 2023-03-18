create table if not exists test_block_answers
(
    id            bigint not null
        constraint test_block_answers_pkey primary key,
    -- common test block
    test_block_id bigint not null,
    -- simple test block
    answer        text, -- free answer test block
    answer_index  integer,
    correct       boolean not null,
    -- match test block
    match_answer  text,
    foreign key (test_block_id) references test_blocks (id) on delete cascade
);