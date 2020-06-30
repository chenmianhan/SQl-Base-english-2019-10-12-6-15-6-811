
create database student_examination_sys;
use student_examination_sys;
create table  student(
   id CHAR(3) NOT NULL,
   name VARCHAR(255) NOT NULL,
   age INT NOT NULL,
   sex VARCHAR(255) NOT NULL,
   PRIMARY KEY ( id )
);
create table subject(
   id CHAR(4) NOT NULL,
   subject VARCHAR(255) NOT NULL,
   teacher VARCHAR(255) NOT NULL,
   description VARCHAR(255) NOT NULL,
   PRIMARY KEY ( id )
);
create table score(
   id INT NOT NULL  AUTO_INCREMENT,
   student_id CHAR(3) NOT NULL,
   subject_id CHAR(4) NOT NULL,
   score INT NOT NULL,
   PRIMARY KEY ( id )
);
insert into student(id,name,age,sex)
values("001","zhangsan","18","male");

insert into student(id,name,age,sex)
values("002","lisi","20","female");

insert into subject(id,subject,teacher,description)
values("1001","Chinese","Mr. Wang","the exam is easy");

insert into subject(id,subject,teacher,description)
values("1002","math","Miss Liu","the exam is difficult");

insert into score(student_id,subject_id,score)
values("001","1001","80");
insert into score(student_id,subject_id,score)
values("002","1002","60");
insert into score(student_id,subject_id,score)
values("001","1001","70");
insert into score(student_id,subject_id,score)
values("002","1002","60.5");
