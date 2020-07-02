
create table  student(
   id CHAR(3) NOT NULL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   age INT NOT NULL,
   sex VARCHAR(255) NOT NULL
);
create table subject(
   id CHAR(4) NOT NULL PRIMARY KEY,
   subject VARCHAR(255) NOT NULL,
   teacher VARCHAR(255) NOT NULL,
   description VARCHAR(255) NOT NULL
);
create table score(
   id INT NOT NULL  PRIMARY KEY,
   student_id CHAR(3) NOT NULL,
   subject_id CHAR(4) NOT NULL,
   score float NOT NULL
);
create sequence seq_id
 minvalue 1 
 nomaxvalue
 start with 1 
 increment by 1  
 nocache;
create or replace trigger id_trig
    before insert on score 
	for each row
 begin
    select seq_id.nextval into :new.id from dual;
 end; 
 /
insert into student(id,name,age,sex)
values('001','zhangsan',18,'male');

insert into student(id,name,age,sex)
values('002','lisi',20,'female');

insert into subject(id,subject,teacher,description)
values('1001','Chinese','Mr. Wang','the exam is easy');

insert into subject(id,subject,teacher,description)
values('1002','math','Miss Liu','the exam is difficult');

insert into score(student_id,subject_id,score)
values('001','1001',80);
insert into score(student_id,subject_id,score)
values('002','1002',60);
insert into score(student_id,subject_id,score)
values('001','1001',70);
insert into score(student_id,subject_id,score)
values('002','1002',60.5);
