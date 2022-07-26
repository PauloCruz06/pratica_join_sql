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

--QUESTÃO 4
SELECT
	users.id,
	users.name,
	roles.name AS roles,
	companies.name AS company,
	experiences."startDate" AS "startDate"
FROM experiences
JOIN users ON
users.id=experiences."userId"
JOIN roles ON
roles.id=experiences."roleId" 
JOIN companies ON
companies.id=experiences."companyId"
WHERE experiences."endDate" IS NULL
AND users.id=50;