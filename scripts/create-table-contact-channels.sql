create table if not exists contact_channels
(
    contact_id bigint not null,
    channel    varchar(50),
    foreign key (contact_id) references contacts (id) on delete cascade
);