//HELLOJCL    JOB 1,NOTIFY=&SYSUID
//HELLOIGY   EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..SOURCE(HELLOTSO),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(HELLOTSO),DISP=SHR
// IF RC = 0 THEN
//HELLORUN EXEC PGM=HELLOTSO
in-stream data set
//STEPLIB    DD DSN=&SYSUID..LOAD,DISP=SHR
//SYSOUT     DD SYSOUT=*
//CEEDUMP    DD DUMMY
//SYSUDUMP   DD DUMMY
// ELSE
// ENDIF
