# Usos
The database is created for an educational institution to manage students, faculty members, courses, study majors, and departments.

## 1. Scope:

- Students: Including basic identifying information.
- Courses: Including basic identifying information.
- Faculty Members: Including basic identifying information.
- Course Registration: A many-to-many relationship between students and courses.
- Activities: All activities that students can register for, including basic identifying information.
- Registration for Activities: A many-to-many relationship between students and activities.
- Study Majors: Basic information about various majors at the university.
- Departments: Basic information about various departments at the university.
## 2. Out of Scope:

- Schedule Management
- Human Resources Management of academic institution employees
- Grading System
## 3. Functional Requirements:

### 1. Student Management:
The system should allow administrators to add, edit, and delete student records, including their major.
Students should be able to view and, if permitted, update their personal information (such as name and email address).
### 3. Course and Activity Management:
The system should allow administrators to create, update, and delete information about courses, including the title, semester, year, number of ECTS credits, coordinator, and department.
Faculty members should be able to view and manage the courses they are responsible for.
Students and faculty members should be able to create, update, and delete information about activities, including the title, description, start date, and end date.
Students should be able to view courses and activities and register for them.
Administrators should be able to view and manage student registrations for courses and activities.
### 4. Management of Majors and Departments:
Administrators should be able to create, edit, and delete majors and departments.
Faculty members should be associated with specific departments.
### 5. Faculty Member Management:
Administrators should be able to add, edit, and delete faculty members, including details such as first name, last name, title, and department.
Faculty members should be able to view and update their personal information as needed.
### 6. Authentication:
The system should authenticate users (students, faculty, and administrators) before allowing access to confidential information or actions.

## 4. Conceptual Data Model
![Logical](https://github.com/pvpstory/USOS/assets/125301378/8fa1b052-4303-4ebe-8fa9-ed8fc6eba436)

## 5. Physical Data Model
![physical](https://github.com/pvpstory/USOS/assets/125301378/48c56572-0d4a-4f73-a30f-422cffc7ae8c)

##  6.Relations in the Database
### Students (students)
Each student is identified by a unique ID and has attributes such as first name, last name, email, and major ID.
Primary Key: id
Foreign Key: major_id references major(id)

### Courses (subject)
Courses are identified by a unique ID and include attributes such as title, semester, year, number of credits, coordinator ID, department ID, and major ID.
Primary Key: id
Foreign Keys: department_id references department(id), coordinator_id references faculty_member(id), major_id references major(id)

### Faculty Members (faculty_member)
Each faculty member is identified by a unique ID and has attributes such as first name, last name, title, and department ID.
Primary Key: id
Foreign Key: department_id references department(id)

### Departments (department)
Departments are identified by a unique ID and have attributes such as name and location.
Primary Key: id

### Majors (major)
Each major is identified by a unique ID and includes attributes such as name, degree level, and department ID.
Primary Key: id
Foreign Key: department_id references department(id)

### Activities (activity)
Activities are identified by a unique ID and include attributes such as title, start date, end date, and description.
Primary Key: id

### Course Registration (registration_classes)
This is a many-to-many relationship table linking students and courses.
Foreign Keys: student_id references students(id), subject_id references subject(id)

### Activity Registration (registration_activity)
This is a many-to-many relationship table linking students and activities.
Foreign Keys: student_id references students(id), activity_id references activity(id)

## Summary of Relationships
### One-to-Many:
- A department has many faculty members and many majors.
- A major has many students and many courses.
- A course is managed by one faculty member and belongs to one department and one major.
### Many-to-Many:
- Students can enroll in many courses (via registration_classes).
- Students can participate in many activities (via registration_activity).

 ## 7. Files Description
 - usos.sql: Database schema creation.
 - insert.sql: Initial data insertion.
 - queries.sql: Example queries.
 ## 8. Instalation
 1. Clone the repository:
  ```sh
    git clone https://github.com/pvpstory/USOS.git
  ```
 2. Navigate to the project directory:
  ```sh
    cd USOS
   ```

3. Import the database schema:
- Execute usos.sql in your SQL environment.
- Load initial data using insert.sql.
