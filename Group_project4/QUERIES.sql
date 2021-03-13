SELECT 1 AS QUERY;


SELECT 2 AS QUERY;

CREATE VIEW TopSuspects(personId, personName, personLocation)
SELECT P.personId, P.name, L.location
FROM People P
    JOIN Locations L ON P.locationId = L.locationId
    JOIN InvolvedIn I ON P.personId = I.personId 
    JOIN Cases C ON C.caseId = I.caseId
GROUP BY C.caseId, P.personId, L.locationId
HAVING COUNT(C.caseId) > 0 AND L.location = 'Stokkseyri';

SELECT 3 AS QUERY;


SELECT 4 AS QUERY;


SELECT 5 AS QUERY;


SELECT 6 AS QUERY;


SELECT 7 AS QUERY;


SELECT 8 AS QUERY;


SELECT 9 AS QUERY;


SELECT 10 AS QUERY;


