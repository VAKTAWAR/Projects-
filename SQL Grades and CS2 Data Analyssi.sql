



create database Sciencesection;


#creating database 
create database mydb;
use mydb;



Create table student_info(ID integer,firstname varchar(20), Salary ineger))

insert into student_info value (1,'tessy');

#view table
select* from  student_info;


CREATE TABLE  section_info (id integer,LOCATION VARCHAR(10));
create Table Employee (ID Integer, Firstname varchar(10), Salary integer);
insert  into employee value(101,'rocky',13000),(100,'romy',200000),(200,'raj',24000);
update employee 
select *from employee ;

select *from employee where ID =101;
select *from employee where salary>12000 and first name "rocky"

delete from employee where id= 102;

truncate table employee;
select* from employee;
drop table employee ;
select *from employee ;

use mydb;
select *from grades where passfail='P';
select *from grades where passfail='F';
select Firstname ,lastname from grades where passfail='P';
select * from grades where percent<77;
select * from grades where percent<=77 ;
select * from grades where percent=77;
select * from grades where percent<>77;
select * from grades where percent>77;
select* from grades where quiz1=10 and quiz2=10;
select* from grades where quiz1=10 or quiz2=10;
select *from grades where firstname like'a%'; 
select *from grades where firstname like'%a';
select *from grades where lastname like'%a';
select *from grades where firstname like's%a';
select *from grades where lastname like's%a';
select *from grades where lastname like'%a%';
select *from grades where firstname like'_a%'; 
select *from grades where firstname like'm%____'; 
select *from grades where firstname not like'm%____'; 
select *from grades where firstname like'a%' or firstname like'b%'; 
select *from grades where firstname like'a%' and  firstname like'b%'; ##NO sense
select firstname, quiz1 ,quiz2, (quiz1+quiz2) as add_quiz from grades;
select firstname, quiz1 ,quiz2, (quiz1-quiz2) as sub_quiz from grades;
 select firstname, quiz1 ,quiz2, (quiz1*quiz2) as mal_quiz from grades;
 select firstname, quiz1 ,quiz2, (quiz1/quiz2) as div_quiz from grades;
 select firstname, quiz1 ,quiz2, Round((quiz1/quiz2),2) as div_quiz from grades;
 select min(percent),firstname from grades;
select max(percent),Firstname from grades;
select count(*) AS no_of_students from grades ;
select distinct grade from grades; 
select count(distinct grade)  as no_of_grade from grades; 
select distinct grade from grades order by  grade; 
select distinct grade from grades order by  grade desc;
select sum(quiz1) as total from grades;

select passfail,count(passfail) as no_of_students from grades group by passfail;
select grade,count(passfail) as no_of_students from grades group by grade;
create table grades_1 As select*from grades ;
select*from grades_1  limit 5;
select count(*) AS  total_rows from grades_1;










 






## practice file 
use mydb;
select *from  exercise where  Anxty=1;
select *from exercise where Prgnt=0;
select *from exercise where Drug=1;
select *from exercise where Age=25;
select *from exercise where Age>25;
select *from exercise where Age<25;
select * from exercise where Prgnt=1 and Drug=1;
select *from exercise where age<125 and Chlstrl<150;
select *from exercise where Age>40 and BP>140;
select *from exercise where Prgnt=0;
select Names,Age  from exercise where BP <140 and Chlstrl>150;
select Names,Age  from exercise where Prgnt=1;
select Names,Age  from exercise where Drug=1 and Anxty=1;
select Names,Age  from exercise where Prgnt=1 and Age between 25 and 40;
select *from exercise where Anx=1 and Age between 25 and 40;


















