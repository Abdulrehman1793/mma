drop table if exists unit_of_measure;

CREATE TABLE unit_of_measure
(
    id   varchar(5)  not null primary key,
    name varchar(50) not null unique
);

CREATE TABLE purchase_unit
(
    id   varchar(10)  not null primary key,
    name varchar(50) not null unique
);

CREATE TABLE raw_goods_type
(
    id   varchar(10)  not null primary key,
    name varchar(50) not null unique,
    description varchar(250)  null
);

CREATE TABLE finished_goods_type
(
    id   varchar(10)  not null primary key,
    name varchar(50) not null unique,
    description varchar(250)  null
);