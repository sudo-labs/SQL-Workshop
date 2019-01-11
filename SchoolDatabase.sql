CREATE DATABASE school;
USE school;

CREATE TABLE student (
    fname varchar(50),
    lname varchar(50),
    address varchar(25),
    ID int NOT NULL AUTO_INCREMENT,
    age int NOT NULL,
    PRIMARY KEY (id) 
); 

INSERT INTO student(fname, lname, address, age) VALUES ("Daisy", "Barrette", "42 Wallaby Way","16");
INSERT INTO student(fname, lname, address, age) VALUES ("Melissa", "Mangos", "13 Barrie St","17");
INSERT INTO student(fname, lname, address, age) VALUES ("Emily", "Crawford", "123 Walkthis Way","17");
INSERT INTO student(fname, lname, address, age) VALUES ("Tate", "Turner", "32 Jupiter Ave","18");
INSERT INTO student(fname, lname, address, age) VALUES ("Julie", "Mulaney", "12 Grimmauld Place","15");
INSERT INTO student(fname, lname, address, age) VALUES ("Riley", "Bennet", "11 Cooper St","13");
INSERT INTO student(fname, lname, address, age) VALUES ("Shaun", "Draper", "501-38 Taylor Dr","16");
INSERT INTO student(fname, lname, address, age) VALUES ("Alex", "Quinn", "2170 Princess Crt","17");
INSERT INTO student(fname, lname, address, age) VALUES ("Ryan", "Hargrove", "1174 Greenwood St","18");
INSERT INTO student(fname, lname, address, age) VALUES ("Cody", "Clayton", "1500 Lordeen Ave","13");


CREATE TABLE teacher (
    fname varchar(50),
    lname varchar(50),
    ID int NOT NULL AUTO_INCREMENT,
    office int,
    PRIMARY KEY (id) 
); 

INSERT INTO teacher(fname, lname, office) VALUES ("Lisa", "Russo", "306");
INSERT INTO teacher(fname, lname, office) VALUES ("Trevor", "Hussain", "204");
INSERT INTO teacher(fname, lname, office) VALUES ("Taylor", "McKenzie", "304");
INSERT INTO teacher(fname, lname, office) VALUES ("Ian", "Lord", "305");
INSERT INTO teacher(fname, lname, office) VALUES ("Clara", "Tyler", "205");

CREATE TABLE course (
    code varchar(6) NOT NULL,
    course_name varchar(50),
    room int,
    instructor int,
    PRIMARY KEY (code), 
    FOREIGN KEY (instructor) REFERENCES teacher(id)
); 

INSERT INTO course(code, course_name, room, instructor) VALUES("MPM1D1", "Grade 9 Math", 307, 2);
INSERT INTO course(code, course_name, room, instructor) VALUES("MPM2D1", "Grade 10 Math", 307, 2);
INSERT INTO course(code, course_name, room, instructor) VALUES("ENG1D1", "Grade 9 English", 201, 3);
INSERT INTO course(code, course_name, room, instructor) VALUES("MCV4U1", "Grade 12 Calculus and Vectors", 307, 2);
INSERT INTO course(code, course_name, room, instructor) VALUES("ENG4U1", "Grade 12 English", 201, 3);
INSERT INTO course(code, course_name, room, instructor) VALUES("CHW3M1", "Grade 11 Ancient Worlds", 211, 1);
INSERT INTO course(code, course_name, room, instructor) VALUES("SBI4U1", "Grade 12 Biology", 313, 5);
INSERT INTO course(code, course_name, room, instructor) VALUES("FSF2D1", "Grade 10 French", 313, 5);
INSERT INTO course(code, course_name, room, instructor) VALUES("MCF3M1", "Grade 11 Math", 333, 4);
INSERT INTO course(code, course_name, room, instructor) VALUES("SCH3U1", "Grade 11 Chemistry", 333, 4);

CREATE TABLE takes (
    student_id int,
    course_code varchar(6),
    FOREIGN KEY (course_code) REFERENCES course(code),
    FOREIGN KEY (student_id) REFERENCES student(id)
); 

INSERT INTO takes(student_id, course_code) VALUES(1,"CHW3M1");
INSERT INTO takes(student_id, course_code) VALUES(1,"MCF3M1");
INSERT INTO takes(student_id, course_code) VALUES(2,"MCV4U1");
INSERT INTO takes(student_id, course_code) VALUES(2,"SBI4U1");
INSERT INTO takes(student_id, course_code) VALUES(2,"ENG4U1");
INSERT INTO takes(student_id, course_code) VALUES(3,"MCV4U1");
INSERT INTO takes(student_id, course_code) VALUES(3,"ENG4U1");
INSERT INTO takes(student_id, course_code) VALUES(4,"ENG4U1");
INSERT INTO takes(student_id, course_code) VALUES(4,"SCH3U1");
INSERT INTO takes(student_id, course_code) VALUES(5,"CHW3M1");
INSERT INTO takes(student_id, course_code) VALUES(5,"SCH3U1");
INSERT INTO takes(student_id, course_code) VALUES(6,"MPM1D1");
INSERT INTO takes(student_id, course_code) VALUES(6,"ENG1D1");
INSERT INTO takes(student_id, course_code) VALUES(7,"FSF2D1");
INSERT INTO takes(student_id, course_code) VALUES(7,"MCF3M1");
INSERT INTO takes(student_id, course_code) VALUES(8,"MCV4U1");
INSERT INTO takes(student_id, course_code) VALUES(8,"SBI4U1");
INSERT INTO takes(student_id, course_code) VALUES(9,"SBI4U1");
INSERT INTO takes(student_id, course_code) VALUES(9,"ENG4U1");
INSERT INTO takes(student_id, course_code) VALUES(10,"MPM1D1");
INSERT INTO takes(student_id, course_code) VALUES(10,"ENG1D1");