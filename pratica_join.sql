--QUESTÃO 1
SELECT
	users.id,
	users.name,
	cities.name AS city
FROM users JOIN cities
ON users."cityId" = cities.id;

--QUESTÃO 2
SELECT
	testimonials.id,
	u1.name AS writer,
	u2.name AS recipient,
	testimonials.message
FROM testimonials
JOIN users u1 ON
testimonials."writerId"=u1.id
JOIN users u2 ON
testimonials."recipientId"=u2.id;

--QUESTÃO 3
SELECT
	users.id,
	users.name,
	courses.name AS course,
	schools.name AS school,
	educations."endDate" AS endDate
FROM educations
JOIN users ON
users.id=educations."userId"
JOIN courses ON
courses.id=educations."courseId"
JOIN schools ON
schools.id=educations."schoolId"
WHERE educations.status='finished'
AND users.id=30;