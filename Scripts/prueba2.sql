
insert into tienda(ti_id,TI_FK_CIUDAD,ti_horario)
values (3,5,horarios_va(horario(null,to_date('08:00','HH24:MI'),to_date('18:00','HH24:MI'))));

select HR_DIA,HR_INICIO,HR_FIN from tienda t, table(t.TI_HORARIO) hr; 

delete from producto;

insert into producto values(2,1,'Nombre2N','desc',RANGOS_VA(RANGO(1,2)),12,3,RESUMEN(1,2,3,IDIOMAS_VA('SPANGLISH','RUSO'),'resumenDEsc'),IMAGENES_NT(),'11/12/2010',EMPTY_BLOB(),CATEGORIAS_VA('accion'));

SET SERVEROUTPUT ON;
declare
  aa char;
begin
  ee := CALCULAR_EDAD(&aa);
end;

accept foo prompt 'ID de la tienda:'
accept foo2 prompt 'ID del cliente:'
exec realizar_venta(&foo,&foo2);

CREATE OR REPLACE PROCEDURE REALIZAR_VENTA(id_tienda NUMBER, id_cliente NUMBER) IS
  fec date;
BEGIN
  SELECT CV_F_NAC into fec FROM CLIENTE_VISITANTE WHERE CV_ID = id_cliente;
	IF calcular_edad(to_char(fec)) < 18 THEN
		RAISE_APPLICATION_ERROR(-20012,'El cliente es menor de edad.');
	END IF;
END;
