create table if not exists test_blocks
(
    -- common test block
    id              int unsigned not null auto_increment primary key,
    test_id         int unsigned not null,
    type            varchar(50)  not null,
    question_weight int unsigned not null,
    question        text         not null,
    constraint test_blocks_idx unique (test_id, id),
    foreign key (test_id) references tests (id) on delete cascade
);