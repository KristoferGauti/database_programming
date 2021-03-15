---------------------------- 1 ----------------------------
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

---------------------------- 2 ----------------------------
SELECT 2 AS QUERY;

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

---------------------------- 3 ----------------------------
SELECT 3 AS QUERY;

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
    CulpritCoutTable.culpritCount > 1;

SELECT * FROM Nemeses;


---------------------------- 4 ----------------------------
SELECT 4 AS QUERY;

CREATE OR REPLACE FUNCTION insertPerson(
    name VARCHAR(255),
    profId INTEGER,
    genderId INTEGER,
    locationId INTEGER,
    Prdescription VARCHAR(255))
RETURNS VOID
AS $$
    BEGIN
        IF name = '' THEN 
            RAISE EXCEPTION 'The person must have a name';
        END IF;
        IF genderId > 3 OR genderId < 0 THEN 
            RAISE EXCEPTION 'The person must have a genderId, either 0 = Male, 1 = female or 3 = other';
        END IF;
        IF locationId NOT IN (SELECT L.locationId FROM Locations L) THEN 
            RAISE EXCEPTION 'This location does not exist in the database. Create a new location with that id and come back later';
        END IF;
        IF profId NOT IN (SELECT professionId FROM Professions) THEN 
            INSERT INTO Professions(ProfessionID, description) VALUES (profId, Prdescription);
        END IF;

    INSERT INTO People (personId, name, professionId, genderId, locationId) 
    VALUES (default, name, profId, genderId, locationId);
    END;
$$ LANGUAGE plpgsql;

BEGIN;
    SELECT insertPerson(
        'Bergur', 
        69, 
        3,
        91,
        'Hallo');

    SELECT * FROM People P
    JOIN Professions PR ON P.professionId = PR.professionId
    WHERE P.name = 'Bergur';
ROLLBACK;


---------------------------- 5 ----------------------------
SELECT 5 AS QUERY;

SELECT * FROM Locations


CREATE OR REPLACE FUNCTION 	CaseCountFixer() 
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
    SELECT 	CaseCountFixer();
    SELECT * FROM Locations
    ORDER BY Locations.locationId ASC;
ROLLBACK;

---------------------------- 6 ----------------------------
SELECT 6 AS QUERY;

CREATE OR REPLACE FUNCTION CaseCountFixerTrigger()
RETURNS TRIGGER
LANGUAGE plpgsql AS 
$$
    BEGIN
    EXECUTE CaseCountFixer();
    END;
$$;

CREATE OR REPLACE TRIGGER CaseCountTracker
    AFTER INSERT OR UPDATE ON Cases 
    EXECUTE PROCEDURE CaseCountFixerTrigger();


---------------------------- 7 ----------------------------
SELECT 7 AS QUERY;

-- DROP FUNCTION startInvestigation(
--     agentId INTEGER,
--     personId INTEGER,
--     caseId INTEGER,
--     caseName VARCHAR(255),
--     caseYear Integer
-- )

CREATE OR REPLACE FUNCTION startInvestigation(
    agentId INTEGER,
    personId INTEGER,
    caseId INTEGER,
    caseName VARCHAR(255),
    caseYear Integer)
RETURNS VOID
AS $$
    BEGIN
        INSERT INTO Cases
        VALUES
        (caseId, 
        caseName, 
        FALSE, 
        caseYear, 
        agentId, 
        (
            SELECT 
                L.locationid 
            FROM People P 
                JOIN Locations L ON P.locationId = L.locationId 
            WHERE personId = P.personId
        ));

        INSERT INTO InvolvedIn
        VALUES
        (personId, caseId, agentId, TRUE);
    END;
$$ LANGUAGE plpgsql;

BEGIN;
    SELECT startInvestigation(
        5, --volcano
        2, --heidar finnboga
        2, --The Case Of The Protest
        'Wassaaa', --caseName
        2021 --caseYear
    );

ROLLBACK;

SELECT * FROM agents
SELECT * FROM people
SELECT * FROM cases

---------------------------- 8 ----------------------------
SELECT 8 AS QUERY;
---------------------------- 9 ----------------------------
SELECT 9 AS QUERY;

CREATE OR REPLACE FUNCTION LastCase(location_in VARCHAR(255))
RETURNS INT AS
$$
    DECLARE rec RECORD;
    DECLARE closestCase INT := -10000;
    DECLARE currentYear INT := date_part('year', CURRENT_DATE);
    BEGIN
        FOR rec IN (SELECT L.location, C.year 
                    FROM Locations L 
                    JOIN Cases C ON L.locationId = C.locationId
                    WHERE L.location LIKE location_in) LOOP
            
            IF rec.year <= currentYear AND rec.year > closestCase  THEN
            closestCase := rec.year;
            END IF;
        END LOOP;
        return currentYear - closestCase;
    END;
$$ LANGUAGE plpgsql;

SELECT LastCase('Garðabær');


---------------------------- 10 ----------------------------
SELECT 10 AS QUERY;