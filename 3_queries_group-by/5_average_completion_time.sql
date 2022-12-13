SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_time
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_time DESC;