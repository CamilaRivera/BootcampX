SELECT teachers.name, cohorts.name, count(teachers.id)
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.id, teachers.name, cohorts.name
ORDER BY teachers.name;
