/*PRuebas que funcionan*/

drop type telefono force;
drop type telefono_nt force;
drop type direccion force;
drop table prueba;

create or replace type TELEFONO as object
(
   TELE_COD_INT         NUMBER(2),
   TELE_COD_AREA        NUMBER(4),
   TELE_NUMERO          NUMBER(7),
   TELE_TIPO            VARCHAR2(10)
);
/

create or replace type telefono_nt as table of telefono;
/

create or replace type DIRECCION as object
(
   DI_CALLE             VARCHAR2(50),
   DI_NUMERO_EDIF       VARCHAR2(50),
   DI_ZONA_POSTAL       NUMBER(7),
   DI_LOCAL             VARCHAR2(5),
   DI_TELEFONOS         telefono_nt
);
/

create table prueba
(
prueba1 direccion
)
nested table prueba1.di_telefonos store as nt_prueba1;
/

desc prueba;


select treat(pa_moneda as moneda).mo_nombre, treat(pa_moneda as moneda).mo_cambio from pais where PA_NOMBRE='ENGLAND';

insert into tienda values (SQ_tienda_id.nextval,
(select ec_id from estado_ciudad where ec_nombre='BERLIN' and ec_tipo='CIUDAD'),
horarios_nt(horario('LUNES',to_date('07:00','HH24:MI'),to_date('15:00','HH24:MI')),horario('LUNES',to_date('07:00','HH24:MI'),to_date('15:00','HH24:MI'))),
null,
DIRECCION('3','15253',1060,'local',
telefonos_va(telefono(58,0212,2646577,'OFICINA')))
);

INSERT INTO THE (SELECT TI_HORARIO FROM TIENDA WHERE TI_ID=12) 
VALUES (HORARIO('MARTESS',to_date('12:00','HH24:MI'),to_date('11:00','HH24:MI')));

SELECT distinct T.* FROM THE(SELECT TI_HORARIO FROM TIENDA WHERE TI_ID=13/**/) T;
SELECT T.HR_DIA DIA, TO_CHAR(T.HR_INICIO,'HH24:MI') INICIO, TO_CHAR(T.HR_FIN,'HH24:MI') FIN FROM THE(SELECT TI_HORARIO FROM TIENDA WHERE TI_ID=12) T;
SELECT TO_CHAR(T.HR_INICIO,'HH24:MI'), TO_CHAR(T.HR_FIN,'HH24:MI'), hr_inicio - hr_fin FROM THE(SELECT TI_HORARIO FROM TIENDA WHERE TI_ID=12) T;

SELECT * FROM TIENDA;

SELECT T.TI_ID, T.TI_FK_CIUDAD, H.HR_DIA
FROM THE (SELECT TI_HORARIO FROM TIENDA WHERE TI_ID=13) H, TIENDA T;



SET SERVEROUTPUT ON;
DECLARE
  V_BFILE BFILE := BFILENAME('DIR_BINARIOS','loSgo.jpg');
BEGIN
  DBMS_LOB.FILEOPEN(V_BFILE, DBMS_LOB.FILE_READONLY);
  DBMS_LOB.FILECLOSE(V_BFILE);
  Dbms_Output.Put_Line('EXISTE');
  EXCEPTION WHEN OTHERS THEN
    Dbms_Output.Put_Line('NO EXISTE');
END;

GRANT READ, WRITE ON DIRECTORY DIR_BINARIOS TO PUBLIC;

CREATE OR REPLACE DIRECTORY DIR_BINARIOS AS '/home/aspicas/Lego/images';

SELECT * FROM ALL_DIRECTORIES;