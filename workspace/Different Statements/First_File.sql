CREATE TABLE cats
    (
        cat_id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100),
        age INT,
        PRIMARY KEY(cat_id)
    );
    
    
    -- TO RUN THIS FILE IN THE COMMAND LINE
    -- ~/workspace $
    -- mysql-ctl cli (STARTING THE DATABASE)
    -- use cat-app  (THIS IS CHOOSING THE DATABASE)
    -- source first_file.sql    (RUNS THE SQL FILE)
    -- desc cats 
    
INSERT INTO cats(name, age)
VALUES('Charlie', 17);
 
INSERT INTO cats(name, age)
VALUES('Connie', 10);
 
SELECT * FROM cats;