---------------------------- 1 ----------------------------
SELECT 1 AS QUERY;

CREATE OR REPLACE FUNCTION mostCommonLocation(agent_ID int) 
RETURNS VARCHAR[]
LANGUAGE SQL AS $$
SELECT ARRAY(
    SELECT location FROM(
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
            L.location) AS ABC

    WHERE ABC.LocationCount = (
        SELECT MAX(LocationCount2) FROM(
            SELECT
                L.location,
                COUNT(L.locationId) as LocationCount2
            FROM
                Agents A
                JOIN Cases C ON A.agentID = C.agentID
                JOIN Locations L ON C.locationId = L.locationId
            WHERE
                A.agentID = agent_ID
            GROUP BY
                L.location

            )AS ABC
    )
);
$$;

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
    

---------------------------- 2 ----------------------------
SELECT 2 AS QUERY;



CREATE OR REPLACE VIEW topThreeSuspects(personId, personName, personLocation) AS
SELECT
    personId,
    name,
    location
FROM
    (
    SELECT
        P.personId,
        P.name,
        L.location,
        COUNT(P.personId) AS numOfCases
    FROM
        People P
        JOIN Locations L ON P.locationId = L.locationId
        JOIN InvolvedIn I ON P.personId = I.personId
        JOIN Cases C ON C.caseId = I.caseId
    GROUP BY
        P.personId,
        L.locationId
    HAVING
        L.location = 'Stokkseyri'
    ) AS numCaseTable
ORDER BY
    numOfCases DESC
LIMIT 3;


---------------------------- 3 ----------------------------
SELECT 3 AS QUERY;

CREATE OR REPLACE VIEW Nemeses(AgentID, Codename, PersonID, Name) AS
SELECT 
    A.agentId, 
    A.codename, 
    P.personId, 
    P.name
FROM
    Agents A
    JOIN InvolvedIn I ON A.agentId = I.agentId
    JOIN People P ON P.personId = I.personId
WHERE I.isCulprit = TRUE
GROUP BY P.personId, A.agentId
HAVING COUNT(I.isculprit) > 1 AND COUNT(I.isCulprit) =
(
    SELECT MAX(culpritCount) FROM (
        SELECT COUNT(I.isCulprit) culpritCount FROM Agents A
        JOIN InvolvedIn I ON A.agentId = I.agentId
        JOIN People P1 ON P1.personId = I.personId
        WHERE I.isCulprit = TRUE AND P1.personId = P.personId
        GROUP BY I.personId, A.agentId
    ) AS culpritCountTable
);

---------------------------- 4 ----------------------------
SELECT 4 AS QUERY;

CREATE OR REPLACE PROCEDURE insertPerson(
    name VARCHAR(255),
    profId INTEGER,
    genderId INTEGER,
    locationId INTEGER,
    Prdescription VARCHAR(255))
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
    Call insertPerson(
        'Bergur', 
        10000, 
        3,
        91,
        'Hallo');

    SELECT * FROM People P
    JOIN Professions PR ON P.professionId = PR.professionId
    WHERE P.name = 'Bergur';
ROLLBACK;


---------------------------- 5 ----------------------------
SELECT 5 AS QUERY;

CREATE OR REPLACE FUNCTION 	CaseCountFixer() 
RETURNS VOID
AS $$
    UPDATE Locations
    SET caseCount = caseC
    FROM (
            SELECT C.locationId, COUNT(*) caseC
            FROM Cases C
                JOIN Locations L ON C.locationId = L.locationId
            GROUP BY C.locationId
        ) AS TAB
    WHERE Locations.locationId = TAB.locationId;

$$ LANGUAGE SQL;

---------------------------- 6 ----------------------------
SELECT 6 AS QUERY;


CREATE TRIGGER CaseCountTracker
    AFTER INSERT OR DELETE OR UPDATE OF locationId ON Cases
    FOR EACH ROW
    EXECUTE PROCEDURE CaseCountFixerTrigger();


---------------------------- 7 ----------------------------
SELECT 7 AS QUERY;

CREATE OR REPLACE FUNCTION startInvestigation(
    IdAgent INTEGER,
    IdPerson INTEGER,
    caseName VARCHAR(255),
    caseYear INTEGER)
RETURNS VOID
AS $$
    BEGIN
        INSERT INTO Cases
        VALUES
        (default, 
        caseName, 
        FALSE, 
        caseYear, 
        IdAgent,
        (
            SELECT 
                L.locationid 
            FROM People P 
                JOIN Locations L ON P.locationId = L.locationId 
            WHERE IdPerson = P.personId
        ));

        --Bonus 5% is innocent --> isculprit = false
        IF (
            SELECT 
                L.locationid 
            FROM People P 
                JOIN Locations L ON P.locationId = L.locationId 
            WHERE IdPerson = P.personId
        ) IN (
                SELECT P.locationId 
                FROM People P
                    JOIN Agents A ON A.secretIdentity = P.personId
            ) 
        THEN 
            INSERT INTO InvolvedIn
            VALUES
            (
                IdPerson, 
                (
                    SELECT C.caseId 
                    FROM cases C
                    WHERE C.title = caseName AND
                    C.year = caseYear AND
                    C.agentId = IdAgent
                ), 
                IdAgent, 
                FALSE
            );
        ELSE
            INSERT INTO InvolvedIn
            VALUES
            (
                IdPerson, 
                (
                    SELECT C.caseId 
                    FROM cases C
                    WHERE C.title = caseName AND
                    C.year = caseYear AND
                    C.agentId = IdAgent
                ), 
                IdAgent, 
                NULL
            );
        END IF;
    END;
