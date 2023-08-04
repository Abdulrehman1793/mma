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

INSERT INTO cost(name, description, cost_type, cost_unit, amount)
VALUES ('Packaging Materials', 'Cost of containers, boxes, bags, labels, and other packaging materials', 'Material',
        'Box', 10.00),
       ('Packaging Design', 'Cost of graphic design services or creating custom packaging designs', 'Service',
        'Hour', 35.9),
       ('Shipping and Freight', 'Cost of transporting raw materials and delivering finished goods', 'Transportation',
        'Kilometer', 05.6),
       ('Storage & WH Costs', 'Cost of renting or maintaining storage space for raw materials and finished goods',
        'Facility', 'Week', 300.00),
       ('Utilities', 'Cost of electricity, water, and other utilities', 'Overhead', 'Month', 1200),
       ('Labor', 'Cost of hiring and paying employees involved in the baking or manufacturing', 'Labor', 'Hour', 45),
       ('Equip. & Maint.', 'Cost of maintaining and servicing baking equipment and machinery', 'Maintenance', 'Hour',
        125),
       ('Packaging Labor', 'Cost of labor associated with packaging, labeling, and preparing goods', 'Labor', 'Hour',
        35.5),
       ('Quality Control', 'Cost of inspections, tests, and quality control measures', 'Quality', 'Hour', 45),
       ('Marketing & Adv.', 'Cost of promotional materials, advertising campaigns, and marketing', 'Marketing', 'Hour',
        65.7),
       ('Insurance', 'Cost of insurance coverage for the facility, equipment, and liability', 'Overhead', 'Month',
        1500),
       ('Admin. Expenses', 'Cost of office supplies, software licenses, accounting services, etc.', 'Overhead', 'Month',
        1200),
       ('Equip. Depreciation', 'Cost of equipment depreciation over time', 'Depreciation', 'Month', 1000),
       ('Research & Dev.', 'Cost of developing new recipes and improving products', 'R & D', 'Hour', 55),
       ('Waste Disposal', 'Cost of proper waste disposal and recycling processes', 'Overhead', 'Month', 400);