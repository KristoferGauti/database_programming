BEGIN;

    --******************************** Projects ********************************
    INSERT INTO Projects_MID_MN SELECT DISTINCT MID, MN FROM Projects;
    INSERT INTO Projects_ID_MID SELECT DISTINCT ID, MID FROM Projects;
    INSERT INTO Projects_PID_PN SELECT DISTINCT PID, PN FROM Projects;
    INSERT INTO Projects_SID_SN SELECT DISTINCT SID, SN FROM Projects;
    INSERT INTO Projects_ID_PID_SID SELECT DISTINCT ID, PID, SID FROM Projects;

    --**************************** CivilServices ****************************
    INSERT INTO CivilServices_CSID_PN SELECT DISTINCT CSID, PN FROM CivilServices;
    INSERT INTO CivilServices_CSID_HID_S SELECT DISTINCT CSID, HID, S FROM CivilServices;
    INSERT INTO CivilServices_HID_HS_HZ SELECT DISTINCT HID, HS, HZ FROM CivilServices;
    INSERT INTO CivilServices_HZ_HC SELECT DISTINCT HZ, HC FROM CivilServices;

    --****************************** Citizens ******************************
    INSERT INTO Citizens_CID_CN_CS_CNr_CZ_EID SELECT DISTINCT CID, CN, CS, CNr, CZ, EID FROM Citizens;
    INSERT INTO Citizens_CZ_CL SELECT DISTINCT CZ, CL FROM Citizens;

    --***************************** Coffees *****************************
    INSERT INTO Coffees_DID_CID SELECT DISTINCT DID, CID FROM Coffees;
    INSERT INTO Coffees_DID_DN_DS SELECT DISTINCT DID, DN, DS FROM Coffees;
    INSERT INTO Coffees_CID_CN_CC SELECT DISTINCT CID, CN, CC FROM Coffees;
    INSERT INTO Coffees_DID_HID SELECT DISTINCT DID, HID FROM Coffees;

ROLLBACK;

