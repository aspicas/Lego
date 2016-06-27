CREATE OR REPLACE PROCEDURE ACTUALIZAR (MVIEW IN VARCHAR2) IS
BEGIN
  DBMS_SNAPSHOT.REFRESH(MVIEW);
END;
/

/*-----	Métrica 1	-----*/
/* Generar las tiendas con más ventas por año (en euros) */
SELECT t.TI_ID "ID Tienda", ec.EC_NOMBRE "Ciudad", COUNT(ft.FT_CODIGO) "No. de Ventas", SUM(ft.FT_MONTO_USD)*1.1012 "Ganancia (EUR)" 
FROM TIENDA t, ESTADO_CIUDAD ec, FACTURA_TIENDA ft
WHERE ec.EC_ID = t.TI_FK_CIUDAD AND ft.FT_FK_TIENDA = t.TI_ID AND EXTRACT (YEAR FROM ft.FT_FECHA) = &ANNIO
GROUP BY t.TI_ID, ec.EC_NOMBRE
ORDER BY SUM(ft.FT_MONTO_USD)*1.1012 DESC;

/*-----	Métrica 2	-----*/
/* Generar top 2 de los temas preferidos por país. */
SELECT cl.CL_NOMBRE "Tema", COUNT(dF.DF_ID) "Productos vendidos"
FROM CLASIFICACION cl, PRODUCTO pr, DISP_PROD dip, PAIS pa, DETALLE_PEDIDO dp, DETALLE_FACTURA df, FACTURA_TIENDA ft, TIENDA ti, ESTADO_CIUDAD ec
WHERE cl.CL_ID = pr.PR_FK_CLASIFICACION 
	AND pr.PR_CODIGO = dip.DIP_FK_PRODUCTO 
	AND dip.DIP_FK_PAIS = pa.PA_ID 
	AND dip.DIP_FK_PAIS = dp.DP_FK_PAIS 
	AND dip.DIP_FK_PRODUCTO = dp.DP_FK_PRODUCTO 
	AND dp.DP_ID = df.DF_FK_DETPED 
	AND dp.DP_FK_PEDIDO = df.DF_FK_PEDIDO
	AND df.DF_FK_FACT_T = ft.FT_CODIGO
	AND ft.FT_FK_TIENDA = ti.TI_ID
	AND ti.TI_FK_CIUDAD = ec.EC_ID
	AND ec.EC_TIPO = 'CIUDAD'
	AND ec.EC_FK_PAIS = pa.PA_ID
	AND pa.PA_ID = (SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = '&pais')
GROUP BY cl.CL_NOMBRE
ORDER BY COUNT(dF.DF_ID) DESC;

/*Metrica 6*/
/*% de visitantes por nacionalidad de los ultimos 4 anos*/
select to_char(fe_fecha,'rrrr') fecha, pa_nacionalidad nacionalidad,
round(((select count(pa_nacionalidad) from fechas, cliente_visitante, pais, tope 
where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente and pa_nacionalidad = p.pa_nacionalidad group by pa_nacionalidad)/
(select count(pa_nacionalidad) from fechas, cliente_visitante, pais, tope where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente))*100,2) porc
from fechas, cliente_visitante, pais p, tope
where pa_id = cv_fk_nacionalidad and fe_fecha = tope_fecha and  cv_id = tope_cliente
GROUP by to_char(fe_fecha,'rrrr'), pa_nacionalidad
;

/*Metrica 7*/
/*pedidos enviados antes de los 5 dias*/
select count(pd_orden) NroPedidos, fa_nombre fabrica, to_date(pd_fecha_completacion,'dd/mm/rrrr') fecha
from pedido, fabrica 
where fa_id = pd_fk_tienda and pd_fecha_completacion <= pd_fec_objetivo
group by fa_nombre, to_date(pd_fecha_completacion,'dd/mm/rrrr')
;
/*envian tarde*/
select count(pd_orden) NroPedidos, fa_nombre fabrica, to_date(pd_fecha_completacion,'dd/mm/rrrr') fecha
from pedido, fabrica 
where fa_id = pd_fk_tienda and pd_fecha_completacion >= pd_fec_objetivo
group by fa_nombre, to_date(pd_fecha_completacion,'dd/mm/rrrr')
;