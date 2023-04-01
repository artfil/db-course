create table if not exists platform_test.test_blocks
(
    -- common test block
    id              bigint      not null
        constraint test_blocks_pkey primary key,
    test_id         bigint      not null,
    type            varchar(50) not null,
    question_weight integer     not null,
    question        text        not null,
    constraint test_blocks_idx unique (test_id, id),
    foreign key (test_id) references platform_test.tests (id) on delete cascade
);