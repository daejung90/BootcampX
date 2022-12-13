-- SELECT cohort.name, COUNT(students.cohort_id) as student_count
-- FROM cohorts
-- JOIN students ON students.cohort_id = cohort_id
-- HAVING COUNT(*) >= 18
-- ORDER BY student_c

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;