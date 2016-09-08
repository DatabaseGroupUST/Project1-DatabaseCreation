show database;
create database nicholas_university;

use nicholas_university;

create table person (
    Student_number INTEGER NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Class INTEGER NOT NULL,
    Major TEXT NOT NULL,
    PRIMARY KEY (Student_number)
);
