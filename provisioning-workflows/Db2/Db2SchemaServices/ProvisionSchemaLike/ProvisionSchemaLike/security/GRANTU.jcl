//PH01S06 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//STEPLIB  DD DSN=${instance-DSNLOAD},DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  DSN SYSTEM(${instance-MVSSNAME})
  RUN  PROGRAM(${instance-PROGNAME}) PLAN(${instance-PLANNAME}) -
       LIB('${instance-RUNLIB}')
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD  *
  SET CURRENT SQLID='${instance-SQLID}';

  GRANT DBADM ON DATABASE ${instance-DBNAME}
        TO ${instance-USERNAME};