
SELECT
    'ID ->> (PID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'ID ->> (PID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'ID ->> (PID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'ID ->> (PID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'ID ->> (PID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'ID ->> (SID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'ID ->> (SID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'ID ->> (SID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'ID ->> (SID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'ID ->> (SID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'ID ->> (SN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'ID ->> (SN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'ID ->> (SN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'ID ->> (SN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'ID ->> (SN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'ID ->> (PN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'ID ->> (PN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'ID ->> (PN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'ID ->> (PN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'ID ->> (PN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'ID ->> (MID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'ID ->> (MID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'ID ->> (MID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'ID ->> (MID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'ID ->> (MID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'ID ->> (MN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'ID ->> (MN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'ID ->> (MN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'ID ->> (MN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'ID ->> (MN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            ID 
        FROM 
            Projects 
        GROUP BY ID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PID ->> (ID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PID ->> (ID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PID ->> (ID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'PID ->> (ID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PID ->> (ID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PID ->> (SID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PID ->> (SID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PID ->> (SID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'PID ->> (SID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PID ->> (SID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PID ->> (SN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PID ->> (SN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PID ->> (SN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'PID ->> (SN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PID ->> (SN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PID ->> (PN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PID ->> (PN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PID ->> (PN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PID ->> (PN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PID ->> (PN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PID ->> (MID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PID ->> (MID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PID ->> (MID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PID ->> (MID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'PID ->> (MID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PID ->> (MN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PID ->> (MN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PID ->> (MN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PID ->> (MN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'PID ->> (MN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PID 
        FROM 
            Projects 
        GROUP BY PID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SID ->> (ID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SID ->> (ID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'SID ->> (ID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SID ->> (ID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SID ->> (ID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SID ->> (PID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SID ->> (PID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'SID ->> (PID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SID ->> (PID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SID ->> (PID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SID ->> (SN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SID ->> (SN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SID ->> (SN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SID ->> (SN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SID ->> (SN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SID ->> (PN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SID ->> (PN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SID ->> (PN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'SID ->> (PN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SID ->> (PN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SID ->> (MID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SID ->> (MID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SID ->> (MID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'SID ->> (MID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SID ->> (MID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SID ->> (MN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SID ->> (MN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SID ->> (MN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'SID ->> (MN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SID ->> (MN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SID 
        FROM 
            Projects 
        GROUP BY SID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SN ->> (ID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SN ->> (ID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'SN ->> (ID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SN ->> (ID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SN ->> (ID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SN ->> (PID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SN ->> (PID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'SN ->> (PID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SN ->> (PID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SN ->> (PID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SN ->> (SID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SN ->> (SID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SN ->> (SID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SN ->> (SID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SN ->> (SID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SN ->> (PN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SN ->> (PN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SN ->> (PN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'SN ->> (PN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'SN ->> (PN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SN ->> (MID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SN ->> (MID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SN ->> (MID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'SN ->> (MID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SN ->> (MID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'SN ->> (MN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'SN ->> (MN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'SN ->> (MN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'SN ->> (MN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'SN ->> (MN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            SN 
        FROM 
            Projects 
        GROUP BY SN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PN ->> (ID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'PN ->> (ID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PN ->> (ID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PN ->> (ID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PN ->> (ID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PN ->> (PID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PN ->> (PID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PN ->> (PID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PN ->> (PID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PN ->> (PID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PN ->> (SID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PN ->> (SID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'PN ->> (SID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PN ->> (SID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PN ->> (SID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PN ->> (SN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PN ->> (SN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'PN ->> (SN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PN ->> (SN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'PN ->> (SN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PN ->> (MID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PN ->> (MID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'PN ->> (MID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PN ->> (MID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PN ->> (MID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'PN ->> (MN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'PN ->> (MN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'PN ->> (MN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'PN ->> (MN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'PN ->> (MN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            PN 
        FROM 
            Projects 
        GROUP BY PN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MID ->> (ID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MID ->> (ID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MID ->> (ID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MID ->> (ID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MID ->> (ID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'MID ->> (PID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MID ->> (PID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MID ->> (PID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MID ->> (PID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MID ->> (PID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'MID ->> (SID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MID ->> (SID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MID ->> (SID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MID ->> (SID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MID ->> (SID, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'MID ->> (SN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MID ->> (SN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MID ->> (SN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MID ->> (SN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MID ->> (SN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'MID ->> (PN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MID ->> (PN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MID ->> (PN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MID ->> (PN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MID ->> (PN, MN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)) 
        X;

SELECT
    'MID ->> (MN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MID ->> (MN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MID ->> (MN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MID ->> (MN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MID ->> (MN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MID 
        FROM 
            Projects 
        GROUP BY MID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MN ->> (ID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MN ->> (ID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MN ->> (ID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MN ->> (ID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MN ->> (ID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MN ->> (PID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MN ->> (PID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MN ->> (PID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MN ->> (PID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MN ->> (PID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MN ->> (SID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MN ->> (SID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MN ->> (SID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MN ->> (SID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MN ->> (SID, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MN ->> (SN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MN ->> (SN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MN ->> (SN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MN ->> (SN, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'MN ->> (SN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MN ->> (PN, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MN ->> (PN, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MN ->> (PN, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MN ->> (PN, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MN ->> (PN, MID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)) 
        X;

SELECT
    'MN ->> (MID, ID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)) 
        X;

SELECT
    'MN ->> (MID, PID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)) 
        X;

SELECT
    'MN ->> (MID, SID) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)) 
        X;

SELECT
    'MN ->> (MID, SN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)) 
        X;

SELECT
    'MN ->> (MID, PN) in Projects' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            MN 
        FROM 
            Projects 
        GROUP BY MN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)) 
        X;

SELECT
    'DID ->> (HID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DID ->> (HID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DID ->> (HID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DID ->> (HID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DID ->> (HID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DID ->> (CID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DID ->> (CID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DID ->> (CID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DID ->> (CID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DID ->> (CID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DID ->> (DN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DID ->> (DN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DID ->> (DN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DID ->> (DN, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DID ->> (DN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DID ->> (DS, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DID ->> (DS, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DID ->> (DS, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DID ->> (DS, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DID ->> (DS, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DID ->> (CN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DID ->> (CN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DID ->> (CN, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DID ->> (CN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DID ->> (CN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DID ->> (CC, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DID ->> (CC, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DID ->> (CC, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DID ->> (CC, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DID ->> (CC, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DID 
        FROM 
            Coffees 
        GROUP BY DID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'HID ->> (DID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'HID ->> (DID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'HID ->> (DID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'HID ->> (DID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'HID ->> (DID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'HID ->> (CID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'HID ->> (CID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'HID ->> (CID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'HID ->> (CID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'HID ->> (CID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'HID ->> (DN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'HID ->> (DN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'HID ->> (DN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'HID ->> (DN, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'HID ->> (DN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'HID ->> (DS, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'HID ->> (DS, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'HID ->> (DS, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'HID ->> (DS, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'HID ->> (DS, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'HID ->> (CN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'HID ->> (CN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'HID ->> (CN, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'HID ->> (CN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'HID ->> (CN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'HID ->> (CC, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'HID ->> (CC, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'HID ->> (CC, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'HID ->> (CC, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'HID ->> (CC, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            HID 
        FROM 
            Coffees 
        GROUP BY HID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CID ->> (DID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CID ->> (DID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CID ->> (DID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CID ->> (DID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CID ->> (DID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CID ->> (HID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CID ->> (HID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CID ->> (HID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CID ->> (HID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CID ->> (HID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CID ->> (DN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CID ->> (DN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CID ->> (DN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CID ->> (DN, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CID ->> (DN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CID ->> (DS, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CID ->> (DS, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CID ->> (DS, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CID ->> (DS, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CID ->> (DS, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CID ->> (CN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CID ->> (CN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CID ->> (CN, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CID ->> (CN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CID ->> (CN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CID ->> (CC, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CID ->> (CC, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CID ->> (CC, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CID ->> (CC, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CID ->> (CC, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CID 
        FROM 
            Coffees 
        GROUP BY CID    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DN ->> (DID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DN ->> (DID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DN ->> (DID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DN ->> (DID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DN ->> (DID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DN ->> (HID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DN ->> (HID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DN ->> (HID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DN ->> (HID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DN ->> (HID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DN ->> (CID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DN ->> (CID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DN ->> (CID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DN ->> (CID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DN ->> (CID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DN ->> (DS, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DN ->> (DS, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DN ->> (DS, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DN ->> (DS, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DN ->> (DS, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DN ->> (CN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DN ->> (CN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DN ->> (CN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DN ->> (CN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DN ->> (CN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DN ->> (CC, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DN ->> (CC, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DN ->> (CC, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DN ->> (CC, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'DN ->> (CC, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DN 
        FROM 
            Coffees 
        GROUP BY DN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DS ->> (DID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DS ->> (DID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DS ->> (DID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DS ->> (DID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DS ->> (DID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DS ->> (HID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DS ->> (HID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DS ->> (HID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DS ->> (HID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DS ->> (HID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DS ->> (CID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DS ->> (CID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DS ->> (CID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DS ->> (CID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DS ->> (CID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DS ->> (DN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DS ->> (DN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DS ->> (DN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DS ->> (DN, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'DS ->> (DN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DS ->> (CN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DS ->> (CN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DS ->> (CN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DS ->> (CN, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DS ->> (CN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'DS ->> (CC, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'DS ->> (CC, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'DS ->> (CC, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'DS ->> (CC, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'DS ->> (CC, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            DS 
        FROM 
            Coffees 
        GROUP BY DS    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CN ->> (DID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CN ->> (DID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CN ->> (DID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CN ->> (DID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CN ->> (DID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CN ->> (HID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CN ->> (HID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CN ->> (HID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CN ->> (HID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CN ->> (HID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CN ->> (CID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CN ->> (CID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CN ->> (CID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CN ->> (CID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CN ->> (CID, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CN ->> (DN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CN ->> (DN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CN ->> (DN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CN ->> (DN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CN ->> (DN, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CN ->> (DS, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CN ->> (DS, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CN ->> (DS, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CN ->> (DS, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CN ->> (DS, CC) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)) 
        X;

SELECT
    'CN ->> (CC, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CN ->> (CC, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CN ->> (CC, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CN ->> (CC, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CN ->> (CC, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CN 
        FROM 
            Coffees 
        GROUP BY CN    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CC ->> (DID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CC ->> (DID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CC ->> (DID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CC ->> (DID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CC ->> (DID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CC ->> (HID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CC ->> (HID, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CC ->> (HID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CC ->> (HID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CC ->> (HID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CC ->> (CID, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CC ->> (CID, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CC ->> (CID, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CC ->> (CID, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CC ->> (CID, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CC ->> (DN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CC ->> (DN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CC ->> (DN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CC ->> (DN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)) 
        X;

SELECT
    'CC ->> (DN, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CC ->> (DS, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CC ->> (DS, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CC ->> (DS, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CC ->> (DS, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CC ->> (DS, CN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)) 
        X;

SELECT
    'CC ->> (CN, DID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)) 
        X;

SELECT
    'CC ->> (CN, HID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)) 
        X;

SELECT
    'CC ->> (CN, CID) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)) 
        X;

SELECT
    'CC ->> (CN, DN) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)) 
        X;

SELECT
    'CC ->> (CN, DS) in Coffees' AS MV, CASE WHEN COUNT(*) = 0 THEN 'MAYBE MVD' ELSE 'NO MVD' END AS MVDFROM 
    FROM(    
        SELECT 
            CC 
        FROM 
            Coffees 
        GROUP BY CC    
        HAVING COUNT(*) > 1 AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)) 
        X;
