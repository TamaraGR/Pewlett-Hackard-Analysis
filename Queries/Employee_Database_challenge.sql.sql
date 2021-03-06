MODULE 7, DELIVERABLE 1

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN to titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
		

SELECT DISTINCT ON (rt.emp_no)
		rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;
SELECT * FROM unique_titles;

SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT DESC; 

-- DELIVERABLE 2, MENTORSHIP ELIGIBILITY PROGRAM

SELECT DISTINCT ON (e.emp_no)
	e.emp_no, 
	e.first_name,
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship
FROM employees AS e,
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01'AND '1965-12-31')
ORDER BY emp_no;
	
-- ADDITIONAL

SELECT COUNT (men.title), men.title
INTO unique_retirement_titles
FROM mentorship AS men
GROUP BY men.title
ORDER BY COUNT DESC; 

	
	
	