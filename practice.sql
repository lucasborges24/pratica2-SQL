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