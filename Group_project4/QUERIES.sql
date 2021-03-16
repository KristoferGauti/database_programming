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
    


SELECT * from NumOfCases

SELECT
    L.location,
    COUNT(L.locationId) as LocationCount
FROM
    Agents A
    JOIN Cases C ON A.agentID = C.agentID
    JOIN Locations L ON C.locationId = L.locationId
WHERE
    A.codename = 'Duster'
GROUP BY
    L.location

---------------------------- 2 ----------------------------
SELECT 2 AS QUERY;

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

        --Bonus 5% is innocent --> isculprit = false?
        IF (
            SELECT 
                L.locationid 
            FROM People P 
                JOIN Locations L ON P.locationId = L.locationId 
            WHERE IdPerson = P.personId
        ) IN (
                SELECT P.locationId FROM People P
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
                TRUE
            );
        END IF;
    END;
$$ LANGUAGE plpgsql;


BEGIN;
    SELECT startInvestigation(
        5, --Loud Cayman
        2, --heidar finnboga
        'Wassaaa', --caseName
        2021 --caseYear
    );

    SELECT startInvestigation(
        89,
        692,
        'wassa2',
        2022
    );

    SELECT A.codename, P.name, C.title, C.year, I.isculprit
    FROM Agents A 
    JOIN InvolvedIn I ON A.agentId = I.agentId
    JOIN People P ON I.personId = P.personId
    JOIN Locations L ON P.locationId = L.locationId
    JOIN Cases C ON C.caseId = I.caseId
    WHERE C.title = 'Wassaaa';

    SELECT A.codename, P.name, C.title, C.year, I.isculprit
    FROM Agents A 
    JOIN InvolvedIn I ON A.agentId = I.agentId
    JOIN People P ON I.personId = P.personId
    JOIN Locations L ON P.locationId = L.locationId
    JOIN Cases C ON C.caseId = I.caseId
    WHERE C.title = 'wassa2';
ROLLBACK;



---------------------------- 8 ----------------------------
SELECT 8 AS QUERY;

SELECT * FROM Cases C JOIN 

CREATE OR REPLACE FUNCTION deletedAgent()
RETURNS TRIGGER
AS $$
    DECLARE rec1 RECORD;
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
        -- a) LOCATE EACH ROW WHERE THE OLD AGENT HAD A CASE AND REPLACE THE AGENT WITH THE NEW AGENT(IN BELOW COMMENT)
        FOR rec1 IN (
            SELECT 
                *
            FROM Cases C 
            WHERE C.agentId = OLD.agentId) LOOP

            UPDATE Cases
            SET agentId = lowestAgentId
            WHERE caseId = rec1.caseId;
        END LOOP;


                
            --FIND THE ID OF THE AGENT WITH THE LOWEST CLOSED CASES(AND LOWEST DESIGNATION)


        -- b) Breyta öllum röðum í InvolvedIn töfluni þar sem þessi agent var assignaður yfir í NULL
        -- PersonID, CaseID, AgentID, isCulprit --> PersonID, CaseID, NULL, isCulprit


        -- c) The agent that was removed from the database has a secretIdentity
        -- That needs to be removed aswell from the People table.
        -- Remove also the people with P.personId = A.secretIdentity

        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

--DROP TRIGGER deleteAgentsTrigger ON Agents;
CREATE TRIGGER deleteAgentsTrigger
    BEFORE DELETE ON Agents
    FOR EACH ROW
    EXECUTE PROCEDURE deletedAgent()




--Tests
BEGIN;
    DELETE FROM Agents A
    WHERE A.agentId = 10;

    SELECT * FROM CASES C WHERE C.agentID = 10;
ROLLBACK;

SELECT * FROM CASES C WHERE C.agentID = 10;


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

CREATE OR REPLACE FUNCTION FrenemiesOfFrenemies(PersonID_in INT)
RETURNS TABLE(names varchar(255)) AS
$$
DECLARE rec1 RECORD;
DECLARE rec2 RECORD;
DECLARE rec3 RECORD;
DECLARE rec4 RECORD;
BEGIN
    CREATE TABLE temp(name varchar(255), personid INT);

    FOR rec1 IN (  SELECT 
                    caseid, name 
                FROM (
                        SELECT 
                            *
                        FROM
                            People P
                            JOIN InvolvedIn I ON I.personId = P.personId
                        WHERE
                            P.personId = PersonID_in
                    ) as INVOLVEDCASES
                ) LOOP
    FOR rec2 IN (
        SELECT 
            P.name, 
            Inv.caseId,
            P.personId 
        FROM People P 
            JOIN InvolvedIn Inv ON P.personId = Inv.personId 
        WHERE Inv.caseId = rec1.caseid AND 
        P.name != rec1.name
        ) LOOP
        INSERT INTO temp VALUES (rec2.name, rec2.personId);
        RETURN QUERY SELECT rec2.name;

        END LOOP;
    END LOOP;

    FOR rec3 IN (
        SELECT 
            T.name, 
            T.personID 
        FROM temp T
        ) LOOP
    FOR rec4 IN (
        SELECT 
            P.name, 
            Inv.caseId, 
            P.personId 
        FROM People P 
            JOIN InvolvedIn Inv ON P.personId = Inv.personId 
            WHERE Inv.caseId = rec1.caseid AND 
            P.name NOT IN (
                SELECT 
                    T.name 
                FROM temp T
                ) AND 
            P.personID != PersonID_in
            ) LOOP
        INSERT INTO temp VALUES (rec4.name, rec4.personId);
        RETURN QUERY SELECT rec4.name;
    END LOOP;
END LOOP;
DROP TABLE temp;
END;
$$ LANGUAGE plpgsql;




SELECT FrenemiesOfFrenemies(4642);
SELECT P.name, Inv.caseId, P.personId FROM People P JOIN InvolvedIn Inv ON P.personId = Inv.personId;



