-- Deliverable 1 
-- Retirement Titles Table
SELECT e.emp_no, e.first_name, e.last_name,
        ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

--Create a Unique Retirement Titles table
SELECT DISTINCT ON (retirement_titles)
r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles
FROM retirement_titles as r
ORDER BY r.emp_no ASC, r.to_date DESC;

--Number of employees by job title, who are about to retire
SELECT COUNT(u.emp_no), u.title
INTO retiring_titles
from unique_titles as u
GROUP BY u.title
ORDER BY COUNT(u.emp_no) DESC;

--Deliverable 2
--Create a Mentorship Eligibility table
SELECT DISTINCT ON(e.emp_no)
e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, 
ti.title
INTO mentorship_eligibility
FROM employees as e 
        INNER JOIN dept_emp as de
            ON (e.emp_no = de.emp_no)
        INNER JOIN titles as ti
            ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Total Count of employees in menorship prgram
SELECT COUNT(m.emp_no), m.title
FROM new_mentorship as m
GROUP BY m.title
ORDER BY COUNT (m.emp_no) DESC;