--List the employee number, last name, first name, sex, and salary of each employee.

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees AS emp
JOIN salaries sal ON emp.emp_no = sal.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';



--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dep.dept_no, dep.dept_name, dm.emp_no AS manager_emp_no, emp.last_name AS manager_last_name, emp.first_name AS manager_first_name
FROM departments AS dep
INNER JOIN dept_manager dm 
ON dep.dept_no = dm.dept_no
INNER JOIN employees emp 
ON dm.emp_no = emp.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT emp.emp_no, emp.last_name, emp.first_name, dd.dept_name, dept.dept_no
FROM employees AS emp
JOIN dept_emp dept 
ON emp.emp_no = dept.emp_no
JOIN departments dd 
ON dept.dept_no = dd.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT emp.emp_no, emp.last_name, emp.first_name
FROM employees AS emp
JOIN dept_emp de 
ON emp.emp_no = de.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM employees AS emp
JOIN dept_emp de ON emp.emp_no = de.emp_no
JOIN departments dept ON de.dept_no = dept.dept_no
WHERE dept.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

