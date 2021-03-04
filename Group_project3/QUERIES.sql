
SELECT 1 AS QUERY; 

SELECT
    P.PersonID,
    P.name,
    C.title
FROM
    People P
    JOIN Locations LiveL ON P.locationID = LiveL.locationID
    JOIN InvolvedIn I ON I.PersonID = P.PersonID
    JOIN Cases C ON I.CaseID = C.CaseID
    JOIN Locations L ON C.LocationID = L.LocationID
WHERE
    I.isCulprit = True AND LEFT(LiveL.location, 1) = LEFT(L.location, 1);


SELECT 2 AS QUERY; 

SELECT
    P.PersonID, 
    P.name
FROM
    People P
    JOIN Genders G ON G.GenderID = P.GenderID
    JOIN InvolvedIn I ON P.PersonID = I.PersonID
WHERE
    G.gender = 'Female' AND I.isCulprit = True

UNION
-- expecting that "men who are secret identities of agents." means
-- names of men who are agents
SELECT
    P.PersonID, 
    P.name
FROM
    People P
    JOIN Agents A ON A.AgentID = P.PersonID
    JOIN Genders G ON G.GenderID = P.GenderID
WHERE
    G.gender = 'Male';


SELECT 3 AS QUERY; 

SELECT
    A.codename
FROM
    Agents A
    JOIN Cases C ON C.AgentID = A.secretIdentity --A.secretIdentity or A.agentID??????????????

INTERSECT

SELECT
    A.codename
FROM
    Agents A
    JOIN InvolvedIn I ON I.PersonID = A.secretIdentity
WHERE
    I.isCulprit = True;

SELECT 4 AS QUERY; 

SELECT
    A.codename, 
    A.designation
FROM
    Agents A 
    JOIN Cases C ON A.agentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
GROUP BY 
    A.AgentID
HAVING A.killLicense = True OR COUNT(DISTINCT L.location) >= 5;



SELECT 5 AS QUERY; 


SELECT DISTINCT codename, secretIdentity, designation
FROM
(
    -- A table containg a row for each agent for each 
    -- location for each closed case
    SELECT A.*,L.*, COUNT(*) numClosedCases
    FROM Cases C
    JOIN Locations L ON C.LocationID = L.LocationID
    JOIN Agents A ON C.AgentID = A.AgentID
    WHERE C.isClosed = True
    GROUP BY  A.AgentID, L.LocationID

) AS FULLTABLE,
(
    -- Create a table with the minimum number of closed cases for each location
    SELECT FULLTABLE.locationID, MIN(FULLTABLE.numClosedCases) minClosedCases
    FROM(
            -- A table containg a row for each agent for each 
            -- location for each closed case
            SELECT A.*,L.*, COUNT(*) numClosedCases
            FROM Cases C
            JOIN Locations L ON C.LocationID = L.LocationID
            JOIN Agents A ON C.AgentID = A.AgentID
            WHERE C.isClosed = True
            GROUP BY  A.AgentID, L.LocationID

        ) AS FULLTABLE
    GROUP BY FULLTABLE.locationId

) AS MINTABLE

WHERE FULLTABLE.locationID = MINTABLE.locationID AND FULLTABLE.numClosedCases > MINTABLE.minClosedCases;


SELECT 6 AS QUERY; 
--The code name and designation of agents who 
--lead one of the earliest cases in some	
--location (by year), and have only lead cases in 
--one other location (two locations total).

SELECT 
    A.codename,
    A.designation
FROM
Agents A 
    JOIN Cases C ON A.agentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
GROUP BY 
    A.agentId, C.year
HAVING C.year = (SELECT MIN(year) FROM Cases)

INTERSECT

SELECT 
    A.codename,
    A.designation
FROM
    Agents A 
    JOIN Cases C ON A.agentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
GROUP BY 
    A.AgentId
HAVING COUNT(L.location) = 2;


SELECT 7 AS QUERY; 

