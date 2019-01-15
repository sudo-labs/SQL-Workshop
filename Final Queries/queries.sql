SELECT * from teacher;

SELECT address from student where fname = "Daisy";

SELECT fname, lname, age FROM student ORDER BY age ASC;

SELECT fname, lname, age FROM student ORDER BY lname DESC;


/* Challenge 1 Solutions */

SELECT fname FROM student WHERE age = 13;
SELECT code, room FROM course;
SELECT code, room FROM course ORDER BY room ASC;
SELECT fname FROM teacher WHERE lname = "Russo"; 
SELECT code, room FROM course WHERE instructor = 2 ORDER BY code ASC;

/* END Challenge 1 Solutions */ 


SELECT COUNT(age), age FROM student GROUP BY age;

SELECT MIN(age) FROM student;

SELECT COUNT(room), room FROM course 
GROUP BY room 
ORDER BY room ASC;




CREATE TABLE example (
	name varchar(255),
	address varchar(255)
);

INSERT INTO example (name, address)
VALUES ("Emily", "123 Walkthis Way"); 

DELETE FROM example WHERE name = "Emily"
SELECT * FROM example -- shows that example table is now empty

DROP TABLE example;

UPDATE teacher SET office = 202 WHERE id = 5;

SELECT student.fname, student.lname, takes.course_code FROM student 
JOIN takes ON student.ID = takes.student_id
ORDER BY takes.course_code;

/* Challenge 2 Solutions */

UPDATE teacher SET office = 321 WHERE id = 4;

SELECT AVG(age) FROM student;

DELETE FROM student WHERE ID = 9;

SELECT COUNT(student_id), course_code FROM takes GROUP BY student_id;

SELECT course.code, course.course_name, teacher.fname, teacher.lname FROM course 
JOIN teacher ON course.instructor = teacher.ID;  

/*END Challenge 2 Solutions */