CREATE DATABASE DbmsLabTask3;



CREATE TABLE Course(Course_ID varchar(10) NOT NULL primary key, Course_Name varchar(20));
 
INSERT INTO Course values('01', 'DBMS');
INSERT INTO Course values('02', 'OS');
INSERT INTO Course values('03', 'UML');
INSERT INTO Course values('04', 'COA');
INSERT INTO Course values('05', 'FLAT');
INSERT INTO Course values('06', 'DS');
INSERT INTO Course values('07', 'ML');
INSERT INTO Course values('08', 'AI');
INSERT INTO Course values('09', 'NLP');
INSERT INTO Course values('10', 'DL');


CREATE TABLE Student(Student_ID varchar(10) not null primary key, Student_Name varchar(30), DOB date, Age int, Door varchar(10), Street varchar(20), City varchar(20), State varchar(20), Pin int, Course_ID varchar(10), foreign key(Course_ID) references Course(Course_ID));
 
INSERT INTO Student values('TVD101', 'Stefan Salvatore', '01-jan-1801', 18, '11', 'abc', 'A', 'US', '626101', '01');
INSERT INTO Student values('TVD102', 'Damon Salvatore', '02-feb-1793', 28, '12', 'def', 'B', 'UK', '626102', '02');
INSERT INTO Student values('TVD103', 'Caroline Forbes', '03-mar-1995', 21, '13', 'ijk', 'C', 'AUS', '626103', '03');
INSERT INTO Student values('TVD104', 'Elena Gilbert', '04-may-1996', 20, '14', 'lmn', 'D', 'US', '626104', '04');
INSERT INTO Student values('TVD105', 'Katherine Pierce', '05-aug-1456', 27, '15', 'opq', 'E', 'IND', '626105', '05');
INSERT INTO Student values('TVD106', 'Alaric Saltzman', '06-sep-1970', 35, '16', 'rst', 'F', 'US', '626106', '06');
INSERT INTO Student values('TVD107', 'klaus Mikaelson', '07-oct-1323', 29, '17', 'uvw', 'G', 'UK', '626107', '07');
INSERT INTO Student values('TVD108', 'Hayley Marshall', '08-nov-1990', 22, '18', 'xyx', 'H', 'AUS', '626108', '08');
INSERT INTO Student values('TVD109', 'Elijah Mickaelson', '09-dec-1315', 30, '19', 'apk', 'I', 'AUS', '626109', '09');
INSERT INTO Student values('TVD110', 'Hope Mickaelson', '10-apr-2002', 15, '20', 'hai', 'J', 'IND', '626110', '10');
 

CREATE TABLE Lecturer(Lecturer_ID varchar(10)not null primary key, Lecturer_Name varchar(20), Course_ID varchar(20), foreign key(Course_ID) references Course(Course_ID));
 
INSERT INTO Lecturer values('L01', 'Albus Dumbledore', '01');
INSERT INTO Lecturer values('L02', ' Minerva Mcgonagall', '02');
INSERT INTO Lecturer values('L03', 'Remus Lupin', '03');
INSERT INTO Lecturer values('L04', 'Rubes Hagrid', '04');
INSERT INTO Lecturer values('L05', 'Filius Flitwick', '05');
INSERT INTO Lecturer values('L06', 'Severus Snape', '06');
INSERT INTO Lecturer values('L07', 'Pomana Sprout', '07');
INSERT INTO Lecturer values('L08', 'Madame Hooch', '08');
INSERT INTO Lecturer values('L09', 'Firenze', '09');
INSERT INTO Lecturer values('L10', 'Dolores umbridge', '10');
 

CREATE TABLE Subjects(Subject_ID varchar(10) NOT NULL primary key, Subject_Name varchar(20), Lecturer_ID varchar(10), foreign key(Lecturer_ID) references Lecturer(Lecturer_ID));
 
INSERT INTO Subjects values('S01', 'DBMS', 'L01');
INSERT INTO Subjects values('S02', 'OS', 'L02');
INSERT INTO Subjects values('S03', 'UML', 'L03');
INSERT INTO Subjects values('S04', 'COA', 'L04');
INSERT INTO Subjects values('S05', 'FLAT', 'L05');
INSERT INTO Subjects values('S06', 'DS', 'L06');
INSERT INTO Subjects values('S07', 'ML', 'L07');
INSERT INTO Subjects values('S08', 'AI', 'L08');
INSERT INTO Subjects values('S09', 'NLP', 'L09');
INSERT INTO Subjects values('S10', 'DL', 'L10');

COMMIT;