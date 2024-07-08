-- Create the student table
CREATE TABLE student (
    sid INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    login VARCHAR(100) UNIQUE NOT NULL,
    age INTEGER,
    gpa FLOAT
);

-- Insert records into the student table
INSERT INTO student (sid, name, login, age, gpa) VALUES
(53666, 'RZA', 'rza@cs', 44, 4.0),
(53688, 'Bieber', 'jbieber@cs', 27, 3.9),
(53655, 'Tupac', 'shakur@cs', 25, 3.5);

-- Create the course table
CREATE TABLE course (
    cid VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Insert records into the course table
INSERT INTO course (cid, name) VALUES
('15-445', 'Database Systems'),
('15-721', 'Advanced Database Systems'),
('15-826', 'Data Mining'),
('15-799', 'Special Topics in Databases');

-- Create a sequence for the enrollment_id
CREATE SEQUENCE enrollment_seq;

-- Create the enrolled table
CREATE TABLE enrolled (
    enrollment_id INTEGER PRIMARY KEY DEFAULT NEXTVAL('enrollment_seq'),
    sid INTEGER NOT NULL,
    cid VARCHAR(10) NOT NULL,
    grade CHAR(1),
    FOREIGN KEY (sid) REFERENCES student(sid),
    FOREIGN KEY (cid) REFERENCES course(cid)
);

-- Insert records into the enrolled table
INSERT INTO enrolled (sid, cid, grade) VALUES
(53666, '15-445', 'C'),
(53688, '15-721', 'A'),
(53688, '15-826', 'B'),
(53655, '15-445', 'B'),
(53666, '15-721', 'C');
