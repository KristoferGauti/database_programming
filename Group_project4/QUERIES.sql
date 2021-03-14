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
    A.AgentID; 
    

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
        --LIMIT 1
    ) as LocationAndCount $$;
IF tie(LocationAndCount)
END IF;

CREATE OR REPLACE FUNCTION tie(t TABLE);


SELECT * FROM numOfCases;

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

CREATE OR REPLACE VIEW Nemeses(AgentID, Codename, PersonID, Name) AS
SELECT 
    agentid, codename, personid, name
FROM 
    (
    SELECT A.agentID, A.codename, P.personId, P.name, COUNT(*) as culpritCount
    FROM Agents A
        JOIN Cases C ON A.agentID = C.agentID
        JOIN InvolvedIn I ON C.caseId = I.caseId
        JOIN People P ON P.personId = I.personId
    WHERE
        I.isCulprit = true
    GROUP BY
        A.agentID, P.personId
    ) as CulpritCoutTable
WHERE 
    CulpritCoutTable.culpritCount > 1

--SELECT * FROM Nemeses;

SELECT
    4 AS QUERY;

CREATE OR REPLACE PROCEDURE insertPerson(
    name VARCHAR(255),
    profId INTEGER,
    genderId INTEGER,
    locationId INTEGER)
LANGUAGE SQL
AS $$
    INSERT INTO People (personId, name, professionId, genderId, locationId) 
    VALUES (default, name, profId, genderId, locationId);
$$;

BEGIN;
    CREATE FUNCTION validPerson() RETURNS TRIGGER AS $ValidP$
        BEGIN
            IF NEW.name = ''
                THEN RAISE EXCEPTION 'The person must have a name';
            END IF;
            IF NEW.genderId > 3 OR NEW.genderId < 0 
                THEN RAISE EXCEPTION 'The person must have a genderId, either 0 = Male, 1 = female or 3 = other';
            END IF;
            IF NEW.locationId NOT IN (SELECT locationId FROM Locations)
                THEN RAISE EXCEPTION 'This location does not exist in the database. Create a new location with that id and come back later';
            END IF;
            IF New.professionId NOT IN (SELECT professionId FROM Professions)
                THEN RAISE EXCEPTION 'Insert the description';
            END IF;
            RETURN NEW;
        END;
        $ValidP$ LANGUAGE plpgsql;

    --This trigger executes the procedure function here above
    CREATE TRIGGER ValidP BEFORE INSERT OR UPDATE ON People
        FOR EACH ROW EXECUTE PROCEDURE validPerson();

    CALL insertPerson(
        'Bergur', 
        2511, 
        2,
        91);

    SELECT * FROM People P
    JOIN Professions PR ON P.professionId = PR.professionId
    WHERE P.name = 'Bergur';
ROLLBACK;




SELECT
    5 AS QUERY;

SELECT * FROM Locations


CREATE OR REPLACE FUNCTION correctsCaseCounter() 
RETURNS VOID
AS $$
    UPDATE Locations
    SET caseCount = caseC
    FROM (
            SELECT C.locationId, COUNT(*) caseC
            FROM Cases C
                JOIN Locations L ON C.locationId = L.locationId
            GROUP BY C.locationId, L.location
        ) AS TAB
    WHERE Locations.locationId = TAB.locationId;

$$ LANGUAGE SQL;


BEGIN;
    SELECT correctsCaseCounter();
    SELECT * FROM Locations
    ORDER BY Locations.locationId ASC;
ROLLBACK;


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