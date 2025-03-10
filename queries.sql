SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no


SELECT e.emp_no,e.last_name,e.first_name,e.hire_date,s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no
WHERE EXTRACT(YEAR FROM e.hire_date)=1986

SELECT dm.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON
dm.dept_no=d.dept_no
INNER JOIN employees AS e ON
dm.emp_no=e.emp_no

SELECT de.dept_no,de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no=e.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no

SELECT first_name,last_name,sex
FROM employees
WHERE first_name='Hercules'
	AND last_name LIKE 'B%'

SELECT de.emp_no,e.last_name,e.first_name
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no=e.emp_no
WHERE de.dept_no IN
(
SELECT dept_no
FROM departments
WHERE dept_name='Sales'
)

SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no=e.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE dept_name='Sales'
	OR dept_name='Development'

SELECT last_name,COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;