
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
INSERT INTO DISP_PROD VALUES(1,1,42);
INSERT INTO DISP_PROD VALUES(1,2,42);
INSERT INTO DETALLE_PEDIDO VALUES(1,1,1,1,10,200);
INSERT INTO DETALLE_PEDIDO VALUES(2,1,1,2,10,200);

set serveroutput on;
declare
  a_prod nueva_venta.arr_number;
  a_cant nueva_venta.arr_number;
begin
  a_prod(1) := 1;
  a_cant(1) := 3;
  
  a_prod(2) := 2;
  a_cant(2) := 5;
  
  NUEVA_VENTA.REALIZAR_VENTA(1,1,a_prod,a_cant);
end;

update CLIENTE_VISITANTE set cv_direccion=null;

UPDATE CLIENTE_VISITANTE SET CV_DIRECCION.DI_TELEFONOS=TELEFONOS_VA(58,212,5551234,'LOCAL') WHERE CV_ID = 1;


UPDATE CLIENTE_VISITANTE cv SET cv.CV_DIRECCION.DI_TELEFONOS=TELEFONOS_VA(TELEFONO(58,212,5551234,'LOCAL')) WHERE CV_ID = 1;
