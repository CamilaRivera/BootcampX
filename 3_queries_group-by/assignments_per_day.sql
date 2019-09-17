SELECT day, count(*) AS total_assigments 
FROM assignments 
GROUP BY day
ORDER BY day;