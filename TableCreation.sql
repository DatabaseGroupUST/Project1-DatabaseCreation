show database;
create database nicholas_university;

use nicholas_university;

create table person (
    Student_number INTEGER NOT NULL,
    Name TINYTEXT NOT NULL,
    Class INTEGER NOT NULL,
    Major TINYTEXT NOT NULL,
    PRIMARY KEY (Student_number)
);

--The keys have not been selected for this table
create table course (
    Course_name TEXT NOT NULL,
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Credit_hours INTEGER NOT NULL
);

--The keys have not been selected for this table
create table section (
    Section_identifier INTEGER NOT NULL,
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Semester TINYTEXT NOT NULL,
    Year INTEGER NOT NULL,
    Instructor TINYTEXT NOT NULL
);

--The keys have not been selected for this table
create table enrollment (
    Student_number INTEGER NOT NULL,
    Section_Identifier INTEGER NOT NULL,
    Grade VARCHAR(2) NULL,
);

--The keys have not been selected for this table
create table prerequisite (
    Department TINYTEXT NOT NULL,
    Course_number INTEGER NOT NULL,
    Prereq_department TINYTEXT NOT NULL,
    Prereq_course_number INTEGER NOT NULL,
);


