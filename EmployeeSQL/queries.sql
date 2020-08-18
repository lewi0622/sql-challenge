--1.
select employees.emp_no, last_name, first_name, sex, salary
from employees
inner join salaries
on employees.emp_no = salaries.emp_no;

--2.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3.
select dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
from dept_manager
inner join dept
on dept_manager.dept_no = dept.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;

--4.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join dept
on dept_emp.dept_no = dept.dept_no;

--5.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and left(last_name, 1) = 'B';

--6.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join dept
on dept_emp.dept_no = dept.dept_no
where dept_name = 'Sales';

--7.
select employees.emp_no, last_name, first_name, dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join dept
on dept_emp.dept_no = dept.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--8.
select count(*) as name_count, last_name
from employees
group by last_name
order by name_count desc;