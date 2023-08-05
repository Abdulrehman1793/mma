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

drop table if exists person;
CREATE TABLE person
(
    id      SERIAL PRIMARY KEY,
    name    varchar(100) NOT NULL,
    phone   varchar(16)  NULL,
    email   varchar(50)  NOT NULL UNIQUE,
    address varchar(200) NULL,
    city    varchar(50)  NULL,
    state   varchar(50)  NULL,
    zip     int,
    type    varchar(50)  NOT NULL CHECK ( type IN ('customer', 'staff') )
);

drop table if exists image;
CREATE TABLE image
(
    id         SERIAL PRIMARY KEY,
    size       int default 0,
    file_name  varchar(50) NOT NULL,
    image_data OID
);

drop table if exists raw_goods;
CREATE TABLE raw_goods
(
    id                SERIAL PRIMARY KEY,
    name              varchar(50) NOT NULL,
    type_id           varchar(10),
    upc               varchar(20) NOT NULL UNIQUE,
    reorder_qty       int              default 0,
    min_qty           int              default 0,
    qty_on_hand       int              default 0,
    amount            double precision default 0,
    purchase_unit_qty int              default 0,
    uom_id            varchar(5),
    purchase_unit_id  varchar(10),
    image_id          int,
    FOREIGN KEY (type_id) REFERENCES raw_goods_type (id),
    FOREIGN KEY (image_id) REFERENCES image (id),
    FOREIGN KEY (purchase_unit_id) REFERENCES purchase_unit (id),
    FOREIGN KEY (uom_id) REFERENCES unit_of_measure (id)
);

drop table if exists finished_goods;
CREATE TABLE finished_goods
(
    id          SERIAL PRIMARY KEY,
    name        varchar(50)  NOT NULL UNIQUE,
    type_id     varchar(10),
    description varchar(500) NOT NULL,
    batch_qty   int              default 0,
    sales_price double precision default 0,
    batch_cost  double precision default 0,
    item_cost   double precision default 0,
    item_profit double precision default 0,
    qty_on_hand int              default 0,
    image_id    int,
    FOREIGN KEY (type_id) REFERENCES finished_goods_type (id),
    FOREIGN KEY (image_id) REFERENCES image (id)
);

