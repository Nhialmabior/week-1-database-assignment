-- Week 1 Database Assignment
-- Topic: School Management System

-- Create the database
CREATE DATABASE school_management;

-- Select the database
USE school_management;

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100)
);

-- Create teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100),
    email VARCHAR(100)
);

-- Create courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Create enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample students
INSERT INTO students (first_name, last_name, gender, date_of_birth, email)
VALUES
('John', 'Deng', 'Male', '2005-04-15', 'john@example.com'),
('Mary', 'Nyak', 'Female', '2006-07-20', 'mary@example.com'),
('Peter', 'Bol', 'Male', '2005-11-10', 'peter@example.com');

-- Insert sample teachers
INSERT INTO teachers (first_name, last_name, subject, email)
VALUES
('James', 'Khan', 'Mathematics', 'james@example.com'),
('Susan', 'Anyie', 'English', 'susan@example.com');

-- Insert sample courses
INSERT INTO courses (course_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2);

-- Insert sample enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-09-01'),
(2, 2, '2026-09-01'),
(3, 1, '2026-09-02');

-- Display all students
SELECT * FROM students;

-- Display all teachers
SELECT * FROM teachers;

-- Display all courses
SELECT * FROM courses;

-- Display all enrollments
SELECT * FROM enrollments;