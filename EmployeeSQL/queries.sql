--List the employee number, last name, first name, sex, and salary of each employee.
SELECT s.emp_no, last_name, first_name, sex, salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
FROM department_manager AS m
JOIN employees AS e
ON m.emp_no = e.emp_no
JOIN departments AS d
ON m.dept_no = d.dept_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN department_employees AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex 
FROM employees AS e
JOIN department_employees AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE last_name LIKE 'B%' AND first_name = 'Hercules'

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN department_employees AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN department_employees AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development' 

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS Frequency 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC







