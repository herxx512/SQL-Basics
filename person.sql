-- Problem 1
CREATE TABLE person(
	id SERIAL PRIMARY KEY,
  name VARCHAR(40),
  age INTEGER,
  height INTEGER,
  city VARCHAR(100),
  favorite_color VARCHAR (40)
);

-- Problem 2
INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Alan', 15, 160, 'Detroit', 'white'),
    ('Bonny', 18, 155, 'Saint Cloud', 'yellow'),
    ('Can', 25, 190, 'New York City', 'orange'),
    ('Danny', 31, 170, 'Chicago', 'green'),
    ('Felicia', 27, 175, 'Houston', 'pink');

-- Problem 3
SELECT * FROM person
ORDER BY height DESC;

-- Problem 4
SELECT * FROM person
ORDER BY height ASC;

-- Problem 5
SELECT * FROM person
ORDER BY age DESC;

-- Problem 6
SELECT * FROM person
WHERE age > 20;

-- Problem 7
SELECT * FROM person
WHERE age = 18;

-- Problem 8 
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- Problem 9
SELECT * FROM person
WHERE age != 27;

-- Problem 10
SELECT * FROM person
WHERE favorite_color != 'red';

-- Problem 11
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- Problem 12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- Problem 13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- Problem 14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');