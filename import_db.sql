CREATE TABLE cats
(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  color varchar(255),
  breed varchar(255)
);

CREATE TABLE toys
(
    id SERIAL PRIMARY KEY,
    price varchar(255),
    color varchar(255),
    name varchar(255)
);

CREATE TABLE cattoys
(
    id SERIAL PRIMARY KEY,
    cat_id integer NOT NULL,
    toy_id integer NOT NULL,
    
    FOREIGN KEY(cat_id) REFERENCES cats(id),
    FOREIGN KEY(toy_id) REFERENCES toys(id)
);


INSERT INTO cats
  (name, color, breed)
VALUES
  ('cat_prime', 'black', 'russian blue'),
  ('cat1', 'blue', 'siamese'),
  ('cat2', 'orange', 'maine coon'),
  ('cat3', 'grey', 'american shorthair'),
  ('cat4', 'white', 'persian');

INSERT INTO toys
    (price, color, name)
VALUES
    ('$5.99', 'red', 'plush'),
    ('$9.99', 'grey', 'claw'),
    ('$12.99', 'blue', 'fishing rod'),
    ('$20.00', 'green', 'fur ball'),
    ('$499.99', 'purple', 'fancy plush');


INSERT INTO cattoys
  (cat_id, toy_id)
SELECT cats.id, toys.id
FROM cats
JOIN toys ON cats.id = toys.id;

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;