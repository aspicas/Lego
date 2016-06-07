
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
INSERT INTO DETALLE_PEDIDO VALUES(1,1,1,70751,10,200);
INSERT INTO DETALLE_PEDIDO VALUES(2,1,1,851345,10,200);

set serveroutput on;
declare
  a_prod nueva_venta.arr_number;
  a_cant nueva_venta.arr_number;
begin
  a_prod(1) := 70751;
  a_cant(1) := 3;
  
  a_prod(2) := 851345;
  a_cant(2) := 5;
  
  NUEVA_VENTA.REALIZAR_VENTA(1,1,a_prod,a_cant);
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

select p.PR_CODIGO, IM_IMAGEN, p.PR_DESC FROM producto p, TABLE(p.PR_FOTOS) WHERE p.PR_FK_CLASIFICACION = $P{ID_CLAS}



SELECT ti.TI_ID, ft.FT_CODIGO,ft.FT_FECHA,cv.CV_NOMBRE||' '||cv.CV_NOMBRE_S,cv.CV_APELLIDO||' '||cv.CV_APELLIDO_S, cv.CV_DIRECCION.DI_CALLE||', '||cv.CV_DIRECCION.DI_NUMERO_EDIF||', '||cv.CV_DIRECCION.DI_ZONA_POSTAL||'. '||ecc.EC_NOMBRE||', '||ece.EC_NOMBRE||', '||pais.PA_NOMBRE||'.' COUNT(df.DF_FK_DETPED), p.PR_NOMBRE, p.PR_CODIGO, p.PR_PRECIO_USD, ft.FT_MONTO_USD
FROM producto p, tienda ti, factura_tienda ft, cliente_visitante cv, estado_ciudad ece, estado_ciudad ecc, pais, detalle_factura df, detalle_pedido dp, pedido pe
WHERE dp.DP_FK_PEDIDO=pe.PD_ORDEN AND dp.DP_FK_PRODUCTO=p.PR_CODIGO AND df.DF_FK_PEDIDO=dp.DP_FK_PEDIDO AND dp.DP_ID=df.DF_FK_DETPED AND df.DF_FK_FACT_T=ft.FT_CODIGO AND ft.FT_CODIGO = 2 AND ft.FT_FK_CLIENTE=cv.CV_ID AND ft.FT_FK_TIENDA=ti.TI_ID AND cv.CV_
GROUP BY ti.TI_ID, ft.FT_CODIGO,ft.FT_FECHA,cv.CV_NOMBRE,cv.CV_NOMBRE_S,cv.CV_APELLIDO,cv.CV_APELLIDO_S,PR_CODIGO, PR_NOMBRE, PR_PRECIO_USD, ft.FT_MONTO_USD;


