CREATE TABLE famous_people (
    id INTEGER,
    name TEXT,
    studio TEXT,
    age INTEGER
);

INSERT INTO famous_people VALUES (1, 'Naomi', 'Warner Bros', 35);
INSERT INTO famous_people VALUES (2, 'Adam', 'Universal', 38);
INSERT INTO famous_people VALUES (3, 'Sarah', 'Disney', 55);
INSERT INTO famous_people VALUES (4, 'Tom', 'Paramount', 60);
INSERT INTO famous_people VALUES (5, 'Emma', 'Netflix', 32);
INSERT INTO famous_people VALUES (6, 'Chris', 'Disney', 42);
INSERT INTO famous_people VALUES (7, 'Viola', 'Sony', 58);
INSERT INTO famous_people VALUES (8, 'Ryan', 'Paramount', 46);
INSERT INTO famous_people VALUES (9, 'Cate', 'Warner Bros', 55);
INSERT INTO famous_people VALUES (10, 'Idris', 'Netflix', 51);
SELECT * FROM famous_people;

CREATE TABLE costars (
    id INTEGER,
    person1_id INTEGER,
    person2_id INTEGER,
    movie TEXT
);
INSERT INTO costars VALUES (1, 1, 4, 'Infinity');
INSERT INTO costars VALUES (2, 2, 7, 'The Help');
INSERT INTO costars VALUES (3, 3, 6, 'Avengers');
INSERT INTO costars VALUES (4, 5, 8, 'La La Land');
INSERT INTO costars VALUES (5, 9, 10, 'Luther');
INSERT INTO costars VALUES (6, 1, 6, 'Wonder Woman');
INSERT INTO costars VALUES (7, 4, 8, 'Infinity War');
INSERT INTO costars VALUES (8, 2, 3, 'Enchanted');
INSERT INTO costars VALUES (9, 7, 9, 'The Crown');
INSERT INTO costars VALUES (10, 5, 10, 'The Wire');

SELECT a.name, b.name FROM costars
JOIN famous_people a
ON costars.person1_id = a.id
JOIN famous_people b
ON costars.person2_id = b.id;

SELECT a.name, b.name FROM costars
JOIN famous_people a
ON costars.person1_id = a.id
JOIN famous_people b
ON costars.person2_id = b.id
WHERE a.studio= b.studio;

SELECT AVG(age), studio
FROM famous_people
GROUP BY studio
ORDER BY AVG(age) ASC;

SELECT studio, COUNT(*) AS Most_Stars
FROM famous_people
GROUP BY studio
