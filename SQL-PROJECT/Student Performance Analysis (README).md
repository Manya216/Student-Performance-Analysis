### 📊 **Student Performance Analysis using MySQL**

### 

#### **📌 About This Project**



This project is a simple yet structured analysis of student performance using MySQL.

The goal was to understand how relational databases work and how SQL can be used to extract meaningful insights from structured data.



The analysis is based on three tables:



Students

Subjects

Marks



Using these tables, different performance metrics and rankings were generated.



##### **🗂 Database Structure**



The project uses three relational tables:



**1. student**



Student\_id **(PRIMARY KEY)**

Student\_name



**2. subjects**



Subject\_id **(PRIMARY KEY)**

Subject\_name



**3. marks**



Student\_id **(Foreign Key)**

Subject\_id **(Foreign Key)**

marks



The Marks table connects students and subjects using foreign keys.

##### 

##### **📈 What I Did in This Project**



After creating the database and importing CSV data, I performed the following analysis:



Joined all three tables to combine student, subject, and marks data

Calculated total marks for each student

Calculated average marks per student

Ranked students based on total performance

Identified the Top 3 performers

Calculated subject-wise average marks

Determined the highest scoring subject

Ranked subjects based on difficulty level

Used CASE statements to classify students as Pass/Fail



##### **🛠 SQL Concepts Used**



CREATE DATABASE \& CREATE TABLE

INNER JOIN

GROUP BY

SUM() and AVG()

ROUND()

RANK() / DENSE\_RANK()

CASE statements

Window functions

