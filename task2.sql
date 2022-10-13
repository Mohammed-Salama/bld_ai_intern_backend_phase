create database school;
use school;
create table parent (
	P_ID int auto_increment primary key,
	first_name varchar(50),
	second_name varchar(50),
	address varchar(100)
);
create table student (
	ID int auto_increment primary key,
	first_name varchar(50),
	last_name varchar(50),
	parent_ID int  unique,
	foreign key (parent_ID) references parent(P_ID),
	age int,
	check(age>=16),
	constraint unique_name unique (first_name,last_name)
);
create table school_course (
	C_ID int auto_increment primary key,
	name varchar(50),
	b_id int unique
);
create table enroll_to(
	s_id int ,
	c_id int ,
	foreign key (s_id) references student(ID),
	foreign key (c_id) references school_course(C_ID),
	constraint pk_enroll primary key (s_id,c_id)
);
create table book (
	b_id int auto_increment primary key,
	name varchar (50),
	c_id int unique,
	foreign key (c_id) references school_course(C_ID) 
);
alter table school_course
	add constraint foreign key (b_id) references book(b_id)
