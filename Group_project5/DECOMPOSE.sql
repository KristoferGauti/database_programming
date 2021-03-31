
DROP TABLE IF EXISTS CivilServices_HZ_HC;
DROP TABLE IF EXISTS CivilServices_HID_HS_HZ;
DROP TABLE IF EXISTS CivilServices_CSID_HID_S;
DROP TABLE IF EXISTS CivilServices_CSID_PN;


DROP TABLE IF EXISTS Projects_ID_PID_SID;
DROP TABLE IF EXISTS Projects_ID_MID;
DROP TABLE IF EXISTS Projects_PID_PN;
DROP TABLE IF EXISTS Projects_MID_MN;
DROP TABLE IF EXISTS Projects_SID_SN;


DROP TABLE IF EXISTS Citizens_CID_CN_CS_CNr_CZ_EID;
DROP TABLE IF EXISTS Citizens_CZ_CL;


DROP TABLE IF EXISTS Coffees_DID_HID;
DROP TABLE IF EXISTS Coffees_DID_DN_DS;
DROP TABLE IF EXISTS Coffees_DID_CID;
DROP TABLE IF EXISTS Coffees_CID_CN_CC;


CREATE TABLE CivilServices_CSID_HID_S(
    CSID INTEGER,
    HID INTEGER,
    S INTEGER,
    PRIMARY KEY (HID, CSID)
);

CREATE TABLE CivilServices_CSID_PN(
    CSID INTEGER,
    PN VARCHAR(50),
    PRIMARY KEY (CSID)
);


CREATE TABLE CivilServices_HID_HS_HZ(
    HID INTEGER,
    HS VARCHAR(50),
    HZ INTEGER,
    PRIMARY KEY (HID)
);

CREATE TABLE CivilServices_HZ_HC(
    HZ INTEGER,
    HC VARCHAR(50),
    PRIMARY KEY (HZ)
);


CREATE TABLE Projects_ID_MID(
    ID INTEGER,
    MID INTEGER,
    PRIMARY KEY(ID)
);

CREATE TABLE Projects_PID_PN(
    PID INTEGER,
    PN VARCHAR(500),
    PRIMARY KEY(PID)
);

CREATE TABLE Projects_SID_SN(
    SID INTEGER,
    SN VARCHAR(500),
    PRIMARY KEY(SID)
);

CREATE TABLE Projects_MID_MN(
    MID INTEGER,
    MN VARCHAR(50),
    PRIMARY KEY (MID)
);




CREATE TABLE Projects_ID_PID_SID(
    ID INTEGER,
    PID INTEGER,
    SID INTEGER,
    PRIMARY KEY (ID, PID, SID)
    -- FOREIGN KEY (ID) REFERENCES Projects_ID_MID(ID),
    -- FOREIGN KEY (PID) REFERENCES Projects_PID_PN(PID),
    -- FOREIGN KEY (SID) REFERENCES Projects_SID_SN(SID)
);



CREATE TABLE Citizens_CID_CN_CS_CNr_CZ_EID(
    CID INTEGER,
    CN VARCHAR(50),
    CS VARCHAR(50),
    CNr INTEGER,
    CZ VARCHAR(100),
    EID INTEGER,
    PRIMARY KEY (CID)
);

CREATE TABLE Citizens_CZ_CL(
    CZ INTEGER,
    CL VARCHAR(100),
    PRIMARY KEY (CZ)
);


CREATE TABLE Coffees_DID_DN_DS(
    DID INTEGER,
    DN VARCHAR(50),
    DS VARCHAR(50),
    PRIMARY KEY (DID)
    --FOREIGN KEY (DID) REFERENCES Coffees_DID_CID(DID)
);

CREATE TABLE Coffees_CID_CN_CC(
    CID INTEGER,
    CN VARCHAR(50),
    CC VARCHAR(50),
    PRIMARY KEY (CID)    
);

CREATE TABLE Coffees_DID_HID(
    DID INTEGER,
    HID INTEGER,
    PRIMARY KEY (DID, HID)
    --FOREIGN KEY (DID) REFERENCES Coffees_DID_DN_DS(DID)
);

CREATE TABLE Coffees_DID_CID(
    DID INTEGER,
    CID INTEGER,
    PRIMARY KEY (DID, CID)
    --FOREIGN KEY (CID) REFERENCES Coffees_CID_CN_CC(CID)
);




