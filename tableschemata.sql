CREATE TABLE titles (
title_id VARCHAR(5) NOT NULL UNIQUE,
title text NOT NULL,
PRIMARY KEY (title_id)
);

CREATE TABLE employees (
emp_no INT NOT NULL UNIQUE,
emp_title_id VARCHAR(5) NOT NULL,
birth_date DATE NOT NULL,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
emp_no INT NOT NULL UNIQUE REFERENCES employees(emp_no),
salary INT NOT NULL,
PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
dept_no VARCHAR(4) NOT NULL UNIQUE,
dept_name TEXT NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
emp_no INT NOT NULL UNIQUE REFERENCES employees(emp_no),
PRIMARY KEY (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no,dept_no)
);
