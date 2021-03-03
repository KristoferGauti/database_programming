
SELECT 1 AS QUERY 
--The PersonID, name, and case title of culprits that live in a location that starts with the	
--same letter as the place they committed their crime.
--385
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
-- The PersonID and name of women who are culprits and of men who are secret	
-- identities of agents.

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
--Find the codenames of double-agents. A double	agent is one who is a culprit in a case	
--they lead.

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
--The codename and designation of agents who have a license to kill	or have led	cases	
--in at least 5 different cities.
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
--The codename, secret identity name and designation of agents who have 
--closed more cases in some town than some other agent. You can assume that 
--only the agent that leads a case can close it.
SELECT * FROM (
SELECT 
    A.codename, A.secretIdentity, L.location, COUNT(*)
FROM
    Agents A
    JOIN Cases C ON C.AgentID = A.AgentID
    JOIN Locations L ON L.LocationID = C.LocationID
GROUP BY
    A.codename, A.secretIdentity, L.location
) as T
GROUP BY T.location, T.codename, T.secretIdentity, T.count
HAVING T.count = MAX(T.count)


--ulfur code
SELECT LG.codename, LG.secretIdentity, LG.designation
FROM (
    SELECT L.*, A.*, COUNT(*) AS numClosedCases
    FROM Cases AS C
    INNER JOIN Agents    AS A ON C.AgentID    = A.AgentID
    INNER JOIN Locations AS L ON C.LocationID = L.LocationID
    WHERE C.isClosed = True
    GROUP BY L.LocationID, A.AgentID
) AS LG
INNER JOIN (
    SELECT LAG.LocationID, MIN(numClosedCases) AS minClosedCases
    FROM (
        SELECT L.*, A.*, COUNT(*) AS numClosedCases
        FROM Cases AS C
        INNER JOIN Agents    AS A ON C.AgentID    = A.AgentID
        INNER JOIN Locations AS L ON C.LocationID = L.LocationID
        WHERE C.isClosed = False
        GROUP BY L.LocationID, A.AgentID
    ) AS LAG -- Location/Agent Group
    GROUP BY LAG.LocationID
) AS LAG ON LG.LocationID = LAG.LocationID AND LG.numClosedCases > LAG.minClosedCases




SELECT 6 AS QUERY; 
--The code name and designation of agents who lead one of the earliest cases in some	
--location (by year), and have only lead cases in one other location (two locations total).

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
--The designation and codename of agents who have never led a case in “Akranes”

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
--Show the ID, title and location of all cases that have people involved of all genders.
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
-- The ID, title and location of all cases that have no known people 
-- involved at all


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
