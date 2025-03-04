# (Free Code Camp) Learn SQL by Building a Student Database Part1


### Student Database Management

This repository contains a Bash script for managing a student database using PostgreSQL. The script reads data from CSV files and populates the database with information about students, majors, and courses.

### Project Overview

This project is part of the freeCodeCamp curriculum, specifically designed to help learners understand how to work with databases using SQL. The main goal is to create a structured database that holds information about students, their majors, and the courses they are enrolled in. The database is designed to facilitate easy querying and management of student data.

#### Files Included

- `courses.csv`: A CSV file containing course names and their associated majors.
- `students.csv`: A CSV file containing student information, including names, majors, and GPAs.
- `insert_data.sh`: A Bash script that processes the CSV files and populates the PostgreSQL database.
- `student.sql`: A SQL dump file that contains SQL commands to set up the database schema and insert initial data.

#### Database Structure

The database consists of the following tables:

- **students**: Contains student information, including first name, last name, major ID, and GPA.
- **majors**: Contains unique majors available in the database.
- **courses**: Contains course names and their associated credits.
- **majors_courses**: A junction table that links majors to their respective courses.
