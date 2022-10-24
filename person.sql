----1-----
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    height FLOAT,
    city VARCHAR(20),
    favorite_color VARCHAR(20);
)
----2-----
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Luke', 25, 177.8, 'Midway', 'Blue'),
('Logan', 28, 176.0, 'Raleigh', 'Gold'),
('Rachel', 22, 160.8, 'Pleasant Grove', 'Black'),
('Nate', 19, 177.7, 'Midway', 'Red'),
('Taylor', 26, 165, 'Washington', 'Green');
----3-----
SELECT * FROM person
ORDER BY height DESC;
----4-----
SELECT * FROM person
ORDER BY height;
----5-----
SELECT * FROM person
ORDER BY age DESC;
----6-----
SELECT * FROM person
WHERE age > 20;
----7-----
SELECT * FROM person
WHERE age is 18;
----8-----
SELECT * FROM person
WHERE age < 20 AND age > 30;
----9-----
SELECT * FROM person
WHERE age <> 27;
----10-----
SELECT * FROM person
WHERE favorite_color <> 'Red';
----11-----
SELECT * FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';
----12-----
SELECT * FROM person
WHERE favorite_color = 'Red' OR favorite_color = 'Green';
----13-----
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');
----14-----
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');
