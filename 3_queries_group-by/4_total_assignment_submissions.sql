-- SELECT cohort.name AS cohort_name, SUM(assignment_submissions.*) AS total_submissions
-- FROM cohorts
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN students ON student.cohort_id = cohort.id
-- ORDER BY total_submissions;

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;