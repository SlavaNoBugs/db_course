--TASK-2
--1
SELECT n_group, COUNT(*)
FROM student
GROUP BY n_group
--2
SELECT DISTINCT n_group, MAX(score) as avg_score
FROM student
GROUP BY n_group
--3
SELECT DISTINCT surname, COUNT(*)
FROM student
GROUP BY surname
--4
SELECT *, COUNT(year_1) AS student FROM (
    SELECT EXTRACT(YEAR FROM date_birth) AS year_1
    FROM student
) t
GROUP BY year_1;
--5
SELECT course, AVG(score) FROM (
    SELECT score, substr(CAST(n_group AS varchar), 1, 1) AS course
    FROM student
) t
GROUP BY course;
--6
SELECT n_group, course, MAX(score) FROM (
    SELECT n_group, score, substr(CAST(n_group AS varchar), 1, 1) AS course
    FROM student
) t
GROUP BY course, n_group, score
HAVING score = (SELECT max(score) 
               FROM student)
;
--7
SELECT n_group, course, AVG(score) FROM (
    SELECT n_group, score, substr(CAST(n_group AS varchar), 1, 1) AS course
    FROM student
) t
GROUP BY course, n_group
HAVING AVG(score) <= 3.5
ORDER BY avg ASC
;
--8
SELECT n_group, AVG(score), COUNT(n_group), MAX(score), MIN(score) FROM student
GROUP BY n_group
;
--9
SELECT n_group, name
FROM student
WHERE score =
    (SELECT MAX(score)
     FROM student)
GROUP BY n_group, name
--10
SELECT ST.name, ST.n_group FROM student ST,
(
    SELECT n_group, MAX(score) as max_score
    FROM student
    GROUP BY n_group
) Z
WHERE (ST.n_group = Z.n_group)and(ST.score = Z.max_score)

