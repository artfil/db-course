create table if not exists test_block_answers
(
    id            int unsigned not null auto_increment primary key,
    -- common test block
    test_block_id int unsigned not null,
    -- simple test block
    answer        text, -- free answer test block
    answer_index  int unsigned,
    correct       boolean,
    -- match test block
    match_answer  text,
    foreign key (test_block_id) references test_blocks (id) on delete cascade
);