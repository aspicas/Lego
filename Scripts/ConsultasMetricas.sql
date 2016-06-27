/*-----	Métrica 1	-----*/
SELECT t.TI_ID "ID Tienda", ec.EC_NOMBRE "Ciudad", COUNT(ft.FT_CODIGO) "No. de Ventas", SUM(ft.FT_MONTO_USD)*1.1012 "Ganancia (EUR)" 
FROM TIENDA t, ESTADO_CIUDAD ec, FACTURA_TIENDA ft
WHERE ec.EC_ID = t.TI_FK_CIUDAD AND ft.FT_FK_TIENDA = t.TI_ID AND EXTRACT (YEAR FROM ft.FT_FECHA) = &ANNIO
GROUP BY t.TI_ID, ec.EC_NOMBRE
ORDER BY COUNT(ft.FT_CODIGO) DESC;

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