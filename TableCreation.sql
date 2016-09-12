show databases;
create database nicholas_university;
use nicholas_university;

create table person (
    Person_number INTEGER NOT NULL,
    First_name VARCHAR(255) NOT NULL,
    Last_name VARCHAR(255) NOT NULL,
    Class INTEGER NOT NULL,
    Major VARCHAR(255) NOT NULL,
    PRIMARY KEY (Person_number)
);

create table course (
    Course_name VARCHAR(255) NOT NULL UNIQUE,
    Department VARCHAR(255) NOT NULL,
    Course_number INTEGER NOT NULL,
    Credit_hours INTEGER NOT NULL,
    PRIMARY KEY (Course_number, Department)
);

create table section (
    Section_identifier INTEGER NOT NULL,
    Department VARCHAR(255) NOT NULL,
    Course_number INTEGER NOT NULL,
    Semester VARCHAR(255) NOT NULL,
    Year INTEGER NOT NULL,
    Instructor VARCHAR(255) NOT NULL,
    PRIMARY KEY(Section_identifier),
    FOREIGN KEY(Course_number, Department) REFERENCES course(Course_number, Department)
);

create table enrollment (
    Student_number INTEGER NOT NULL,
    Section_Identifier INTEGER NOT NULL,
    Grade VARCHAR(2) NULL,
    PRIMARY KEY(Student_number, Section_identifier),
    FOREIGN KEY(Section_Identifier) REFERENCES person(Section_identifier),
    FOREIGN KEY(Student_number) REFERENCES person(Person_number)
);

create table prerequisite (
    Department VARCHAR(255) NOT NULL,
    Course_number INTEGER NOT NULL,
    Prereq_department VARCHAR(255) NOT NULL,
    Prereq_course_number INTEGER NOT NULL,
    PRIMARY KEY(Department, Course_number, Prereq_department, Prereq_course_number),
    FOREIGN KEY(Course_number, Department) REFERENCES course(Course_number, Department),
    FOREIGN KEY(Prereq_course_number, Prereq_department) REFERENCES course(Course_number, Department)
);