$$ LANGUAGE plpgsql;



---------------------------- 8 ----------------------------
SELECT 8 AS QUERY;

CREATE OR REPLACE FUNCTION deletedAgent()
RETURNS TRIGGER
AS $$
    DECLARE rec1 RECORD;
    DECLARE rec2 RECORD;
    DECLARE lowestAgentId INT := (
                    SELECT agentID FROM
                    (
                        SELECT * FROM
                        (SELECT A.agentId, COUNT(*) numOfCases, A.designation
                        FROM Agents A 
                        JOIN Cases C ON A.agentId = C.agentId
                        WHERE C.isClosed = FALSE
                        GROUP BY A.agentId
                        ) AS NUMCASES
                        WHERE NUMCASES.numOfCases = (
                            SELECT MIN(numCases) FROM (
                                SELECT A.agentId, COUNT(*) numCases
                                FROM Agents A 
                                JOIN Cases C ON A.agentId = C.agentId
                                WHERE C.isClosed = FALSE
                                GROUP BY A.agentId
                            ) AS ABC
                        )
                    )AS FINALTABLE
                    ORDER BY FINALTABLE.designation
                    LIMIT 1
                ); 
    BEGIN
        FOR rec1 IN (
            -- LIST of each case that the old agend had
            SELECT 
                *
            FROM Cases C 
            WHERE C.agentId = OLD.agentId) LOOP

            UPDATE InvolvedIn
            SET agentID = NULL
            WHERE agentID = rec1.agentID;

            -- UPDATE for each case a new agent
            UPDATE Cases
            SET agentId = lowestAgentId
            WHERE caseId = rec1.caseId;
        END LOOP;
      
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION deletedPeople()
RETURNS TRIGGER
AS $$
    BEGIN
        DELETE FROM People
        WHERE personID = OLD.secretIdentity;

        -- BONUS

        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


--DROP TRIGGER deleteAgentsTrigger ON Agents;
CREATE TRIGGER bdeleteAgentsTrigger
    BEFORE DELETE ON Agents
    FOR EACH ROW
    EXECUTE PROCEDURE deletedAgent();

CREATE TRIGGER adeleteAgentsTrigger
    AFTER DELETE ON Agents
    FOR EACH ROW
    EXECUTE PROCEDURE deletedPeople();


--Tests
BEGIN;
    SELECT COUNT(*) FROM People;
    --SELECT * FROM CASES C WHERE C.agentID = 10;

    DELETE FROM Agents A
    WHERE A.agentId = 10;

    --SELECT * FROM CASES C WHERE C.caseId = 93;
    SELECT COUNT(*) FROM People;
ROLLBACK;



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


---------------------------- 10 ----------------------------
SELECT 10 AS QUERY;


-- 1. Create a function that takes in PersonID and returns the id's of frenemies
-- 2. Find all people that have the same case ID's as the frenemies in 1.
CREATE OR REPLACE FUNCTION FrenemiesOfFrenemies(PersonID_in INT)
RETURNS TABLE(name VARCHAR(50)) AS
$$
BEGIN
RETURN QUERY
    SELECT DISTINCT P.name
    FROM People P
    JOIN InvolvedIn I ON P.personID = I.personID
    WHERE I.caseid IN (
        SELECT I.caseId
        FROM People P
        JOIN InvolvedIn I ON P.personID = I.personID
        WHERE P.personId IN (SELECT * FROM FindFrenemies(PersonID_in))
    ) AND P.personId !=  PersonID_in;
END;

$$ LANGUAGE PLPGSQL;


CREATE OR REPLACE FUNCTION FindFrenemies(PersonID_in INT)
RETURNS TABLE(personId INT) AS
$$
BEGIN
RETURN QUERY
    SELECT P.personID
    FROM People P
    JOIN InvolvedIn I ON P.personID = I.personID
    WHERE I.caseId = (  
                        SELECT I.caseid
                        FROM People P
                        JOIN InvolvedIn I ON P.personID = I.personID 
                        WHERE P.personID = PersonID_in
                    )
                    AND P.personID != PersonID_in;
END;  
$$ LANGUAGE PLPGSQL;

SELECT * FROM FindFrenemies(4);

SELECT FrenemiesOfFrenemies(4);
