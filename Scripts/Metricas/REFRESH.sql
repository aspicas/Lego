BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'TOUR_ACTU',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'ACT_TOUR; END;',
    start_date      => SYSDATE+1,
    repeat_interval => 'freq=yearly;',
    enabled         => TRUE);
END;
/
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'EFICI_ACTU',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'ACT_EFICIENCIA; END;',
    start_date      => SYSDATE+1,
    repeat_interval => 'freq=yearly;',
    enabled         => TRUE);
END;
/
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'PREFE_ACTU',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'ACT_PREFERENCIA ; END;',
    start_date      => SYSDATE+1,
    repeat_interval => 'freq=yearly;',
    enabled         => TRUE);
END;
/

--SELECT * FROM DBA_SCHEDULER_JOBS;


CREATE OR REPLACE PROCEDURE ACT_TOUR IS
BEGIN
	DBMS_SNAPSHOT.REFRESH('MV_TOUR','f');
	P_TOUR;
END;
/
CREATE OR REPLACE PROCEDURE ACT_EFICIENCIA IS
BEGIN
	DBMS_SNAPSHOT.REFRESH('MV_PEDIDOSANTES5DIAS','f');
	DBMS_SNAPSHOT.REFRESH('MV_ENVIOTARDE','f');
	P_pedidosantes5dias;
	P_ENVIOTARDE;	
END;
/
CREATE OR REPLACE PROCEDURE ACT_PREFERENCIA IS
BEGIN
	DBMS_SNAPSHOT.REFRESH('MV_TOP2TEMAS','f');	
	P_TOP2TEMAS;
END;
/