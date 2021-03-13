SELECT 1 AS QUERY;


SELECT 2 AS QUERY;
--DROP VIEW TopSuspects;

CREATE OR REPLACE VIEW subTopSuspects(personId, personName, personLocation, numOfCases) AS
    SELECT P.personId, P.name, L.location, COUNT(P.personId)
    FROM People P
        JOIN Locations L ON P.locationId = L.locationId
        JOIN InvolvedIn I ON P.personId = I.personId 
        JOIN Cases C ON C.caseId = I.caseId
    GROUP BY P.personId, L.locationId
    HAVING L.location = 'Stokkseyri';

CREATE OR REPLACE VIEW topThreeSuspects(personId, personName, personLocation) AS
    SELECT personId, personName, personLocation
    FROM subTopSuspects
    ORDER BY numOfCases DESC
    LIMIT 3;

SELECT * FROM topThreeSuspects;



SELECT 3 AS QUERY;


SELECT 4 AS QUERY;


SELECT 5 AS QUERY;


SELECT 6 AS QUERY;


SELECT 7 AS QUERY;


SELECT 8 AS QUERY;


SELECT 9 AS QUERY;


SELECT 10 AS QUERY;


