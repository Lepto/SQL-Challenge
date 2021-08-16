-- Data Analysis #1
-- List employee no, last name, first name, gender, and salary.

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, s.salary
	
	FROM employees AS emp
	
	INNER JOIN salaries AS s ON s.emp_no = emp.emp_no;

-- Data Analysis #2
-- List all employees hired in "1986"

SELECT first_name, last_name, hire_date

	FROM employees

	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
	
	ORDER BY hire_date ASC;
	
-- Data Analysis #3
-- List manager of each department, dept. no., dept. name, manager emp. no.,
-- manager last name, & manager first name.

SELECT mngr.dept_no, dept.dept_name, emp.emp_no  
		, emp.last_name, emp.first_name
		
	FROM employees AS emp

	INNER JOIN dept_manager AS mngr ON mngr.emp_no = emp.emp_no

	INNER JOIN departments AS dept ON dept.dept_no = mngr.dept_no;

-- Data Analysis #4
-- List department of each employee with emp. no, last name, first name and dept. name.

SELECT emp.emp_no, emp.last_name, emp.first_name
		, dept.dept_name 

	FROM employees AS emp

	INNER JOIN dept_emp AS demp ON demp.emp_no = emp.emp_no

	INNER JOIN departments AS dept ON dept.dept_no = demp.dept_no;
	
-- Data Analysis #5
-- List first name, last name, gender of employees first name is 'Hercules' &
-- last name begins with 'B.'

SELECT emp.first_name, emp.last_name

	FROM employees AS emp
	
	WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';

-- Data Analysis #6
-- List all employees in Sales Dept., emp. no, last name, first name, & dept. name

SELECT emp.emp_no, emp.last_name, emp.first_name
		, dept.dept_name 

	FROM employees AS emp

	INNER JOIN dept_emp AS demp ON demp.emp_no = emp.emp_no

	INNER JOIN departments AS dept ON dept.dept_no = demp.dept_no
	
	WHERE dept.dept_name = 'Sales';
	
-- Data Analysis #7
-- List all employees in Sales and Development Dept.their emp. no,
-- last name, first name, & dept. name

SELECT emp.emp_no, emp.last_name, emp.first_name
		, dept.dept_name 

	FROM employees AS emp

	INNER JOIN dept_emp AS demp ON demp.emp_no = emp.emp_no

	INNER JOIN departments AS dept ON dept.dept_no = demp.dept_no
	
	WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

-- Data Analysis #8
-- In descending order, list frequency of employee last names

SELECT emp.last_name,
	
	COUNT(emp.last_name) AS Frequency
	
	FROM employees AS emp
	
	GROUP BY emp.last_name
	
	ORDER BY COUNT(emp.last_name) DESC;
	
-- Epilogue

SELECT emp_no, last_name, first_name, hire_date
	
	FROM employees
	
	WHERE emp_no = 499942;