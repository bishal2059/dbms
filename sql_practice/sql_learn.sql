create database college;
CREATE database if not exists college;
USE college;

create table student(
	id int primary key,
	name varchar(50),
	age int not null
 );
 
 
insert into student values(1,"aman",26);
insert into student values(2,"amir",20);

select * from student;

show databases;
show tables;

drop table student;

create table student(
	rollno int primary key,
    name varchar(50)
);

select * from student;

insert into student (rollno,name) 
values
(101,"karan"),
(102,"arjun"), 
(103,"ram");

insert into student values (104,"shyam");


create table temp1(
	id int unique
);

insert into temp1 values(101);
 

select * from temp1;

create table emp(
	id int,
    salary int default 25000
);

insert into  emp (id) values (101);
select * from emp;

