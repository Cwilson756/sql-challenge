CREATE TABLE departments (
  	dept_no varchar(10) NOT NULL PRIMARY KEY,
	dept_name varchar(30)
);

CREATE TABLE titles (
	title_id varchar(20) NOT NULL PRIMARY KEY,
	title varchar(50)
);

CREATE TABLE employees (
	emp_no varchar(20) NOT NULL PRIMARY KEY,
	emp_title_id varchar(20),
	birth_date date,
	first_name varchar(225),
	last_name varchar(225),
	sex varchar(2),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no varchar(20) NOT NULL,
	dept_no varchar(10) NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no varchar(20) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no varchar(20) NOT NULL,
	salary int,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
