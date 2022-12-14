-- SELECT assignments.id AS id, assignments.day AS  day, assignments.chapter AS chapter, COUNT (assistance_requests.*) as most_request
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY id
-- ORDER BY most_request DESC;


SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;