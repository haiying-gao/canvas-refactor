CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY , c1 INT, c2 INT);
INSERT INTO ${TABLE_NAME} VALUES (1, 10, 20), (2, 100, 200);
SELECT * FROM ${TABLE_NAME} WHERE c1 = 10 OR id = 3;
SELECT * FROM ${TABLE_NAME} WHERE c1 = 10 XOR c2 = 100;