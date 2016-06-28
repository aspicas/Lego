BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'ACTUALIZAR1',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'DBMS_SNAPSHOT.REFRESH(MV_PEDIDOSANTES5DIAS); END;',
    start_date      => SYSDATE+1,
    repeat_interval => 'freq=yearly;',
    enabled         => TRUE);
END;
/
SELECT * FROM DBA_SCHEDULER_JOBS;

/*metrica 7*/
/*pedidos enviados antes de los 5 dias*/
/*extraccion*/
create MATERIALIZED view MV_PEDIDOSANTES5DIAS as
select count(pd_orden) NroPedidos, fa_nombre fabrica, to_CHAR(pd_fecha_completacion,'rrrr') fecha
from pedido, fabrica 
where fa_id = pd_fk_tienda and pd_fecha_completacion <= pd_fec_objetivo
group by fa_nombre, to_CHAR(pd_fecha_completacion,'rrrr');

select * from MV_PEDIDOSANTES5DIAS;
DROP MATERIALIZED VIEW MV_PEDIDOSANTES5DIAS;

/*transformacion y transporte*/
create or replace PROCEDURE P_pedidosantes5dias IS
CURSOR PED IS 
  SELECT NROPEDIDOS, FABRICA, FECHA FROM MV_PEDIDOSANTES5DIAS;
C_PEDIDO PED%ROWTYPE;
BEGIN
  OPEN PED;
  LOOP
    FETCH PED INTO C_PEDIDO;
    EXIT WHEN PED%NOTFOUND;
    IF FAB_ESNULO(C_PEDIDO.FABRICA) = 0 THEN
      INSERT INTO FABRICA_E VALUES (SQ_FABRICA_E.NEXTVAL,C_PEDIDO.FABRICA,SYSDATE);
    END IF;
    IF TIE_ESNULO(C_PEDIDO.FECHA) = 0 THEN
      INSERT INTO TIEMPO_E VALUES (C_PEDIDO.FECHA,SYSDATE);
    END IF;
    IF TIE_ESNULO(C_PEDIDO.FECHA) = 1 AND FAB_ESNULO(C_PEDIDO.FABRICA) = 1 THEN
    	UPDATE EFICIENCIA SET PEDIDOANTES5DIAS = C_PEDIDO.NROPEDIDOS WHERE TIEM_ANO = C_PEDIDO.FECHA AND FABR_ID = C_PEDIDO.FABRICA;
    ELSE
    	INSERT INTO EFICIENCIA (TIEM_ANO, FABR_ID, PEDIDOANTES5DIAS) VALUES (C_PEDIDO.FECHA, FAB_PK(C_PEDIDO.FABRICA), C_PEDIDO.NROPEDIDOS);
    END IF;    
  END LOOP;
  CLOSE PED;
END;
/

EXEC P_pedidosantes5dias;

/*envian tarde*/
/*extraccion*/
create MATERIALIZED view MV_ENVIOTARDE as
select count(pd_orden) NroPedidos, fa_nombre fabrica, to_char(pd_fecha_completacion,'rrrr') fecha
from pedido, fabrica 
where fa_id = pd_fk_tienda and pd_fecha_completacion >= pd_fec_objetivo
group by fa_nombre, to_char(pd_fecha_completacion,'rrrr');

select * from MV_ENVIOTARDE;

select trunc(sysdate) + 365 from dual;
/*transformacion y transporte*/
create or replace PROCEDURE P_ENVIOTARDE IS
CURSOR PED IS 
  SELECT NROPEDIDOS, FABRICA, FECHA FROM MV_ENVIOTARDE;
C_PEDIDO PED%ROWTYPE;
BEGIN
  OPEN PED;
  LOOP
    FETCH PED INTO C_PEDIDO;
    EXIT WHEN PED%NOTFOUND;
    IF FAB_ESNULO(C_PEDIDO.FABRICA) = 0 THEN
      INSERT INTO FABRICA_E VALUES (SQ_FABRICA_E.NEXTVAL,C_PEDIDO.FABRICA,SYSDATE);
    END IF;
    IF TIE_ESNULO(C_PEDIDO.FECHA) = 0 THEN
      INSERT INTO TIEMPO_E VALUES (C_PEDIDO.FECHA,SYSDATE);
    END IF;
    IF TIE_ESNULO(C_PEDIDO.FECHA) = 1 AND FAB_ESNULO(C_PEDIDO.FABRICA) = 1 THEN
      UPDATE EFICIENCIA SET PEDIDOSTARDE = C_PEDIDO.NROPEDIDOS WHERE TIEM_ANO = C_PEDIDO.FECHA AND FABR_ID = FAB_PK(C_PEDIDO.FABRICA);
    ELSE
      INSERT INTO EFICIENCIA (TIEM_ANO, FABR_ID, PEDIDOSTARDE) VALUES (C_PEDIDO.FECHA, FAB_PK(C_PEDIDO.FABRICA), C_PEDIDO.NROPEDIDOS);
    END IF;
  END LOOP;
  CLOSE PED;
END;
/

EXEC P_ENVIOTARDE;