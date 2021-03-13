SELECT 1 AS QUERY;

-- Almost finished, only need to figure out how to return a array
CREATE OR REPLACE VIEW NumOfCases AS
SELECT
    A.codename,
    A.status,
    COUNT(A.codename) AS caseCount,
    mostCommonLocation(A.AgentID)
FROM
    Agents A
    JOIN Cases C ON A.AgentID = C.AgentID
GROUP BY
    A.AgentID 
    

CREATE OR REPLACE FUNCTION mostCommonLocation(agent_ID int) 
RETURNS TABLE(location VARCHAR(255)) 
LANGUAGE SQL AS $$
SELECT
    location
from
    (
        SELECT
            L.location,
            COUNT(L.locationId) as LocationCount
        FROM
            Agents A
            JOIN Cases C ON A.agentID = C.agentID
            JOIN Locations L ON C.locationId = L.locationId
        WHERE
            A.agentID = agent_ID
        GROUP BY
            L.location
        ORDER BY
            LocationCount DESC
        LIMIT 1
    ) as LocationAndCount $$;


SELECT
    2 AS QUERY;

--DROP VIEW TopSuspects;
CREATE
OR REPLACE VIEW subTopSuspects(personId, personName, personLocation, numOfCases) AS
SELECT
    P.personId,
    P.name,
    L.location,
    COUNT(P.personId)
FROM
    People P
    JOIN Locations L ON P.locationId = L.locationId
    JOIN InvolvedIn I ON P.personId = I.personId
    JOIN Cases C ON C.caseId = I.caseId
GROUP BY
    P.personId,
    L.locationId
HAVING
    L.location = 'Stokkseyri';

CREATE
OR REPLACE VIEW topThreeSuspects(personId, personName, personLocation) AS
SELECT
    personId,
    personName,
    personLocation
FROM
    subTopSuspects
ORDER BY
    numOfCases DESC
LIMIT
    3;

SELECT
    *
FROM
    topThreeSuspects;

SELECT
    3 AS QUERY;

--Still need to check about this statement
--Each person can only have at most one  nemesis,  
--and  that  is  the  agent  that  has  busted  them
--most  often.  Agents  can  have multiple nemeses however.
SELECT 
    A.agentId, 
    A.codename, 
    P.personId, 
    P.name
FROM
    Agents A
    JOIN InvolvedIn I ON A.agentId = I.agentId
    JOIN People P ON P.personId = I.personId
GROUP BY P.personId, A.agentId
HAVING COUNT(I.isCulprit) > 1;

SELECT
    4 AS QUERY;

CREATE OR REPLACE PROCEDURE insertPerson(
    professionDescription VARCHAR(255),
    gender VARCHAR(255),
    location VARCHAR(255),
    caseCount INTEGER,
    name VARCHAR(255),
    profId INTEGER,
    genderId INTEGER,
    locationId INTEGER)
LANGUAGE SQL
AS $$
    INSERT INTO Professions(description)
    VALUES (ProfessionDescription);
    INSERT INTO Genders(genderId, gender)
    VALUES (default, gender);
    INSERT INTO Locations(location, caseCount)
    VALUES (location, caseCount);
    INSERT INTO People (personId, name, professionId, genderId, locationId) 
    VALUES (default, name, profId, genderId, locationId);
$$;

CALL insertPerson(
    'Software Engineer', 
    'Male', 
    'Shanghai CHINA',
    1000,
    'Kristofer', 
    2511,
    2,
    91);

SELECT * FROM People P
WHERE P.name = 'Kristofer';

-- DELETE FROM People P
-- WHERE P.name = 'Kristofer'

SELECT
    5 AS QUERY;

SELECT
    6 AS QUERY;

SELECT
    7 AS QUERY;

SELECT
    8 AS QUERY;

SELECT
    9 AS QUERY;

SELECT
    10 AS QUERY;