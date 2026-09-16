/*for dyamaic we application task tracking system connecting java with mysql and frontend*/
 create database dynamictaskdb;
 use dynamictaskdb;

 /*1st table users table to store the no of users registered*/
 create table Users(
 userid int auto_increment,
 userfullname varchar(30) not null,
 useremail varchar(50) not null,
 userpassword varchar(30) not null,
 userrole varchar(30) not null,
 primary key(userid)
 );
 
 
 /*2nd table tasks table to to manage the tasks and track the tasks*/
 create table Tasks(
 task_id int auto_increment,
 task_name varchar(100) not null,
 task_description varchar(500) not null,
 story_points int not null,
 assigned_to varchar(30) not null,
 task_status varchar(30) not null,
 primary key(task_id),
 check (task_status in ('Pending', 'In Progress', 'Completed'))
 );
