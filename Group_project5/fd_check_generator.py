QUERY_SETUP ='''
SELECT '{R}: {A} --> {B}' AS FD, CASE WHEN COUNT(*)=0 THEN 'VALID' ELSE 'invalid' END AS VALIDITY
FROM(
SELECT {A}
FROM {R}
GROUP BY {A}
HAVING COUNT(DISTINCT {B}) > 1
) X;

'''


tables =[   
            ("CivilServices",("CSID","HID","PN","S","HS","HZ","HC")),
            ("Projects",("ID","PID","SID","SN","PN","MID","MN")),
            ("Citizens",("CID","CN","CS","CNr","CZ","CL","EID")),
            ("Coffees",("DID","HID","CID","DN","DS","CN","CC"))
        ]


from itertools import permutations

def writer():
    with open("FD_checks.sql","w") as fd_checks:
        for table, columns in tables:
            for x,y in permutations(columns,2):
                fd_checks.write(QUERY_SETUP.format(R=table,A=x,B=y))

writer()
