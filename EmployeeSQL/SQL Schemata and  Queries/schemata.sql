CREATE TABLE departments (
	dept_no VARCHAR(50),
	dept_name VARCHAR(50)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(50)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT
);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR(50),
	title VARCHAR(50),
	PRIMARY KEY(title_id)
);


ALTER TABLE departments ADD PRIMARY KEY(dept_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT FK_ManagerDepartments
FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT FK_ManagerEmployees
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
