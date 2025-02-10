create database 2404G1;

USE 2404G1;

DROP database 2404G1;

DROP TABLE students;

CREATE TABLE students(
	enrollmentNumber INT,
    studentName VARCHAR(50),
    fatherName VARCHAR(50),
    contactNumber INT,
    email VARCHAR(100),
    dob DATE,
    age INT
);

SELECT * FROM students;

INSERT INTO students(enrollmentNumber,studentName,fatherName,contactNumber,email,dob,age) VALUES 
					('7857234897589','Haseeb','Azeem',923302540186,null,'2000-12-12',12);


INSERT INTO students(enrollmentNumber,studentName,fatherName,contactNumber,email,dob,age) VALUES 
					(667676,'Jameel','Tariq',78978787,'jameel@gmail.com','2010-09-12', 15),
                    (78878789,'Muheeb','Aslam',6767678676,'muheebaslam@gmail.com','2009-08-09',18);


SELECT * FROM students WHERE studentName = 'Haseeb';

DELETE FROM students WHERE studentName = "jameel";


UPDATE students SET email = 'jameel123@gmail.com', fatherName= 'Arif' WHERE studentName = 'jameel';

SELECT studentName, fatherName, email FROM students WHERE email is null;


SELECT * FROM students WHERE age > 15;

SELECT * FROM students WHERE age < 15;

SELECT * FROM students WHERE age >= 15;

SELECT * FROM students WHERE age <= 15;

SELECT * FROM students WHERE age = 15 AND fatherName = 'tariq' AND studentName = 'jameel';

SELECT * FROM students WHERE age = 12 OR fatherName = 'tariq';













