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
    P.name
FROM
    People P,
    Agents A,
    InvolvedIn I
WHERE
    A.secretIdentity = P.personId
    AND A.AgentID = I.AgentID
GROUP BY
    P.name
HAVING
    COUNT(P.name) > 10
ORDER BY
    P.name ASC;

--GROUP BY
--P.name
--HAVING
--COUNT(I.PersonID)> 10;
--JOIN Agents A ON P.personid = A.secretidentity
--JOIN InvolvedIn I ON I.PersonID = A.secretIdentity
--JOIN Cases C ON C.AgentID = A.AgentID
--GROUP BY
--P.name
--HAVING
--count(P.name) > 10;
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
    PR.description,
    P.name
FROM
    Professions PR
    JOIN People P ON P.ProfessionID = PR.ProfessionID
    JOIN InvolvedIn I ON I.PersonID = P.PersonID
    JOIN Cases C ON C.CaseID = I.CaseID
WHERE
    PR.description LIKE '%therapist'
    AND C.isClosed = FALSE;

GROUP BY
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
    P.PersonID,
    P.name
FROM
    People P
    JOIN InvolvedIn I ON P.PersonID = I.PersonID
    JOIN Cases C ON -- SELECT ...
SELECT
    10 as Query;

-- SELECT ...