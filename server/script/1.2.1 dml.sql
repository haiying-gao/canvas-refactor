CREATE TABLE ${TABLE_NAME} (id INT, name VARCHAR(11), age INT);
INSERT INTO ${TABLE_NAME} VALUES (1, 'Green', 18), (2, 'Jim', 24);
SELECT * FROM ${TABLE_NAME};
UPDATE ${TABLE_NAME} SET age = 8 WHERE id = 1;
DELETE FROM ${TABLE_NAME} WHERE id = 2;
SELECT * FROM ${TABLE_NAME};