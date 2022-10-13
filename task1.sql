create database school;
use school;
create table student (
ID int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
age int,
check(age>=16),
constraint unique_name unique (first_name,last_name)
);
