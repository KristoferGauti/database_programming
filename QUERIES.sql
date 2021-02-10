--Problem 1
SELECT
    locationid,
    location
FROM
    Locations
ORDER BY
    location DESC;

--Problem 2
SELECT
    location
FROM
    Locations
WHERE
    caseCount >= 1
ORDER BY
    location ASC;

--Problem 3
SELECT
    COUNT(name)
FROM
    People P
    JOIN Genders G ON P.GenderId = G.GenderId
WHERE
    gender = 'Female';

-- Problem 4 Not Done
SELECT
    name
FROM
    People P
    JOIN Agents A ON P.personid = A.secretidentity
    JOIN Cases C ON C.agentid = A.agentid
GROUP BY
    name
HAVING
    count(name) > 10;

--Problem 5
SELECT
    P.personId,
    P.name,
    C.title
FROM
    People P
    JOIN InvolvedIn I ON P.personId = I.personId
    JOIN Cases C ON I.CaseId = C.CaseId
    JOIN Locations L ON L.locationId = C.locationId
WHERE
    I.isCulprit = true
    AND C.locationId = P.locationId;

--Problem 6
SELECT
    P.personId,
    P.name,
    G.gender
FROM
    Genders G
    JOIN People P ON G.genderId = P.genderId
    JOIN Locations L ON L.locationId = P.locationId
WHERE
    L.location = 'Selfoss';

--Problem 7 Not finished
SELECT
    *
FROM
    People;

SELECT
    *
FROM
    cases;

SELECT
    *
FROM
    Locations;

SELECT
    *
FROM
    InvolvedIn;

SELECT
    P.personId,
    P.name,
    Pr.description
FROM
    Professions Pr
    JOIN People P ON Pr.professionId = P.professionId
    JOIN InvolvedIn I ON I.personId = P.personId
    JOIN Cases C ON C.caseId = I.caseId
WHERE
    C.isclosed = false
    AND Pr.description = 'therapist';

--Problem 8 Not finished
SELECT
    A.codename,
    G.gender,
    P.password
FROM
    Agents A
    JOIN Genders G ON G.GenderID = A.GenderID
    JOIN Passwords P ON P.AgentID = A.AgentID
WHERE
    P.password LIKE CONCAT('%', A.codename, '%');

-- SELECT ...
SELECT
    9 as Query;

-- SELECT ...
SELECT
    10 as Query;

-- SELECT ...