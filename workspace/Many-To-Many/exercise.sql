-- TV Joins Challenge 1 SOLUTION
SELECT 
    title, 
    rating 
FROM series
JOIN reviews
    ON series.id = reviews.series_id;
    
    
-- Challenge 2 AVG rating 
SELECT
    title,
    AVG(rating) as avg_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;


-- CHALLENGE 3  - Two Solutions

SELECT
    first_name,
    last_name,
    rating
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id;
    
SELECT
    first_name,
    last_name,
    rating
FROM reviews
INNER JOIN reviewers
    ON reviewers.id = reviews.reviewer_id;
    
    
-- CHALLENGE 4 - UNREVIEWED SERIES
SELECT title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Challenge 5 - GENRE AVG RATINGS
SELECT genre, 
       Round(Avg(rating), 2) AS avg_rating 
FROM   series 
       INNER JOIN reviews 
               ON series.id = reviews.series_id 
GROUP  BY genre; 


-- CHALLENGE 6 - Reviewer Stats 
SELECT first_name, 
       last_name, 
       Count(rating)                               AS COUNT, 
       Ifnull(Min(rating), 0)                      AS MIN, 
       Ifnull(Max(rating), 0)                      AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2)            AS AVG, 
       IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 

-- CHALLENGE 6 - Reviewer Stats With POWER USERS 
SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 


-- CHALLENGE 7 - 3 TABLES!

SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;