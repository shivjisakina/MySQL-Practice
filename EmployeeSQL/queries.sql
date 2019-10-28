-- Question 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.emp_no, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- Question 2
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question 3
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- Question 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no
FROM employees, departments, dept_emp
WHERE dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no;

-- Question 5
SELECT * FROM employees 
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- Question 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_name LIKE 'Sales' and dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no;

-- Question 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_name IN ('Sales', 'Development') and dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no;

-- Question 8
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- Select Statements
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM titles;



