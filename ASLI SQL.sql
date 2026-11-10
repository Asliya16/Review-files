create database asli;
use asli;
create table employees(EMPNO INT primary key,ENAME varchar(50),JOB varchar(50),	MGR INT, HIREDATE date,SAL INT,COMM INT,DEPTNO INT);
insert into employees (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,"SMITH","CLERK",7902,"1980-12-17",800,null,20),
(7499,"ALLEN","SALESMAN",7698,"1981-02-20",1600,300,30),
(7521,"WARD","SALESMAN",7698,"1981-02-20",1250,500,30),
(7566,"jones","MANAGER",7839,"1981-04-02",2975,null,20),
(7654,"MARTIN","SALESMAN",7698,"1981-09-28",1250,1400,30),
(7698,"BLAKE","MANAGER",7839,"1981-05-01",2850,null,30),
(7782,"CLARK","MANAGER",7839,"1981-06-09",2450,null,10),
(7788,"SCOTT","ANALYST",7566,"1987-04-19",3000,null,20),
(7839,"KING","PRESIDENT",null,"1981-11-17",5000,null,10),
(7876,"TURNER","SALESMAN",7698,"1981-09-08",1500,0,30),
(7876,"ADAMS","CLERK",7788,"1987-05-23",1100,null,20),
(7900,"JAMES","CLERK",7698,"1981-12-03",950,null,30),
(7902,"FORT","ANALYST",7566,"1981-12-03",3000,null,20),
(7934,"MILLER","CLERK",7782,"1982-01-23",1300,null,10);

# Q1
select*from employees;
# Q2
select EMPNO,ENAME,SAL from employees;
#Q3
select distinct job from employees;
#Q4
select ENAME,SAL*12 as annual_salary from employees;
#Q5
select*from employees
where DEPTNO=10;
#Q6
select ENAME,JOB from employees
where JOB='CLERK';
# Q7
select ENAME from employees
where ENAME like 's%';
#Q8
select ENAME from employees
where ENAME like 'L%';
#Q9
select ENAME from employees
where ENAME like 'AR%';
#Q10
select*from employees
where year(HIREDATE)=1981;
#Q11
select ENAME,SAL from employees
where SAL>25000;
#Q12
select*from employees where job<>'MGR';
#Q13
select*from employees where COMM is not null;
#Q14
select*from employees 
where MGR is null;
#Q15
select ENAME from employees
where DEPTNO=30 and JOB ='SALESMAN';
#Q16
select ENAME from employees
where JOB in('CLERK' and 'ANALYST');
#Q17
select ENAME from employees
where SAL between 1000 and 2000;

#SECTION 3

#Q1
select lower(ENAME) as ENAME from employees;
#Q2
select left(ENAME,3) as first_three from employees;
#Q3
select ENAME,length(ENAME) as name_length from employees;
#Q4
select ENAME,round(SAL) as round_sal from employees;
#Q5
select ENAME,mod(SAL,1000)as reminded_sal from employees;
#Q6
select now()as current_date_time from employees;
#Q7
select ENAME,year(HIREDATE) from employees;
#Q8
select ENAME,monthname(HIREDATE) from employees;
#Q9
select ENAME,2025-year(HIREDATE) from employees;

#SECTION 4

#Q1
create table department(department_id INT primary key, department_name varchar(50),location varchar(50));
insert into department(department_id,department_name,location)
values(101,'IT','Kerala'),
(102,'SALES','Kerala'),
(103,'HR','Kerala'),
(104,'FINANCE','Kerala'),
(105,'MARKETING','Kerala');
select*from department

create table employees(employees_id INT PRIMARY KEY,employees_name VARCHAR(50),department_id int,salary int,joining_date DATE,FOREIGN KEY(department_id)REFERENCES departments(departments_id));
insert into employees(employees_id,employees_name,department_id,salary,joining_date)
values(1,'Arun',101,65000,'2023-01-15'),
(2,'Rahul',101,48000,'2023-03-10'),
(3,'Anjali',101,72000,'2021-07-20'),
(4,'Vishnu',102,55000,'2022-06-12'),
(5,'Meera',102,42000,'2023-02-18'),
(6,'Fahad',102,68000,'2021-11-05'),
(7,'Sneha',103,50000,'2022-08-25'),
(8,'Ravi',103,45000,'2024-01-10'),
(9,'Akhil',104,60000,'2022-12-10'),
(10,'Neha',104,52000,'2023-09-01'),
(11,'Nikhil',105,47000,'2022-12-10'),
(12,'Diya',105,58000,'2021-04-22');
 
 create table projects(project_id int primary key, project_name varchar(100),deparment_id int,budget decimal(12,2),foreign key(department_id)references(department_id);
 insert into projects(project_id,project_name,department_id,budget)
values(201,'Website Development',101,500000),
(202,'Mobile Application',101,750000),
(203,'Sales Expansion',102,300000),
(204,'Recruitment Drive',103,150000),
(205,'Financial Audit',104,250000);

# 1
select*from depart;

# 2
alter table depart 
and PINCODE int;

# 3 
insert into depart(DEPTNO,DNAME,LOC)
value(50,'HR','HOUSTON');

SET SQL_SAFE_UPDATES=0;

#4
update depart set LOC='ATLANTIA'
where DNAME='SALES';

# 5
delete from depart
where DNAME='OPERATION';

