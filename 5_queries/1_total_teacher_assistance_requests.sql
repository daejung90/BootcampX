-- SELECT teacher.name as teacher, count(assistance_requests) as total_assistance
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teacher.id
-- WHERE assistance_is_active LIKE FALSE;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;