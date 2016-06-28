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

/*Metrica 6*/
/*% de visitantes por nacionalidad de los ultimos 4 anos*/
/*extraccion*/
create MATERIALIZED view MV_TOUR as
select to_char(fe_fecha,'rrrr') fecha, pa_nacionalidad nacionalidad,
round(((select count(pa_nacionalidad) from fechas, cliente_visitante, pais, tope 
where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente and pa_nacionalidad = p.pa_nacionalidad group by pa_nacionalidad)/
(select count(pa_nacionalidad) from fechas, cliente_visitante, pais, tope where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente))*100,2) porc
from fechas, cliente_visitante, pais p, tope
where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente
GROUP by to_char(fe_fecha,'rrrr'), pa_nacionalidad;

/*transformacion y transporte*/
create or replace PROCEDURE P_TOUR IS
CURSOR PORCE IS 
  SELECT PORC, NACIONALIDAD, FECHA FROM MV_TOUR;
C_PORCE PORCE%ROWTYPE;
BEGIN
  OPEN PORCE;
  LOOP
    FETCH PORCE INTO C_PORCE;
    EXIT WHEN PORCE%NOTFOUND;
    IF CLI_ESNULO(C_PORCE.NACIONALIDAD) = 0 THEN
      INSERT INTO CLIENTE_T VALUES (SQ_CLIENTE_T.NEXTVAL,C_PORCE.NACIONALIDAD,SYSDATE);
    END IF;
    IF TIET_ESNULO(C_PORCE.FECHA) = 0 THEN
      INSERT INTO TIEMPO_T VALUES (C_PORCE.FECHA,SYSDATE);
    END IF;
    IF TOUR_LLENA(C_PORCE.FECHA,CLI_PK(C_PORCE.NACIONALIDAD)) > 0 THEN
      UPDATE TOUR SET TOUR_PORCENTAJE_VISITANTES = C_PORCE.PORC WHERE TIEM_ANO = C_PORCE.FECHA AND CLIE_ID = CLI_PK(C_PORCE.NACIONALIDAD);
    ELSE
      INSERT INTO TOUR VALUES (C_PORCE.FECHA,CLI_PK(C_PORCE.NACIONALIDAD),C_PORCE.PORC);
    END IF;
  END LOOP;
  CLOSE PORCE;  
END;
/

EXEC P_TOUR;

/*metrica 7*/
/*pedidos enviados antes de los 5 dias*/
/*extraccion*/
create MATERIALIZED view MV_PEDIDOSANTES5DIAS as
select count(pd_orden) NroPedidos, fa_nombre fabrica, to_CHAR(pd_fecha_completacion,'rrrr') fecha
from pedido, fabrica 
where fa_id = pd_fk_tienda and pd_fecha_completacion <= pd_fec_objetivo
group by fa_nombre, to_CHAR(pd_fecha_completacion,'rrrr') ORDER BY FECHA;

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
    IF EFI_LLENA(C_PEDIDO.FECHA,FAB_PK(C_PEDIDO.FABRICA)) > 0 THEN
      UPDATE EFICIENCIA SET PEDIDOANTES5DIAS = C_PEDIDO.NROPEDIDOS WHERE TIEM_ANO = C_PEDIDO.FECHA AND FABR_ID = FAB_PK(C_PEDIDO.FABRICA);      
    ELSE
      INSERT INTO EFICIENCIA (TIEM_ANO, FABR_ID, PEDIDOANTES5DIAS) VALUES (C_PEDIDO.FECHA, FAB_PK(C_PEDIDO.FABRICA), C_PEDIDO.NROPEDIDOS);      
    END IF;/**/
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
group by fa_nombre, to_char(pd_fecha_completacion,'rrrr') order by fecha;

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
    IF EFI_LLENA(C_PEDIDO.FECHA,FAB_PK(C_PEDIDO.FABRICA)) > 0 THEN
      UPDATE EFICIENCIA SET PEDIDOSTARDE = C_PEDIDO.NROPEDIDOS WHERE TIEM_ANO = C_PEDIDO.FECHA AND FABR_ID = FAB_PK(C_PEDIDO.FABRICA);
    ELSE
      INSERT INTO EFICIENCIA (TIEM_ANO, FABR_ID, PEDIDOSTARDE) VALUES (C_PEDIDO.FECHA, FAB_PK(C_PEDIDO.FABRICA), C_PEDIDO.NROPEDIDOS);    
    END IF;    
  END LOOP;
  CLOSE PED;  
END;
/

EXEC P_ENVIOTARDE;


/*----- Métrica 4 -----*/
/* Generar top 2 de los temas preferidos por país. */
/* EXTRACCIÓN */
CREATE MATERIALIZED VIEW MV_TOP2TEMAS AS
SELECT pa.PA_NOMBRE PaisCrs, pa.pa_nacionalidad nacio, cl.CL_NOMBRE NomTema, COUNT(dF.DF_ID) Vtas
FROM CLASIFICACION cl, PRODUCTO pr, PAIS pa, DETALLE_PEDIDO dp, DETALLE_FACTURA df, FACTURA_TIENDA ft, TIENDA ti, ESTADO_CIUDAD ec
WHERE cl.CL_ID = pr.PR_FK_CLASIFICACION 
  AND dp.DP_FK_PRODUCTO = pr.PR_CODIGO
  AND dp.DP_ID = df.DF_FK_DETPED 
  AND dp.DP_FK_PEDIDO = df.DF_FK_PEDIDO
  AND df.DF_FK_FACT_T = ft.FT_CODIGO
  AND ft.FT_FK_TIENDA = ti.TI_ID
  AND ti.TI_FK_CIUDAD = ec.EC_ID
  AND ec.EC_TIPO = 'CIUDAD'
  AND ec.EC_FK_PAIS = pa.PA_ID
GROUP BY pa.PA_NOMBRE, cl.CL_NOMBRE, pa.pa_nacionalidad
ORDER BY COUNT(dF.DF_ID) DESC;

/* TRANSFORMACIÓN y TRANSPORTE */
CREATE OR REPLACE PROCEDURE P_TOP2TEMAS AS
pa_cnt NUMBER;
pa_crs PAIS_P%ROWTYPE;
BEGIN
  FOR pa_crs IN (SELECT NomTema, PaisCrs, nacio, Vtas FROM MV_TOP2TEMAS) LOOP
    IF EXISTE_PAIS(pa_crs.PaisCrs) = 0 THEN
      pa_cnt:= SQ_PAIS_P.NEXTVAL;
      INSERT INTO PAIS_P VALUES (pa_cnt,pa_crs.PaisCrs,pa_crs.nacio,SYSDATE);
      INSERT INTO PREFERENCIA(PAIS_ID, top2_temapreferido) VALUES (pa_cnt,pa_crs.NomTema||' ('||pa_crs.Vtas||' ventas)');
    ELSE
      UPDATE PREFERENCIA pre SET pre.top2_temapreferido = pre.top2_temapreferido||' -dfg '||pa_crs.NomTema||' ('||pa_crs.Vtas||' ventas)' WHERE PAIS_ID = (SELECT pp.PAIS_ID FROM PAIS_P pp WHERE pp.PAIS_NOMBRE = pa_crs.PaisCrs);
    END IF;
  END LOOP;
END;
/

EXEC P_TOP2TEMAS;

