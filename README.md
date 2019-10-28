# MySQL-Practice
Teaching my dad MySQL for his Data Analytics Bootcamp Homework Assignment

### Sample queries:

* Listing all the employees: in the Sales department, including their:
 - employee number, 
 - last name, 
 - first name, 
 - department name.
 ```
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_name LIKE 'Sales' and dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no;
```
* Listing the frequency count of employee last names, i.e., how many employees share each last name, in descending order
```
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
```
* Listing all the employees whose:
  - first name is "Hercules" 
  - last names begin with "B."
```
SELECT * FROM employees 
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';
```
* List the manager of each department with the following information: 
  - department number, 
  - department name, 
  - the manager's employee number, 
  - last name, first name, 
  - start and end employment dates.
```
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
```
