-- USING WHERE STATEMENTS WITH SELECT (case insensitive)
-- SELECT * FROM <table name> WHERE <column expression>;

SELECT * FROM cats WHERE age = 4;
SELECT * FROM cats WHERE name = ‘egg’;
SELECT name, age FROM cats WHERE breed=’Tabby’;
SELECT cat_id, age FROM cats WHERE cat_id=age;
SELECT * FROM cats WHERE  cat_id=age;
