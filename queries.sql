-- Select student data with id = 1
SELECT first_name AS name, last_name AS surname, email AS email 
FROM students
WHERE id = 1;

-- Select titles of subjects starting with 'C' and having more than 2 ECTS credits
SELECT title AS title
FROM subject
WHERE title LIKE 'C%' AND number_of_credits > 2;

-- Select the title, id, and start date of activities whose start date is later than today's date
SELECT title AS title, id AS id, start_date AS start_date 
FROM activity
WHERE TO_CHAR(start_date, 'YYYY-MM-DD') > TO_CHAR((SELECT SYSDATE FROM DUAL), 'YYYY-MM-DD');

-- Select all columns of subjects where the year is more than 2 years older than the current year
SELECT *
FROM subject
WHERE year < EXTRACT(YEAR FROM (SELECT SYSDATE FROM DUAL)) - 2;

-- Joining data from two or more tables
-- Join student's first name, last name, and subject title for subjects students are enrolled in
SELECT stu.first_name AS name, stu.last_name AS surname, su.title AS title
FROM students stu
JOIN registration_classes re ON re.student_id = stu.id 
JOIN subject su ON su.id = re.subject_id
WHERE su.title = 'Algorithms';

-- Select the names of study majors and their corresponding department names
SELECT m.name AS major_name, d.name AS department_name 
FROM major m
JOIN department d ON m.department_id = d.id;

-- Using any aggregate functions
-- Count all faculty members
SELECT COUNT(*) AS number_of_members
FROM faculty_member;

-- Calculate the average length of activity descriptions
SELECT ROUND(AVG(LENGTH(description))) AS avg_desc_length 
FROM activity;

-- Find the minimum year in the subject table
SELECT MIN(year) AS min_year
FROM subject;

-- Using GROUP BY command
-- Count the number of study majors for each department
SELECT COUNT(m.id) AS number_of_majors, d.name AS department_name 
FROM department d
JOIN major m ON m.department_id = d.id
GROUP BY d.id, d.name;

-- Count the number of registrations for activities for each activity, sorted by number of registrations in descending order
SELECT COUNT(re.activity_id) AS number_of_registrations, a.title AS activity_title
FROM activity a
JOIN registration_activity re ON re.activity_id = a.id 
JOIN students stu ON stu.id = re.student_id
GROUP BY a.id, a.title
ORDER BY number_of_registrations DESC;

-- Find the maximum number of ECTS credits for each subject title, where the maximum number of ECTS credits does not exceed 4
SELECT MAX(number_of_credits) AS max_ects_credits, title AS title 
FROM subject
GROUP BY title
HAVING MAX(number_of_credits) <= 4;

-- Using GROUP BY command
-- Count the number of study majors for each department, sorted by number of majors in descending order
SELECT COUNT(m.id) AS number_of_majors, d.name AS department_name 
FROM department d
JOIN major m ON m.department_id = d.id 
GROUP BY d.id, d.name
ORDER BY number_of_majors DESC;

-- Count the number of faculty members for each department, where the number of members is greater than or equal to 1, sorted by number of members in descending order
SELECT COUNT(fa.id) AS number_of_members, d.name AS department_name 
FROM department d
JOIN faculty_member fa ON fa.department_id = d.id
GROUP BY d.id, d.name
HAVING COUNT(fa.id) >= 1
ORDER BY number_of_members DESC;