--Manage to locate people but did not displayy the correct information
SELECT codename, secretIdentity, designation
FROM
(
    -- A table containg a row for each agent for each 
    -- location for each closed case
    SELECT A.*,L.*, COUNT(*) numClosedCases
    FROM Cases C
    JOIN Locations L ON C.LocationID = L.LocationID
    JOIN Agents A ON C.AgentID = A.AgentID
    WHERE C.isClosed = True
    GROUP BY  A.AgentID, L.LocationID

) AS FULLTABLE,
(
    -- Create a table with the minimum number of closed cases for each location
    SELECT FULLTABLE.locationID, MAX(FULLTABLE.numClosedCases) minClosedCases
    FROM(
            -- A table containg a row for each agent for each 
            -- location for each closed case
            SELECT A.*,L.*, COUNT(*) numClosedCases
            FROM Cases C
            JOIN Locations L ON C.LocationID = L.LocationID
            JOIN Agents A ON C.AgentID = A.AgentID
            WHERE C.isClosed = True
            GROUP BY  A.AgentID, L.LocationID

        ) AS FULLTABLE
    GROUP BY FULLTABLE.locationId

) AS MAXTABLE

WHERE FULLTABLE.locationID = MAXTABLE.locationID AND FULLTABLE.numClosedCases = MAXTABLE.minClosedCases;



SELECT 8 AS QUERY; 

SELECT 
    A.designation, 
    A.codename
FROM
    Agents A 
    JOIN Cases C ON A.AgentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
GROUP BY
    A.agentId

EXCEPT

SELECT 
    A.designation, 
    A.codename
FROM
    Agents A 
    JOIN Cases C ON A.AgentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
WHERE L.location = 'Akranes'
GROUP BY
    A.agentId;



SELECT 9 AS QUERY; 

SELECT 
    C.caseId,
    C.title, 
    L.location 
FROM
    Cases C
    JOIN Locations L ON C.locationId = L.locationId
    JOIN InvolvedIn I ON C.caseId = I.caseId
    JOIN People P ON I.personId = P.personId
GROUP BY
    C.caseID,
    L.location
HAVING COUNT(DISTINCT P.genderID) = 3;



SELECT 10 AS QUERY; 

SELECT
    C.caseId, C.title, L.location
FROM 
    Cases C
    JOIN Locations L ON L.locationId = C.locationID

EXCEPT

SELECT
    C.caseId, C.title, L.location
FROM 
    Cases C
    JOIN InvolvedIn I ON C.caseId = I.caseId
    JOIN Locations L ON L.locationId = C.locationID;


SELECT 'BONUS' AS QUERY;
--Find the hidden message in the Passwords table on the live
--database server. 
--1) Take the fifth letter of each password of
--agents whose secret identities live in a fictional town 
--2) Followed by the third letter of the password of all the agents 
--that are neither male nor female except those whose codename 
--contains at least three different vowels (aeiou). 
--3) Return the result as a single string. Submit your query, as well as the 
--secret message as a comment. Note that for both parts of the 
--query the results should be ordered by AgentID.



SELECT 
    SUBSTRING(Pass.password, 5, 1)
FROM 
    People P
    JOIN Agents A ON P.personId = A.secretIdentity
    JOIN Passwords Pass ON A.agentId = Pass.agentId
    JOIN Locations L ON P.locationId = L.locationId
WHERE 
    L.location = 'Gervivogur'
GROUP BY A.agentId, Pass.password;


SELECT 
    SUBSTRING(Pass.password, 3, 1)
FROM 
    People P
    JOIN Agents A ON P.personId = A.secretIdentity
    JOIN Passwords Pass ON A.agentId = Pass.agentId
    JOIN Genders G ON P.genderId = G.genderId
WHERE 
    G.gender = 'Other'
GROUP BY A.codename, Pass.agentId 

UNION

SELECT 
    SUBSTRING(Pass.password, 3, 1)
FROM 
    Passwords Pass
    JOIN Agents A ON A.AgentId = Pass.agentId
WHERE
    CASE WHEN A.codename LIKE '%a%' THEN 1 ELSE 0 END +
    CASE WHEN A.codename LIKE '%e%' THEN 1 ELSE 0 END +
    CASE WHEN A.codename LIKE '%i%' THEN 1 ELSE 0 END +
    CASE WHEN A.codename LIKE '%o%' THEN 1 ELSE 0 END +
    CASE WHEN A.codename LIKE '%u%' THEN 1 ELSE 0 END
>= 3; 



