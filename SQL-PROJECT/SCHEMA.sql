create database student_analysis;
use student_analysis;
create table student(Student_id int primary key, Name varchar(50), Branch varchar(30), Year INT);
create table subjects(Subject_id int primary key, Subject_name varchar(50));
create table marks(Student_id int ,Subject_id int , Marks float, FOREIGN KEY(Student_id) REFERENCES student(Student_id),FOREIGN KEY(Subject_id) REFERENCES subjects(Subject_id));
show databases;
show tables;