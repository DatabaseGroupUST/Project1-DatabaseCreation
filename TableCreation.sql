show database;
create database nicholas_university;
use nicholas_university;

create table person (
    Person_number INTEGER NOT NULL,
    First_name TINYTEXT NOT NULL,
    Last_name TINYTEXT NOT NULL,
    Class INTEGER NOT NULL,
    Major TINYTEXT NOT NULL,
    PRIMARY KEY (Person_number)
);

create table course (
    Course_name TEXT NOT NULL,
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Credit_hours INTEGER NOT NULL,
    PRIMARY KEY (Course_name, Course_number, Department)
);

create table section (
    Section_identifier INTEGER NOT NULL,
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Semester TINYTEXT NOT NULL,
    Year INTEGER NOT NULL,
    Instructor TINYTEXT NOT NULL,
    PRIMARY KEY(Section_identifier)
    FOREIGN KEY(Department, Course_number) REFERENCES course(Department, Course_number)
);

create table enrollment (
    Student_number INTEGER NOT NULL,
    Section_Identifier INTEGER NOT NULL,
    Grade VARCHAR(2) NULL,
    PRIMARY KEY(Person_number, Section_identifier)
    FOREIGN KEY(Person_number) REFERENCES person(Person_number)
);

create table prerequisite (
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Prereq_department TINYTEXT NOT NULL,
    Prereq_course_number INTEGER NOT NULL,
    PRIMARY KEY(Department, Course_number, Prereq_department, Prereq_course_number),
    FOREIGN KEY(Department, Course_number) REFERENCES course(Department, Course_number)
);


