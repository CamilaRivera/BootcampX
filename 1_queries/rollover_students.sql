SELECT students.name AS student_name, students.start_date, cohorts.name AS cohorts_name, cohorts.start_date 
FROM students 
JOIN cohorts 
ON cohort_id = cohorts.id
WHERE students.start_date != cohorts.start_date
ORDER BY cohorts.name;