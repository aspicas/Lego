
insert into tienda(ti_id,TI_FK_CIUDAD,ti_horario)
values (2,5,horarios_va(horario(null,to_date('08:00','HH24:MI'),to_date('18:00','HH24:MI'))));

select HR_DIA,HR_INICIO,HR_FIN from tienda t, table(t.TI_HORARIO) hr; 

delete from producto;

insert into producto values(2,1,'Nombre21','desc',RANGOS_VA(RANGO(1,2)),12,3,RESUMEN(1,2,3,IDIOMAS_VA('SPANGLISH','RUSO'),'resumenDEsc'),IMAGENES_NT(),'11/12/2010',EMPTY_BLOB(),CATEGORIAS_VA('accion'));

SET SERVEROUTPUT ON;
declare
  aa char;
begin
  ee := CALCULAR_EDAD(&aa);
end;

accept foo prompt 'ID de la tienda:'
accept foo2 prompt 'ID del cliente:'
exec realizar_venta(&foo,&foo2);
accept v1 prompt 'ID de la tienda222:'
exec realizar_venta(&vi,&foo2);

set serveroutput on
accept aa prompt 'asd'
prompt '&aa'

INSERT INTO FABRICA VALUES(1,1,'fabrica1',null);
INSERT INTO PEDIDO VALUES(1,1,1,(SELECT SYSDATE FROM DUAL),(SELECT SYSDATE FROM DUAL),null,null);
INSERT INTO DISP_PROD VALUES(1,70751,42);
INSERT INTO DISP_PROD VALUES(1,851345,42);
INSERT INTO DETALLE_PEDIDO VALUES(1,1,1,70751,1000,200);
INSERT INTO DETALLE_PEDIDO VALUES(2,1,1,851345,1000,200);
INSERT INTO DETALLE_PEDIDO VALUES(3,51,1,70751,1000,200);
INSERT INTO DETALLE_PEDIDO VALUES(4,51,1,851345,1000,200);
75909

set serveroutput on;
declare
  a_prod nueva_venta.arr_number;
  a_cant nueva_venta.arr_number;
begin
  a_prod(1) := 70751;
  a_cant(1) := 4;
  
  a_prod(2) := 851345;
  a_cant(2) := 3;
  
  NUEVA_VENTA.REALIZAR_VENTA(2,1,a_prod,a_cant);
end;

update CLIENTE_VISITANTE set cv_direccion=null;

UPDATE CLIENTE_VISITANTE SET CV_DIRECCION.DI_TELEFONOS=TELEFONOS_VA(58,212,5551234,'LOCAL') WHERE CV_ID = 1;


UPDATE CLIENTE_VISITANTE cv SET cv.CV_DIRECCION.DI_TELEFONOS=TELEFONOS_VA(TELEFONO(58,212,5551234,'LOCAL')) WHERE CV_ID = 1;

SELECT p.PR_PRECIO_USD FROM PRODUCTO p WHERE p.PR_CODIGO=70751;


create or replace type TOUR_DIAS as object
(
   TD_DIA1              dias_va,
   TD_DIA2              dias_va,
   TD_DIA3              dias_va  
);
/

describe disp_prod

select IM_IMAGEN FROM producto p, TABLE(p.PR_FOTOS) WHERE IM_NOMBRE='1';

select c.CL_ID, IM_IMAGEN, c.CL_DESCRIPCION FROM clasificacion c, TABLE(c.CL_IMAGENES) WHERE IM_NOMBRE='LOGO';


select p.PR_CODIGO, p.PR_NOMBRE, p.PR_DESC FROM producto p  WHERE p.PR_FK_CLASIFICACION = 1$P{ID_CLAS}


SELECT t.TI_ID "ID Tienda", ec.EC_NOMBRE "Ciudad", COUNT(ft.FT_CODIGO) "No. de Ventas", SUM(ft.FT_MONTO_USD)*1.1012 "Ganancia (EUR)" 
FROM TIENDA t, ESTADO_CIUDAD ec, FACTURA_TIENDA ft
WHERE ec.EC_ID = t.TI_FK_CIUDAD AND ft.FT_FK_TIENDA = t.TI_ID AND EXTRACT (YEAR FROM ft.FT_FECHA) = &ANNIO
GROUP BY t.TI_ID, ec.EC_NOMBRE
ORDER BY SUM(ft.FT_MONTO_USD)*1.1012 DESC;

SELECT cl.CL_NOMBRE "Tema", COUNT(dF.DF_ID) "Unidades vendidas"
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
	AND pa.PA_ID = (SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = '&pais')
GROUP BY cl.CL_NOMBRE
ORDER BY COUNT(dF.DF_ID) DESC;
