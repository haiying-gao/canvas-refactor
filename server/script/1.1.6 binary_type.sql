CREATE TABLE ${TABLE_NAME} (c1 BINARY(3));
INSERT INTO ${TABLE_NAME} VALUES ('a');
SELECT HEX(c1), c1 = 'a', c1 = 'a\0\0' from ${TABLE_NAME};