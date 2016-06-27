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
    INSERT INTO EFICIENCIA (TIEM_ANO, FABR_ID, PEDIDOANTES5DIAS) VALUES (C_PEDIDO.FECHA, FAB_PK(C_PEDIDO.FABRICA), C_PEDIDO.NROPEDIDOS);/**/
  END LOOP;
END;
/

EXEC P_pedidosantes5dias;