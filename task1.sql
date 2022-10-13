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
 foreign key (parent_ID) references parent(P_ID)
);
create table school_course (
C_ID int auto_increment primary key,
name varchar(50)
);
create table enroll_to(
s_id int ,
c_id int ,
foreign key (s_id) references student(ID),
foreign key (c_id) references school_course(C_ID),
constraint pk_enroll primary key (s_id,c_id)
);
