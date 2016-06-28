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