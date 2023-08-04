INSERT INTO unit_of_measure(id, name)
VALUES ('cnt', 'Count'),
       ('ml', 'Milliliters'),
       ('mg', 'Milligram'),
       ('g', 'Grams'),
       ('kg', 'Kilogram');

INSERT INTO purchase_unit(id, name)
VALUES ('bag', 'Bag'),
       ('stick', 'Stick'),
       ('each', 'Each'),
       ('crn', 'Carton'),
       ('btl', 'Bottle'),
       ('bar', 'Bar'),
       ('box', 'Box'),
       ('pkt', 'Packet'),
       ('tub', 'Tub');

INSERT INTO raw_goods_type(id, name, description)
VALUES ('fruit', 'Fruit', null),
       ('bgd', 'Baking good', null),
       ('fat', 'Fat', null);

INSERT INTO finished_goods_type(id, name, description)
VALUES ('bread', 'Bread', null),
       ('pastry', 'Pastry', null),
       ('pie', 'Pie', null),
       ('cake', 'Cake', null),
       ('savory', 'Savory', null);