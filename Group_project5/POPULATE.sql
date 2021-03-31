
BEGIN;
    INSERT INTO CivilService_A_B_C
    SELECT DISTINCT A, B, C
    FROM CivilService;
ROLLBACK;