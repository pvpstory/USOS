-- Insert into department
INSERT INTO department (id, name, location) VALUES (1, 'Computer Science', 'Building A');
INSERT INTO department (id, name, location) VALUES (2, 'Mathematics', 'Building B'); INSERT INTO department (id, name, location) VALUES (3, 'Physics', 'Building C'); INSERT INTO department (id, name, location) VALUES (4, 'Chemistry', 'Building D'); INSERT INTO department (id, name, location) VALUES (5, 'Biology', 'Building E');
-- Insert into faculty_member
 INSERT INTO faculty_member (id, first_name, last_name, title, department_id) VALUES (1, 'John', 'Doe', 'Dr', 1);
INSERT INTO faculty_member (id, first_name, last_name, title, department_id) VALUES (2, 'Jane', 'Smith', 'Prof', 2);
INSERT INTO faculty_member (id, first_name, last_name, title, department_id) VALUES (3, 'Albert', 'Johnson', 'Dr Hab', 3);
INSERT INTO faculty_member (id, first_name, last_name, title, department_id) VALUES (4, 'Mary', 'Williams', 'Dr', 4);
INSERT INTO faculty_member (id, first_name, last_name, title, department_id) VALUES (5, 'Michael', 'Brown', 'Prof', 5);
-- Insert into major
INSERT INTO major (id, name, degree_level, department_id) VALUES (1, 'Computer Science', 'B.S', 1);
INSERT INTO major (id, name, degree_level, department_id) VALUES (2, 'Mathematics', 'B.A', 2);
INSERT INTO major (id, name, degree_level, department_id) VALUES (3, 'Physics', 'M.S', 3);
INSERT INTO major (id, name, degree_level, department_id) VALUES (4, 'Chemistry', 'B.A', 4);
INSERT INTO major (id, name, degree_level, department_id) VALUES (5, 'Biology', 'M.A', 5);
-- Insert into students
INSERT INTO students (id, first_name, last_name, email, major_id) VALUES (1, 'Alice', 'White', 'alice.white@example.com', 1);
INSERT INTO students (id, first_name, last_name, email, major_id) VALUES (2, 'Bob', 'Green', 'bob.green@example.com', 2);
INSERT INTO students (id, first_name, last_name, email, major_id) VALUES (3, 'Charlie', 'Black', 'charlie.black@example.com', 3);
INSERT INTO students (id, first_name, last_name, email, major_id) VALUES (4, 'David', 'Blue', 'david.blue@example.com', 4);
INSERT INTO students (id, first_name, last_name, email, major_id) VALUES (5, 'Eve', 'Gray', 'eve.gray@example.com', 5);
-- Insert into subject
INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id) VALUES (1, 'Algorithms', 'winter', 2023, 4, 1, 1, 1);
INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id) VALUES (2, 'Calculus', 'summer', 2023, 3, 2, 2, 2);
INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id) VALUES (3, 'Quantum Mechanics', 'winter', 2023, 4, 3, 3, 3); INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id) VALUES (4, 'Organic Chemistry', 'summer', 2023, 3, 4, 4, 4); INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id) VALUES (5, 'Genetics', 'winter', 2023, 4, 5, 5, 5);
-- Insert into activity
INSERT INTO activity (id, title, start_date, end_date, description) VALUES (1, 'Hackathon', TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-02', 'YYYY-MM-DD'), '24-hour coding event');
INSERT INTO activity (id, title, start_date, end_date, description) VALUES (2, 'Math Olympiad', TO_DATE('2023-08-15', 'YYYY-MM-DD'), TO_DATE('2023-08-16', 'YYYY-MM-DD'), 'Competition for solving math problems');
INSERT INTO activity (id, title, start_date, end_date, description) VALUES (3, 'Physics Conference', TO_DATE('2023-09-20', 'YYYY-MM-DD'), TO_DATE('2023-09-22', 'YYYY-MM-DD'), 'International conference on physics');

INSERT INTO activity (id, title, start_date, end_date, description) VALUES (4, 'Chemistry Workshop', TO_DATE('2023-10-05', 'YYYY-MM-DD'), TO_DATE('2023-10-06', 'YYYY-MM-DD'), 'Hands-on chemistry experiments');
INSERT INTO activity (id, title, start_date, end_date, description) VALUES (5, 'Biology Seminar', TO_DATE('2023-11-10', 'YYYY-MM-DD'), TO_DATE('2023-11-11', 'YYYY-MM-DD'), 'Seminar on latest biology research');
-- Insert into registration_activity
INSERT INTO registration_activity (student_id, activity_id) VALUES (1, 1); INSERT INTO registration_activity (student_id, activity_id) VALUES (2, 2); INSERT INTO registration_activity (student_id, activity_id) VALUES (3, 3); INSERT INTO registration_activity (student_id, activity_id) VALUES (4, 4); INSERT INTO registration_activity (student_id, activity_id) VALUES (5, 5);
-- Insert into registration_classes
INSERT INTO registration_classes (student_id, subject_id) VALUES (1, 1); INSERT INTO registration_classes (student_id, subject_id) VALUES (2, 2); INSERT INTO registration_classes (student_id, subject_id) VALUES (3, 3); INSERT INTO registration_classes (student_id, subject_id) VALUES (4, 4); INSERT INTO registration_classes (student_id, subject_id) VALUES (5, 5); INSERT INTO activity (id, title, start_date, end_date, description)
VALUES (10, 'Swimming', TO_DATE('2025-06-30', 'YYYY-MM-DD'), NULL, 'This is a future activity.');
INSERT INTO subject (id, title, semestr, year, number_of_credits, coordinator_id, department_id, major_id)
VALUES (10, 'Literature', 'winter', 2020, 3, NULL, NULL, NULL);
