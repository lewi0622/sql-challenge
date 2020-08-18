create table dept(
	dept_no varchar(10) primary key,
	dept_name varchar(30)
);

create table dept_emp(
	emp_no int,
	dept_no varchar(10),
	primary key (emp_no, dept_no),
	foreign key(dept_no)
		references dept(dept_no)
);

create table dept_manager(
	dept_no varchar(10),
	emp_no int primary key,
	foreign key(dept_no)
		references dept(dept_no),
	foreign key(emp_no)
		references dept_emp(emp_no)
);

create table salaries(
	emp_no int primary key,
	salary int,
	foreign key(emp_no)
		references dept_emp(emp_no)
);

create table titles(
	title_id varchar(10) primary key,
	title varchar(30)
);

create table employees(
	emp_no int primary key,
	emp_title_id varchar(10),	
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date date,
	foreign key(emp_no)
		references dept_emp(emp_no),
	foreign key(emp_title_id)
		references titles(title_id)
);
