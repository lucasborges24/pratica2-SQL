-- Exercise 1
SELECT
    COUNT("endDate") AS "currentExperiences"
FROM
    experiences;

-- Exercise 2
SELECT
    "userId" AS "id",
    COUNT("id") AS "educations"
FROM
    educations
GROUP BY
    "userId";

-- Exercise 3
SELECT
    users.name AS writer,
    COUNT(testimonials."writerId") AS "testimonailCount"
FROM
    testimonials
    JOIN users ON testimonials."writerId" = users.id
WHERE
    users.id = 435
GROUP BY
    users.id;

-- Exercise 4
SELECT
    MAX(jobs."salary") AS "maximumSalary",
    roles."name" AS "role"
FROM
    jobs
    JOIN roles ON roles."id" = jobs."roleId"
where
    jobs."active" = TRUE
GROUP BY
    roles."name"
ORDER BY
    "maximumSalary" ASC;

-- Bonus
SELECT
    schools.name AS school,
    courses."name" AS course,
    COUNT(educations."userId") AS "studentsCount",
    educations."status" AS roles
FROM
    educations
    JOIN schools ON schools.id = educations."schoolId"
    JOIN courses ON courses.id = educations."courseId"
WHERE
    educations."status" = 'ongoing'
    OR educations."status" = 'finished'
GROUP BY
    school,
    course,
    roles
ORDER BY
    "studentsCount" DESC
LIMIT
    3;