-- Problem 1
SELECT
    locationid,
    location
FROM
    Locations
ORDER BY
    location DESC;

-- Problem 2
SELECT
    location
FROM
    Locations
WHERE
    caseCount >= 1
ORDER BY
    location ASC;

-- Problem 3
SELECT
    COUNT(name)
FROM
    People P
    JOIN Genders G ON P.GenderId = G.GenderId
WHERE
    gender = 'Female';

-- Problem 4
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


-- Problem 5
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

-- Problem 6
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


-- Problem 7
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

--Problem 8
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

-- Problem 9
SELECT
    P.PersonID,
    P.name,
    CASE
        WHEN I.isCulprit = true THEN 'Guilty'
        ELSE 'Not guilty'
    END AS hasbeenculprit
FROM
    People P
    JOIN InvolvedIn I ON P.PersonID = I.PersonID
    JOIN Cases C ON I.CaseId = C.CaseId
    JOIN Locations L ON C.LocationId = L.LocationId
GROUP BY I.isCulprit, P.PersonId
HAVING
    COUNT(L.Location LIKE '%vogur') >= 2;    


-- Problem 10
SELECT 
    P.personId, 
    P.name, 
    G.gender, 
    2045 - MAX(C.year) "yearsSinceLastInvestigation"
FROM
    People P 
    JOIN InvolvedIn I ON I.personId = P.personId
    JOIN Genders G ON G.genderId = P.genderId 
    JOIN Cases C ON C.caseId = I.caseId
GROUP BY P.PersonId, G.gender
HAVING COUNT(DISTINCT(I.agentId)) = 3;














