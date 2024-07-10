CREATE TABLE activity (
    id NUMBER NOT NULL,
    title VARCHAR2(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    description VARCHAR2(4000),
    CONSTRAINT activity_pk PRIMARY KEY (id)
)
LOGGING;

CREATE TABLE department (
    id NUMBER NOT NULL,
    name VARCHAR2(255) NOT NULL,
    location VARCHAR2(255),
    CONSTRAINT department_pk PRIMARY KEY (id)
)
LOGGING;

CREATE TABLE faculty_member (
    id NUMBER NOT NULL,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    title VARCHAR2(10),
    department_id NUMBER,
    CONSTRAINT faculty_member_pk PRIMARY KEY (id),
    CONSTRAINT faculty_member_title_ck CHECK (title IN ('Dr', 'Dr Hab', 'Prof')),
    CONSTRAINT faculty_member_department_fk FOREIGN KEY (department_id) REFERENCES department(id)
)
LOGGING;

CREATE TABLE major (
    id NUMBER NOT NULL,
    name VARCHAR2(255) NOT NULL,
    degree_level VARCHAR2(10),
    department_id NUMBER,
    CONSTRAINT major_pk PRIMARY KEY (id),
    CONSTRAINT major_degree_level_ck CHECK (degree_level IN ('B.A', 'B.S', 'M.A', 'M.S')),
    CONSTRAINT major_department_fk FOREIGN KEY (department_id) REFERENCES department(id)
)
LOGGING;

CREATE TABLE students (
    id NUMBER NOT NULL,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(255),
    major_id NUMBER,
    CONSTRAINT students_pk PRIMARY KEY (id),
    CONSTRAINT students_major_fk FOREIGN KEY (major_id) REFERENCES major(id)
)
LOGGING;

CREATE TABLE subject (
    id NUMBER NOT NULL,
    title VARCHAR2(255) NOT NULL,
    semestr VARCHAR2(10),
    year NUMBER NOT NULL,
    number_of_credits NUMBER NOT NULL,
    coordinator_id NUMBER,
    department_id NUMBER,
    major_id NUMBER,
    CONSTRAINT subject_pk PRIMARY KEY (id),
    CONSTRAINT subject_semestr_ck CHECK (semestr IN ('summer', 'winter')),
    CONSTRAINT subject_department_fk FOREIGN KEY (department_id) REFERENCES department(id),
    CONSTRAINT sub_fac_member_fk FOREIGN KEY (coordinator_id) REFERENCES faculty_member(id),
    CONSTRAINT subject_major_fk FOREIGN KEY (major_id) REFERENCES major(id)
)
LOGGING;

CREATE TABLE registration_activity (
    student_id NUMBER,
    activity_id NUMBER,
    CONSTRAINT reg_act_activity_fk FOREIGN KEY (activity_id) REFERENCES activity(id),
    CONSTRAINT reg_act_students_fk FOREIGN KEY (student_id) REFERENCES students(id)
)
LOGGING;

CREATE TABLE registration_classes (
    student_id NUMBER,
    subject_id NUMBER,
    CONSTRAINT reg_cl_students_fk FOREIGN KEY (student_id) REFERENCES students(id),
    CONSTRAINT reg_cl_subject_fk FOREIGN KEY (subject_id) REFERENCES subject(id)
)
LOGGING;
