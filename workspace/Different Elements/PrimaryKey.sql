-- USING PRIMARY KEY TO MAKE VALUES UNIQUE
CREATE TABLE unique_cats
 (
   cat_id INT NOT NULL,
   name VARCHAR(100),
   age INT,
   PRIMARY KEY (cat_id)
 );

CREATE TABLE unique_cats
 (
   cat_id INT NOT NULL  PRIMARY KEY,
   name VARCHAR(100),
   age INT,
 );
