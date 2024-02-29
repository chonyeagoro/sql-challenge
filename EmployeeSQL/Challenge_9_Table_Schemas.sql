drop table title; 
drop table departments; 
drop table employees; 
drop table dept_emp; 
drop table dept_manager; 
drop table salaries; 

create table title (
	title_id varchar not null,
	title varchar not null, 
	primary key (title_id)
); 

select * from title; 

create table employees (
	emp_no int not null, 
	emp_title_id varchar not null, 
	birth_date date not null,
	first_name varchar not null, 
	last_name varchar not null,
	sex varchar not null, 
	hire_date date not null, 
	foreign key (emp_title_id) references title (title_id),
	primary key (emp_no)
); 

create table departments (
	dept_no varchar not null,  
	dept_name varchar not null, 
	primary key (dept_no)
);


create table dept_emp (
	emp_no int not null, 
	dept_no varchar not null, 
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
); 

create table dept_manager (
	dept_no varchar not null,
	emp_no int not null,  
	foreign key (dept_no) references departments (dept_no), 
	foreign key (emp_no) references employees (emp_no),
	primary key (dept_no, emp_no)
); 

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);
