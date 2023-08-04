drop table if exists unit_of_measure;

CREATE TABLE unit_of_measure
(
    id   varchar(5)  not null primary key,
    name varchar(50) not null unique
);

drop table if exists purchase_unit;
CREATE TABLE purchase_unit
(
    id   varchar(10) not null primary key,
    name varchar(50) not null unique
);

drop table if exists raw_goods_type;
CREATE TABLE raw_goods_type
(
    id          varchar(10)  not null primary key,
    name        varchar(50)  not null unique,
    description varchar(250) null
);

drop table if exists finished_goods_type;
CREATE TABLE finished_goods_type
(
    id          varchar(10)  not null primary key,
    name        varchar(50)  not null unique,
    description varchar(250) null
);

drop table if exists cost;
CREATE TABLE cost
(
    id          serial primary key,
    name        varchar(50)  not null unique,
    description varchar(500) null,
    cost_type   varchar(50)  null,
    cost_unit   varchar(50)  null,
    amount      double precision
);