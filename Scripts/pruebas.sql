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