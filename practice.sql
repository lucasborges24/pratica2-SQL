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