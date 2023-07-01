create table if not exists user_answers
(
    id            int unsigned not null auto_increment primary key,
    test_block_id int unsigned not null,
    result_id     int unsigned not null,
    answer_index  int unsigned,
    answer        text,
    match_answer  text,
    foreign key (test_block_id) references test_blocks (id) on delete cascade,
    foreign key (result_id) references results (id) on delete cascade
);