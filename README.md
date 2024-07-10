#Usos
## 1. Basic Description:

The database is created for an educational institution to manage students, faculty members, courses, study majors, and departments.

## 2. Scope:

- Students: Including basic identifying information.
- Courses: Including basic identifying information.
- Faculty Members: Including basic identifying information.
- Course Registration: A many-to-many relationship between students and courses.
- Activities: All activities that students can register for, including basic identifying information.
- Registration for Activities: A many-to-many relationship between students and activities.
- Study Majors: Basic information about various majors at the university.
- Departments: Basic information about various departments at the university.
## 3. Out of Scope:

- Schedule Management
- Human Resources Management of academic institution employees
- Grading System
## 4. Functional Requirements:

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

## 5. Conceptual Data Model
![Logical](https://github.com/pvpstory/USOS/assets/125301378/8fa1b052-4303-4ebe-8fa9-ed8fc6eba436)

## 6. Physical Data Model
![physical](https://github.com/pvpstory/USOS/assets/125301378/48c56572-0d4a-4f73-a30f-422cffc7ae8c)
