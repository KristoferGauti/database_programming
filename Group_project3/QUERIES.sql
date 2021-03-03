
SELECT 1 AS QUERY 

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
    I.isCulprit AND LEFT(LiveL.location, 1) = LEFT(L.location, 1);


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

WHERE FULLTABLE.locationID = MINTABLE.locationID AND FULLTABLE.numClosedCases > MINTABLE.minClosedCases


SELECT 6 AS QUERY; 

SELECT 
    A.codename,
    A.designation
FROM
    Agents A 
    JOIN Cases C ON A.agentId = C.agentId
    JOIN Locations L ON C.locationId = L.locationId
GROUP BY 
    A.AgentId
HAVING COUNT(L.location) = 2


SELECT 7 AS QUERY; 
--Show the ID, name and profession of People who have been involved in the most cases	
--in each location, along with the number of cases they have been involved in for that location,	
--the name of the location and a column called “secretly agent?” which contains 1 if the person	
--is secretly an agent or 0 if the person is not an	agent. If you can print ‘yes’ and ‘no’ instead of	
--1	and	0, all the better.

SELECT * FROM Cases
--3549 rows shall be returned
--This is a garbage solution
SELECT personId, name, CaseCount FROM (
    SELECT
        P.personId,
        P.name, 
        PR.description,
        COUNT(L.locationId) AS CaseCount
    FROM 
        People P 
        JOIN Professions PR ON P.professionId = PR.professionId
        JOIN InvolvedIn I ON P.personId = I.personId
        JOIN Cases C ON I.caseId = C.caseId
        JOIN Locations L ON C.locationId = L.locationId
    GROUP BY P.PersonId, PR.description
    ORDER BY COUNT(L.locationId) DESC
) AS a




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
    A.agentId



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
HAVING COUNT(DISTINCT P.genderID) = 3



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
    JOIN Locations L ON L.locationId = C.locationID
