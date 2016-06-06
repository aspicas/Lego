Index FK_CLASIFICADO_CCH_FK dropped.


Index FK_CLASIFICADO_CCP_FK dropped.


Index FK_CIUDAD_CV_FK dropped.


Index FK_PAIS_CV_FK dropped.


Index FK_CLIENTE_VISITANTE_FK dropped.


Index FK_PRODLOTE_DES_FK dropped.


Index FK_FACTONLINE_DET_FK dropped.


Index FK_CLIENTE_DET_FK dropped.

Index FK_PRODLOTE_DET_FK dropped.


Index FK_DISPROD_DET_FK dropped.


Index FK_DETPEDIDO_DF_FK dropped.


Index FK_CLIENTE_DF_FK dropped.


Index FK_FACTIENDA_DF_FK dropped.


Index FK_DISPROD_DP_FK dropped.


Index FK_PEDIDO_DP_FK dropped.


Index FK_DETPEDIDO_DL_FK dropped.


Index FK_PRODLOTE_DL_FK dropped.

Index FK_PAIS_DP_FK dropped.


Index FK_PRODUCTO_DP_FK dropped.


Index FK_ESTADO_CIUDAD_FK dropped.


Index FK_PAIS_EC_FK dropped.


Index FK_CIUDAD_FA_FK dropped.


Index FK_CLIENTE_FON_FK dropped.


Index FK_FACTPEDIDO_PEDIDO2_FK dropped.


Index FK_CLIENTE_FTIE_FK dropped.

Index FK_TIENDA_FT_FK dropped.


Index FK_LINEA_HP_FK dropped.


Index FK_PRODUCTO_HP_FK dropped.


Index FK_CIUDAD_INS_FK dropped.


Index FK_FABRICA_LP_FK dropped.


Index FK_TIENDA_PD_FK dropped.


Index FK_FABRICA_PD_FK dropped.


Index FK_CLASIFICACION_PR_FK dropped.

Index FK_PRODUCTO_PREP_FK dropped.


Index FK_PRODUCTO_PREH_FK dropped.


Error starting at line : 71 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_TIE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Index FK_FECHAS_TOPE_FK dropped.


Index FK_CLIENTE_TOPE_FK dropped.


Index FK_FACTIENDA_VA_FK dropped.


Index FK_FACTONLINE_VA_FK dropped.


Table PRODUCCION_LOTE altered.


Table ESTADO_CIUDAD altered.


Table INSTALACION altered.

Table CLASIFICACION altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table VALORACION altered.


Table VALORACION altered.


Table VALORACION altered.


Table CLASIFICACION altered.


Table PAIS altered.

Table PAIS altered.


Table PRODUCTO altered.


Table CLAS_CLAS altered.


Table CLAS_CLAS altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table DESCUENTO altered.


Table DETALLE altered.


Table DETALLE altered.

Table DETALLE altered.


Table DETALLE altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_PEDIDO altered.


Table DETALLE_PEDIDO altered.


Table DET_LOTE altered.


Table DET_LOTE altered.


Table DISP_PROD altered.


Table DISP_PROD altered.


Table ESTADO_CIUDAD altered.


Table ESTADO_CIUDAD altered.

Table FABRICA altered.


Table FACTURA_ONLINE altered.


Table FACTURA_PEDIDO altered.


Table FACTURA_TIENDA altered.


Error starting at line : 76 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Table HISTORICO_PRODUCTO altered.


Table HISTORICO_PRODUCTO altered.


Table INSTALACION altered.


Table LINEA_PROD altered.


Table PEDIDO altered.


Error starting at line : 94 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PEDIDO
   drop constraint FK_PEDIDO_FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Table PRODUCTO altered.

Table PROD_REL altered.


Table PROD_REL altered.


Error starting at line : 106 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table TIENDA
   drop constraint FK_TIENDA_FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE altered.


Table TOPE altered.


Table VALORACION altered.


Table VALORACION altered.


Sequence SQ_PAIS_ID dropped.


Sequence SQ_ESTADO_CIUDAD_ID dropped.


Sequence SQ_INSTALACION_ID dropped.


Sequence SQ_FECHAS_ID dropped.


Sequence SQ_FABRICA_ID dropped.


Sequence SQ_TOPE_ID dropped.


Sequence SQ_TIENDA_ID dropped.

Sequence SQ_FACTURA_PEDIDO_ID dropped.


Sequence SQ_CLIENTE_VISITANTE_ID dropped.


Sequence SQ_FACTURA_ONLINE_ID dropped.


Sequence SQ_FACTURA_TIENDA_ID dropped.


Sequence SQ_PEDIDO_ID dropped.


Sequence SQ_DETALLE_ID dropped.


Sequence SQ_VALORACION_ID dropped.


Sequence SQ_DETALLE_FACTURA_ID dropped.


Sequence SQ_LINEA_PROD_ID dropped.


Sequence SQ_CLAS_CLAS_ID dropped.


Sequence SQ_CLASIFICACION_ID dropped.


Sequence SQ_DISP_PROD_ID dropped.


Sequence SQ_PRODUCTO_ID dropped.


Sequence SQ_PROD_REL_ID dropped.


Sequence SQ_DETALLE_PEDIDO_ID dropped.


Sequence SQ_HISTORICO_PRODUCTO_ID dropped.


Sequence SQ_DET_LOTE_ID dropped.

Sequence SQ_PRODUCCION_LOTE_ID dropped.


Sequence SQ_DESCUENTO_ID dropped.


Type COSTO dropped.


Type DIA dropped.

Type DIRECCION dropped.


Type HORARIO dropped.


Type MONEDA dropped.


Type RANGO dropped.


Type RESUMEN dropped.

Type TELEFONO dropped.


Type TOUR_DIAS dropped.


Type TELEFONOS_VA dropped.


Type DIAS_VA dropped.


Type CATEGORIAS_VA dropped.


Type HORARIOS_VA dropped.


Type IDIOMAS_VA dropped.

Type IMAGEN dropped.


Type IMAGENES_NT dropped.


Type RANGOS_VA dropped.


Table CLASIFICACION dropped.


Table CLAS_CLAS dropped.

Table CLIENTE_VISITANTE dropped.


Table DESCUENTO dropped.


Table DETALLE dropped.


Table DETALLE_FACTURA dropped.


Table DETALLE_PEDIDO dropped.

Table DET_LOTE dropped.


Table DISP_PROD dropped.


Table ESTADO_CIUDAD dropped.


Table FABRICA dropped.


Table FACTURA_ONLINE dropped.

Table FACTURA_PEDIDO dropped.


Table FACTURA_TIENDA dropped.


Table FECHAS dropped.


Table HISTORICO_PRODUCTO dropped.


Table INSTALACION dropped.

Table LINEA_PROD dropped.


Table PAIS dropped.


Table PEDIDO dropped.


Table PRODUCCION_LOTE dropped.

Table PRODUCTO dropped.


Table PROD_REL dropped.


Error starting at line : 47 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Table.sql
In command -
drop table TIENDA cascade constraints
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE dropped.


Table VALORACION dropped.


Type IDIOMAS_VA compiled

Type RESUMEN compiled


Type DIA compiled


Type MONEDA compiled


Type HORARIO compiled


Type TELEFONO compiled

Type COSTO compiled


Type RANGO compiled


Type TELEFONOS_VA compiled


Type DIAS_VA compiled

Type DIRECCION compiled


Type TOUR_DIAS compiled


Type IMAGEN compiled


Type IMAGENES_NT compiled

Type HORARIOS_VA compiled


Type CATEGORIAS_VA compiled


Type RANGOS_VA compiled

Type HORARIOS_NT compiled


Table CLASIFICACION created.


Table CLAS_CLAS created.

Table CLIENTE_VISITANTE created.


Table DESCUENTO created.


Table DETALLE created.


Table DETALLE_FACTURA created.


Table DETALLE_PEDIDO created.


Table DET_LOTE created.

Table DISP_PROD created.


Table ESTADO_CIUDAD created.


Table FABRICA created.


Table FACTURA_ONLINE created.


Table FACTURA_PEDIDO created.

Table FACTURA_TIENDA created.


Table FECHAS created.


Table HISTORICO_PRODUCTO created.


Table INSTALACION created.


Table LINEA_PROD created.

Table PAIS created.


Table PEDIDO created.


Table PRODUCCION_LOTE created.


Table PRODUCTO created.

Table PROD_REL created.


Table TIENDA created.

Table TIENDA dropped.


Table TOPE created.


Table VALORACION created.


Index FK_CLASIFICADO_CCP_FK created.


Index FK_CLASIFICADO_CCH_FK created.


Index FK_CLIENTE_VISITANTE_FK created.


Index FK_PAIS_CV_FK created.


Index FK_CIUDAD_CV_FK created.

Index FK_PRODLOTE_DES_FK created.


Index FK_DISPROD_DET_FK created.


Index FK_PRODLOTE_DET_FK created.


Index FK_CLIENTE_DET_FK created.


Index FK_FACTONLINE_DET_FK created.


Index FK_FACTIENDA_DF_FK created.


Index FK_CLIENTE_DF_FK created.


Index FK_DETPEDIDO_DF_FK created.


Index FK_PEDIDO_DP_FK created.


Index FK_DISPROD_DP_FK created.


Index FK_PRODLOTE_DL_FK created.


Index FK_DETPEDIDO_DL_FK created.

Index FK_PRODUCTO_DP_FK created.


Index FK_PAIS_DP_FK created.


Index FK_PAIS_EC_FK created.


Index FK_ESTADO_CIUDAD_FK created.


Index FK_CIUDAD_FA_FK created.


Index FK_CLIENTE_FON_FK created.


Index FK_FACTPEDIDO_PEDIDO2_FK created.


Index FK_TIENDA_FT_FK created.


Index FK_CLIENTE_FTIE_FK created.

Index FK_PRODUCTO_HP_FK created.


Index FK_LINEA_HP_FK created.


Index FK_CIUDAD_INS_FK created.


Index FK_FABRICA_LP_FK created.


Index FK_FABRICA_PD_FK created.


Index FK_TIENDA_PD_FK created.


Index FK_CLASIFICACION_PR_FK created.


Index FK_PRODUCTO_PREH_FK created.

Index FK_PRODUCTO_PREP_FK created.


Error starting at line : 254 File @ file:/home/aspicas/Lego/Scripts/CREATE/CREATE Index.sql
In command -
create index FK_CIUDAD_TIE_FK on TIENDA (
   TI_FK_CIUDAD ASC
)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Index FK_CLIENTE_TOPE_FK created.


Index FK_FECHAS_TOPE_FK created.


Index FK_FACTONLINE_VA_FK created.


Index FK_FACTIENDA_VA_FK created.


Index FK_PRODUCTO_PL_FK created.


Sequence SQ_PAIS_ID created.


Sequence SQ_ESTADO_CIUDAD_ID created.


Sequence SQ_INSTALACION_ID created.


Sequence SQ_FECHAS_ID created.


Sequence SQ_FABRICA_ID created.


Sequence SQ_TOPE_ID created.

Sequence SQ_TIENDA_ID created.


Sequence SQ_FACTURA_PEDIDO_ID created.


Sequence SQ_CLIENTE_VISITANTE_ID created.


Sequence SQ_FACTURA_ONLINE_ID created.


Sequence SQ_FACTURA_TIENDA_ID created.


Sequence SQ_PEDIDO_ID created.


Sequence SQ_DETALLE_ID created.


Sequence SQ_VALORACION_ID created.


Sequence SQ_DETALLE_FACTURA_ID created.


Sequence SQ_LINEA_PROD_ID created.


Sequence SQ_CLAS_CLAS_ID created.


Sequence SQ_CLASIFICACION_ID created.


Sequence SQ_DISP_PROD_ID created.


Sequence SQ_PRODUCTO_ID created.


Sequence SQ_PROD_REL_ID created.


Sequence SQ_DETALLE_PEDIDO_ID created.


Sequence SQ_HISTORICO_PRODUCTO_ID created.

Sequence SQ_DET_LOTE_ID created.


Sequence SQ_PRODUCCION_LOTE_ID created.


Sequence SQ_DESCUENTO_ID created.


Table CLAS_CLAS altered.


Table CLAS_CLAS altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.

Table DESCUENTO altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_PEDIDO altered.

Table DETALLE_PEDIDO altered.


Table DET_LOTE altered.


Table DET_LOTE altered.


Table DISP_PROD altered.


Table DISP_PROD altered.


Table ESTADO_CIUDAD altered.


Table ESTADO_CIUDAD altered.


Table FABRICA altered.

Table FACTURA_ONLINE altered.


Table FACTURA_PEDIDO altered.


Table FACTURA_TIENDA altered.


Error starting at line : 101 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   add constraint FK_FACTURA__FK_TIENDA_TIENDA foreign key (FT_FK_TIENDA)
      references TIENDA (TI_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table HISTORICO_PRODUCTO altered.


Table HISTORICO_PRODUCTO altered.


Table INSTALACION altered.


Table LINEA_PROD altered.


Table PEDIDO altered.

Error starting at line : 125 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table PEDIDO
   add constraint FK_PEDIDO_FK_TIENDA_TIENDA foreign key (PD_FK_TIENDA)
      references TIENDA (TI_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PRODUCTO altered.


Table PROD_REL altered.


Table PROD_REL altered.


Error starting at line : 141 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table TIENDA
   add constraint FK_TIENDA_FK_CIUDAD_ESTADO_C foreign key (TI_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE altered.


Table TOPE altered.


Table VALORACION altered.


Table VALORACION altered.

Table PRODUCCION_LOTE altered.


Table PRODUCCION_LOTE altered.


Table ESTADO_CIUDAD altered.


Table INSTALACION altered.


Table CLASIFICACION altered.


Table CLASIFICACION altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.

Table CLIENTE_VISITANTE altered.


Table VALORACION altered.


Table VALORACION altered.


Table VALORACION altered.


Table CLASIFICACION altered.


Table PAIS altered.


Table PAIS altered.


Table PRODUCTO altered.


Directory DIR_BINARIOS created.

Function IMPORTAR_BINARIO compiled


Function CALCULAR_EDAD compiled


Procedure EXIST compiled


Trigger VALIDAR_PR_REL compiled


Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/trigger de direccion.sql
In command -
CREATE OR REPLACE TRIGGER CH_DIRECCION
BEFORE INSERT OR UPDATE ON TIENDA
FOR EACH ROW
DECLARE
  TI_DIRECCION TIENDA.TI_DIRECCION%TYPE;
  CURSOR TELEFONOS IS SELECT TREAT(TI_DIRECCION as DIRECCION).DI_TELEFONOS FROM TIENDA;
  RESULTADO TELEFONOS%ROWTYPE;
BEGIN
  IF TI_DIRECCION IS NULL THEN
    RAISE_APPLICATION_ERROR(-20003, 'LA DIRECCION NO PUEDE SER ESTAR VACIA');
  ELSE
    IF RESULTADO.telefonos_va(1).TELE_TIPO <> 'LOCAL' THEN
      RAISE_APPLICACION_ERROR(-20005,'EL TIPO DE TELEFONO NO ES VALIDO');
    END IF;
  END IF;
  EXCEPTION WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20005,'HA OCURRIDO UN ERROR');
END;
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error starting at line : 20 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/trigger de direccion.sql
In command -
drop trigger CH_direccion
Error report -
SQL Error: ORA-04080: trigger 'CH_DIRECCION' does not exist
04080. 00000 -  "trigger '%s' does not exist"
*Cause:    The TRIGGER name is invalid.
*Action:   Check the trigger name.
Trigger VALIDAR_EDAD_VISITANTE compiled


Trigger VALIDA_ARCEXCLUSIVO compiled


Trigger TR_VALIDAR_PRODUCTO compiled


Error starting at line : 3 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/triggers_HORARIO_TIENDA.sql
In command -
CREATE OR REPLACE TRIGGER CH_HORARIO
BEFORE INSERT OR UPDATE ON TIENDA
FOR EACH ROW
BEGIN
  IF :NEW.TI_HORARIO IS NOT NULL THEN
        FOR i IN :NEW.TI_HORARIO.FIRST..:NEW.TI_HORARIO.LAST LOOP
              IF :NEW.TI_HORARIO(i).HR_DIA <> 'LUNES' 
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MARTES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MIERCOLES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'JUEVES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'VIERNES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'SABADO'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'DOMINGO' THEN
                  RAISE_APPLICATION_ERROR(-20000, 'Día Invalido');
              END IF;
              IF :NEW.TI_HORARIO(i).HR_INICIO > :NEW.TI_HORARIO(i).HR_FIN THEN
                  raise_application_error(-20001,'HORA DE INICIO DEBE SER MENOR A HORA FINAL');
              END IF;              
        END LOOP;
    ELSE
      raise_application_error(-20001,'EL HORARIO NO PUEDE ESTAR VACIO');
    END IF;
END;
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
Error starting at line : 28 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/triggers_HORARIO_TIENDA.sql
In command -
drop trigger ch_horario
Error report -
SQL Error: ORA-04080: trigger 'CH_HORARIO' does not exist
04080. 00000 -  "trigger '%s' does not exist"
*Cause:    The TRIGGER name is invalid.
*Action:   Check the trigger name.

Trigger MAXIMO_COMPRAONLINE compiled

Errors: check compiler log

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/INSERT/insert_clasificacion.sql
In command -
INSERT INTO CLASIFICACION VALUES(SQ_CLASIFICACION_ID.NEXTVAL,'NINJAGO','Los fans de LEGO® están fascinados por el emocionante mundo de NINJAGO™, conde los Ninjas usan Spinjitzu para combatir a los villanos y descubrir su verdadero potencial!','N','TEMA',IMAGENES_NT(IMAGEN('COVER',IMPORTAR_BINARIO('ninjago.png')),IMAGEN('LOGO',IMPORTAR_BINARIO('LEGO_ninjago.png'))))
Error report -
SQL Error: ORA-22288: file or LOB operation FILEOPEN failed
No such file or directory
ORA-06512: at "SYS.DBMS_LOB", line 1014
ORA-06512: at "SYSTEM.IMPORTAR_BINARIO", line 7
22288. 00000 -  "file or LOB operation %s failed\n%s"
*Cause:    The operation attempted on the file or LOB failed.
*Action:   See the next error message in the error stack for more detailed
           information.  Also, verify that the file or LOB exists and that
           the necessary privileges are set for the specified operation. If
           the error still persists, report the error to the DBA.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

Index FK_CLASIFICADO_CCH_FK dropped.


Index FK_CLASIFICADO_CCP_FK dropped.


Index FK_CIUDAD_CV_FK dropped.


Index FK_PAIS_CV_FK dropped.


Index FK_CLIENTE_VISITANTE_FK dropped.


Index FK_PRODLOTE_DES_FK dropped.


Index FK_FACTONLINE_DET_FK dropped.


Index FK_CLIENTE_DET_FK dropped.

Index FK_PRODLOTE_DET_FK dropped.


Index FK_DISPROD_DET_FK dropped.


Index FK_DETPEDIDO_DF_FK dropped.


Index FK_CLIENTE_DF_FK dropped.


Index FK_FACTIENDA_DF_FK dropped.


Index FK_DISPROD_DP_FK dropped.


Index FK_PEDIDO_DP_FK dropped.


Index FK_DETPEDIDO_DL_FK dropped.


Index FK_PRODLOTE_DL_FK dropped.

Index FK_PAIS_DP_FK dropped.


Index FK_PRODUCTO_DP_FK dropped.


Index FK_ESTADO_CIUDAD_FK dropped.


Index FK_PAIS_EC_FK dropped.


Index FK_CIUDAD_FA_FK dropped.


Index FK_CLIENTE_FON_FK dropped.


Index FK_FACTPEDIDO_PEDIDO2_FK dropped.


Index FK_CLIENTE_FTIE_FK dropped.


Index FK_TIENDA_FT_FK dropped.


Index FK_LINEA_HP_FK dropped.

Index FK_PRODUCTO_HP_FK dropped.


Index FK_CIUDAD_INS_FK dropped.


Index FK_FABRICA_LP_FK dropped.


Index FK_TIENDA_PD_FK dropped.


Index FK_FABRICA_PD_FK dropped.


Index FK_CLASIFICACION_PR_FK dropped.


Index FK_PRODUCTO_PREP_FK dropped.


Index FK_PRODUCTO_PREH_FK dropped.


Error starting at line : 71 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_TIE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Index FK_FECHAS_TOPE_FK dropped.

Index FK_CLIENTE_TOPE_FK dropped.


Index FK_FACTIENDA_VA_FK dropped.


Index FK_FACTONLINE_VA_FK dropped.


Table PRODUCCION_LOTE altered.


Table ESTADO_CIUDAD altered.


Table INSTALACION altered.


Table CLASIFICACION altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table VALORACION altered.

Table VALORACION altered.


Table VALORACION altered.


Table CLASIFICACION altered.


Table PAIS altered.


Table PAIS altered.


Table PRODUCTO altered.


Table CLAS_CLAS altered.


Table CLAS_CLAS altered.


Table CLIENTE_VISITANTE altered.

Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table DESCUENTO altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_PEDIDO altered.


Table DETALLE_PEDIDO altered.

Table DET_LOTE altered.


Table DET_LOTE altered.


Table DISP_PROD altered.


Table DISP_PROD altered.


Table ESTADO_CIUDAD altered.


Table ESTADO_CIUDAD altered.


Table FABRICA altered.


Table FACTURA_ONLINE altered.


Table FACTURA_PEDIDO altered.


Table FACTURA_TIENDA altered.


Error starting at line : 76 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Table HISTORICO_PRODUCTO altered.


Table HISTORICO_PRODUCTO altered.

Table INSTALACION altered.


Table LINEA_PROD altered.


Table PEDIDO altered.


Error starting at line : 94 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PEDIDO
   drop constraint FK_PEDIDO_FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Table PRODUCTO altered.


Table PROD_REL altered.


Table PROD_REL altered.


Error starting at line : 106 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table TIENDA
   drop constraint FK_TIENDA_FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE altered.


Table TOPE altered.


Table VALORACION altered.


Table VALORACION altered.

Sequence SQ_PAIS_ID dropped.


Sequence SQ_ESTADO_CIUDAD_ID dropped.


Sequence SQ_INSTALACION_ID dropped.


Sequence SQ_FECHAS_ID dropped.


Sequence SQ_FABRICA_ID dropped.


Sequence SQ_TOPE_ID dropped.


Sequence SQ_TIENDA_ID dropped.


Sequence SQ_FACTURA_PEDIDO_ID dropped.


Sequence SQ_CLIENTE_VISITANTE_ID dropped.


Sequence SQ_FACTURA_ONLINE_ID dropped.


Sequence SQ_FACTURA_TIENDA_ID dropped.


Sequence SQ_PEDIDO_ID dropped.


Sequence SQ_DETALLE_ID dropped.


Sequence SQ_VALORACION_ID dropped.


Sequence SQ_DETALLE_FACTURA_ID dropped.


Sequence SQ_LINEA_PROD_ID dropped.


Sequence SQ_CLAS_CLAS_ID dropped.

Sequence SQ_CLASIFICACION_ID dropped.


Sequence SQ_DISP_PROD_ID dropped.


Sequence SQ_PRODUCTO_ID dropped.


Sequence SQ_PROD_REL_ID dropped.


Sequence SQ_DETALLE_PEDIDO_ID dropped.


Sequence SQ_HISTORICO_PRODUCTO_ID dropped.


Sequence SQ_DET_LOTE_ID dropped.


Sequence SQ_PRODUCCION_LOTE_ID dropped.


Sequence SQ_DESCUENTO_ID dropped.


Type COSTO dropped.


Type DIA dropped.

Type DIRECCION dropped.


Type HORARIO dropped.


Type MONEDA dropped.


Type RANGO dropped.


Type RESUMEN dropped.

Type TELEFONO dropped.


Type TOUR_DIAS dropped.


Type TELEFONOS_VA dropped.


Type DIAS_VA dropped.


Type CATEGORIAS_VA dropped.


Type HORARIOS_VA dropped.


Type IDIOMAS_VA dropped.

Type IMAGEN dropped.


Type IMAGENES_NT dropped.


Type RANGOS_VA dropped.


Table CLASIFICACION dropped.


Table CLAS_CLAS dropped.

Table CLIENTE_VISITANTE dropped.


Table DESCUENTO dropped.


Table DETALLE dropped.


Table DETALLE_FACTURA dropped.

Table DETALLE_PEDIDO dropped.


Table DET_LOTE dropped.


Table DISP_PROD dropped.


Table ESTADO_CIUDAD dropped.


Table FABRICA dropped.


Table FACTURA_ONLINE dropped.

Table FACTURA_PEDIDO dropped.


Table FACTURA_TIENDA dropped.


Table FECHAS dropped.


Table HISTORICO_PRODUCTO dropped.


Table INSTALACION dropped.


Table LINEA_PROD dropped.

Table PAIS dropped.


Table PEDIDO dropped.


Table PRODUCCION_LOTE dropped.

Table PRODUCTO dropped.


Table PROD_REL dropped.


Error starting at line : 47 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Table.sql
In command -
drop table TIENDA cascade constraints
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE dropped.


Table VALORACION dropped.


Type IDIOMAS_VA compiled

Type RESUMEN compiled


Type DIA compiled


Type MONEDA compiled


Type HORARIO compiled

Type TELEFONO compiled


Type COSTO compiled


Type RANGO compiled


Type TELEFONOS_VA compiled


Type DIAS_VA compiled


Type DIRECCION compiled

Type TOUR_DIAS compiled


Type IMAGEN compiled


Type IMAGENES_NT compiled


Type HORARIOS_VA compiled

Type CATEGORIAS_VA compiled


Type RANGOS_VA compiled


Type HORARIOS_NT compiled


Table CLASIFICACION created.

Table CLAS_CLAS created.


Table CLIENTE_VISITANTE created.


Table DESCUENTO created.


Table DETALLE created.


Table DETALLE_FACTURA created.

Table DETALLE_PEDIDO created.


Table DET_LOTE created.


Table DISP_PROD created.

Table ESTADO_CIUDAD created.


Table FABRICA created.


Table FACTURA_ONLINE created.


Table FACTURA_PEDIDO created.


Table FACTURA_TIENDA created.


Table FECHAS created.

Table HISTORICO_PRODUCTO created.


Table INSTALACION created.


Table LINEA_PROD created.


Table PAIS created.


Table PEDIDO created.


Table PRODUCCION_LOTE created.

Table PRODUCTO created.


Table PROD_REL created.


Table TIENDA created.

Table TIENDA dropped.


Table TOPE created.


Table VALORACION created.


Index FK_CLASIFICADO_CCP_FK created.


Index FK_CLASIFICADO_CCH_FK created.


Index FK_CLIENTE_VISITANTE_FK created.


Index FK_PAIS_CV_FK created.


Index FK_CIUDAD_CV_FK created.

Index FK_PRODLOTE_DES_FK created.


Index FK_DISPROD_DET_FK created.


Index FK_PRODLOTE_DET_FK created.


Index FK_CLIENTE_DET_FK created.


Index FK_FACTONLINE_DET_FK created.


Index FK_FACTIENDA_DF_FK created.


Index FK_CLIENTE_DF_FK created.


Index FK_DETPEDIDO_DF_FK created.


Index FK_PEDIDO_DP_FK created.


Index FK_DISPROD_DP_FK created.


Index FK_PRODLOTE_DL_FK created.

Index FK_DETPEDIDO_DL_FK created.


Index FK_PRODUCTO_DP_FK created.


Index FK_PAIS_DP_FK created.


Index FK_PAIS_EC_FK created.


Index FK_ESTADO_CIUDAD_FK created.


Index FK_CIUDAD_FA_FK created.


Index FK_CLIENTE_FON_FK created.


Index FK_FACTPEDIDO_PEDIDO2_FK created.


Index FK_TIENDA_FT_FK created.

Index FK_CLIENTE_FTIE_FK created.


Index FK_PRODUCTO_HP_FK created.


Index FK_LINEA_HP_FK created.


Index FK_CIUDAD_INS_FK created.


Index FK_FABRICA_LP_FK created.


Index FK_FABRICA_PD_FK created.


Index FK_TIENDA_PD_FK created.


Index FK_CLASIFICACION_PR_FK created.


Index FK_PRODUCTO_PREH_FK created.


Index FK_PRODUCTO_PREP_FK created.


Error starting at line : 254 File @ file:/home/aspicas/Lego/Scripts/CREATE/CREATE Index.sql
In command -
create index FK_CIUDAD_TIE_FK on TIENDA (
   TI_FK_CIUDAD ASC
)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Index FK_CLIENTE_TOPE_FK created.


Index FK_FECHAS_TOPE_FK created.

Index FK_FACTONLINE_VA_FK created.


Index FK_FACTIENDA_VA_FK created.


Index FK_PRODUCTO_PL_FK created.


Sequence SQ_PAIS_ID created.


Sequence SQ_ESTADO_CIUDAD_ID created.


Sequence SQ_INSTALACION_ID created.


Sequence SQ_FECHAS_ID created.


Sequence SQ_FABRICA_ID created.


Sequence SQ_TOPE_ID created.


Sequence SQ_TIENDA_ID created.


Sequence SQ_FACTURA_PEDIDO_ID created.


Sequence SQ_CLIENTE_VISITANTE_ID created.


Sequence SQ_FACTURA_ONLINE_ID created.


Sequence SQ_FACTURA_TIENDA_ID created.


Sequence SQ_PEDIDO_ID created.


Sequence SQ_DETALLE_ID created.


Sequence SQ_VALORACION_ID created.

Sequence SQ_DETALLE_FACTURA_ID created.


Sequence SQ_LINEA_PROD_ID created.


Sequence SQ_CLAS_CLAS_ID created.


Sequence SQ_CLASIFICACION_ID created.


Sequence SQ_DISP_PROD_ID created.


Sequence SQ_PRODUCTO_ID created.


Sequence SQ_PROD_REL_ID created.


Sequence SQ_DETALLE_PEDIDO_ID created.


Sequence SQ_HISTORICO_PRODUCTO_ID created.


Sequence SQ_DET_LOTE_ID created.


Sequence SQ_PRODUCCION_LOTE_ID created.


Sequence SQ_DESCUENTO_ID created.


Table CLAS_CLAS altered.

Table CLAS_CLAS altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table DESCUENTO altered.


Table DETALLE altered.


Table DETALLE altered.

Table DETALLE altered.


Table DETALLE altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_PEDIDO altered.


Table DETALLE_PEDIDO altered.


Table DET_LOTE altered.


Table DET_LOTE altered.

Table DISP_PROD altered.


Table DISP_PROD altered.


Table ESTADO_CIUDAD altered.


Table ESTADO_CIUDAD altered.


Table FABRICA altered.


Table FACTURA_ONLINE altered.


Table FACTURA_PEDIDO altered.

Table FACTURA_TIENDA altered.


Error starting at line : 101 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   add constraint FK_FACTURA__FK_TIENDA_TIENDA foreign key (FT_FK_TIENDA)
      references TIENDA (TI_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table HISTORICO_PRODUCTO altered.


Table HISTORICO_PRODUCTO altered.


Table INSTALACION altered.


Table LINEA_PROD altered.


Table PEDIDO altered.

Error starting at line : 125 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table PEDIDO
   add constraint FK_PEDIDO_FK_TIENDA_TIENDA foreign key (PD_FK_TIENDA)
      references TIENDA (TI_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PRODUCTO altered.


Table PROD_REL altered.


Table PROD_REL altered.


Error starting at line : 141 File @ file:/home/aspicas/Lego/Scripts/ALTER/ALTER Constraints FK.sql
In command -
alter table TIENDA
   add constraint FK_TIENDA_FK_CIUDAD_ESTADO_C foreign key (TI_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID)
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE altered.


Table TOPE altered.


Table VALORACION altered.

Table VALORACION altered.


Table PRODUCCION_LOTE altered.


Table PRODUCCION_LOTE altered.


Table ESTADO_CIUDAD altered.


Table INSTALACION altered.


Table CLASIFICACION altered.


Table CLASIFICACION altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.

Table CLIENTE_VISITANTE altered.


Table VALORACION altered.


Table VALORACION altered.


Table VALORACION altered.


Table CLASIFICACION altered.


Table PAIS altered.


Table PAIS altered.


Table PRODUCTO altered.


Directory DIR_BINARIOS created.


Function IMPORTAR_BINARIO compiled


Function CALCULAR_EDAD compiled

Procedure EXIST compiled


Trigger VALIDAR_PR_REL compiled


Trigger VALIDAR_EDAD_VISITANTE compiled


Trigger VALIDA_ARCEXCLUSIVO compiled

Trigger TR_VALIDAR_PRODUCTO compiled


Error starting at line : 3 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/triggers_HORARIO_TIENDA.sql
In command -
CREATE OR REPLACE TRIGGER CH_HORARIO
BEFORE INSERT OR UPDATE ON TIENDA
FOR EACH ROW
BEGIN
  IF :NEW.TI_HORARIO IS NOT NULL THEN
        FOR i IN :NEW.TI_HORARIO.FIRST..:NEW.TI_HORARIO.LAST LOOP
              IF :NEW.TI_HORARIO(i).HR_DIA <> 'LUNES' 
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MARTES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MIERCOLES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'JUEVES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'VIERNES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'SABADO'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'DOMINGO' THEN
                  RAISE_APPLICATION_ERROR(-20000, 'Día Invalido');
              END IF;
              IF :NEW.TI_HORARIO(i).HR_INICIO > :NEW.TI_HORARIO(i).HR_FIN THEN
                  raise_application_error(-20001,'HORA DE INICIO DEBE SER MENOR A HORA FINAL');
              END IF;              
        END LOOP;
    ELSE
      raise_application_error(-20001,'EL HORARIO NO PUEDE ESTAR VACIO');
    END IF;
END;
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error starting at line : 28 File @ file:/home/aspicas/Lego/Scripts/TRIGGERS/triggers_HORARIO_TIENDA.sql
In command -
drop trigger ch_horario
Error report -
SQL Error: ORA-04080: trigger 'CH_HORARIO' does not exist
04080. 00000 -  "trigger '%s' does not exist"
*Cause:    The TRIGGER name is invalid.
*Action:   Check the trigger name.

Trigger MAXIMO_COMPRAONLINE compiled

Errors: check compiler log

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/INSERT/insert_clasificacion.sql
In command -
INSERT INTO CLASIFICACION VALUES(SQ_CLASIFICACION_ID.NEXTVAL,'NINJAGO','Los fans de LEGO® están fascinados por el emocionante mundo de NINJAGO™, conde los Ninjas usan Spinjitzu para combatir a los villanos y descubrir su verdadero potencial!','N','TEMA',IMAGENES_NT(IMAGEN('COVER',IMPORTAR_BINARIO('ninjago.png')),IMAGEN('LOGO',IMPORTAR_BINARIO('LEGO_ninjago.png'))))
Error report -
SQL Error: ORA-22288: file or LOB operation FILEOPEN failed
No such file or directory
ORA-06512: at "SYS.DBMS_LOB", line 1014
ORA-06512: at "SYSTEM.IMPORTAR_BINARIO", line 7
22288. 00000 -  "file or LOB operation %s failed\n%s"
*Cause:    The operation attempted on the file or LOB failed.
*Action:   See the next error message in the error stack for more detailed
           information.  Also, verify that the file or LOB exists and that
           the necessary privileges are set for the specified operation. If
           the error still persists, report the error to the DBA.
1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.

Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLASIFICADO_CCH_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 3 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLASIFICADO_CCP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 5 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_CV_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 7 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PAIS_CV_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 9 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_VISITANTE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 11 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODLOTE_DES_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 13 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FACTONLINE_DET_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:
Error starting at line : 15 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_DET_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 17 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODLOTE_DET_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 19 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_DISPROD_DET_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 21 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_DETPEDIDO_DF_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 23 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_DF_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 25 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FACTIENDA_DF_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 27 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_DISPROD_DP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 29 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PEDIDO_DP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 31 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_DETPEDIDO_DL_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:
Error starting at line : 33 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODLOTE_DL_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 35 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PAIS_DP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 37 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODUCTO_DP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 39 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_ESTADO_CIUDAD_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 41 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PAIS_EC_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 43 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_FA_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 45 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_FON_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 47 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FACTPEDIDO_PEDIDO2_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 49 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_FTIE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 51 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_TIENDA_FT_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:
Error starting at line : 53 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_LINEA_HP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 55 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODUCTO_HP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 57 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_INS_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 59 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FABRICA_LP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 61 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_TIENDA_PD_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 63 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FABRICA_PD_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 65 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLASIFICACION_PR_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 67 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODUCTO_PREP_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 69 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_PRODUCTO_PREH_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:
Error starting at line : 71 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CIUDAD_TIE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 73 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FECHAS_TOPE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 75 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_CLIENTE_TOPE_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 77 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FACTIENDA_VA_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 79 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Index.sql
In command -
drop index FK_FACTONLINE_VA_FK
Error report -
SQL Error: ORA-01418: specified index does not exist
01418. 00000 -  "specified index does not exist"
*Cause:    
*Action:

Error starting at line : 2 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE PRODUCCION_LOTE DROP CONSTRAINT CH_PL_TIPO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 3 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE ESTADO_CIUDAD DROP CONSTRAINT CH_EC_TIPO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 4 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE INSTALACION DROP CONSTRAINT CH_INS_TIPO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 5 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE CLASIFICACION DROP CONSTRAINT CH_CL_TIPO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 6 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE CLIENTE_VISITANTE DROP CONSTRAINT CH_CV_GENERO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 7 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE CLIENTE_VISITANTE DROP CONSTRAINT CH_CV_EXPERIENCIA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 8 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE CLIENTE_VISITANTE DROP CONSTRAINT CH_CV_TIPOCLIENTE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 9 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE VALORACION DROP CONSTRAINT CH_VA_EXPERIENCIA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 10 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE VALORACION DROP CONSTRAINT CH_VA_CALIDAD_PR
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 11 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE VALORACION DROP CONSTRAINT CH_VA_DIFICULTAD
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 14 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE CLASIFICACION DROP CONSTRAINT UN_CL_NOMBRE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 15 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE PAIS DROP CONSTRAINT UN_PA_NOMBRE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 16 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE PAIS DROP CONSTRAINT UN_PA_NACIONALIDAD
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 17 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints CH Y UN.sql
In command -
ALTER TABLE PRODUCTO DROP CONSTRAINT UN_PR_NOMBRE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI2
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 4 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI1
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 7 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 10 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_CLIENT_CLIENTE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 13 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_PAIS_C_PAIS
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 16 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DESCUENTO
   drop constraint FK_DESCUENT_FK_PRODLO_PRODUCCI
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 19 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE
   drop constraint FK_DETALLE_FK_CLIENT_CLIENTE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 22 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE
   drop constraint FK_DETALLE_FK_DISPRO_DISP_PRO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 25 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE
   drop constraint FK_DETALLE_FK_FACTON_FACTURA_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 28 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE
   drop constraint FK_DETALLE_FK_PRODLO_PRODUCCI
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 31 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_CLIENT_CLIENTE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 34 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_DETPED_DETALLE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 37 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_FACTIE_FACTURA_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 40 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__FK_DISPRO_DISP_PRO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 43 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__FK_PEDIDO_PEDIDO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 46 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DET_LOTE
   drop constraint FK_DET_LOTE_FK_DETPED_DETALLE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 49 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DET_LOTE
   drop constraint FK_DET_LOTE_FK_PRODLO_PRODUCCI
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 52 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DISP_PROD
   drop constraint FK_DISP_PRO_FK_PAIS_D_PAIS
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 55 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table DISP_PROD
   drop constraint FK_DISP_PRO_FK_PRODUC_PRODUCTO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 58 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_FK_ESTADO_ESTADO_C
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 61 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_FK_PAIS_E_PAIS
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 64 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FABRICA
   drop constraint FK_FABRICA_FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 67 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_ONLINE
   drop constraint FK_FACTURAO_FK_CLIENT_CLIENTE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 70 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_PEDIDO
   drop constraint FK_FACTURA__FK_FACTPE_PEDIDO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 73 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   drop constraint FK_FACTURAT_FK_CLIENT_CLIENTE
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 76 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 79 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_FK_LINEA__LINEA_PR
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 82 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_FK_PRODUC_PRODUCTO
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 85 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table INSTALACION
   drop constraint FK_INSTALAC_FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 88 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table LINEA_PROD
   drop constraint FK_LINEA_PR_FK_FABRIC_FABRICA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 91 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PEDIDO
   drop constraint FK_PEDIDO_FK_FABRIC_FABRICA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 94 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PEDIDO
   drop constraint FK_PEDIDO_FK_TIENDA_TIENDA
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 97 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PRODUCTO
   drop constraint FK_PRODUCTO_FK_CLASIF_CLASIFIC
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 100 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCT1
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 103 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCT2
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 106 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table TIENDA
   drop constraint FK_TIENDA_FK_CIUDAD_ESTADO_C
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error starting at line : 109 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table TOPE
   drop constraint FK_TOPE_FK_CLIENT_CLIENTE_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 112 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table TOPE
   drop constraint FK_TOPE_FK_FECHAS_FECHAS
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.
Error starting at line : 115 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTIE_FACTURA_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 118 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Constraints FK.sql
In command -
alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTON_FACTURA_
Error report -
SQL Error: ORA-02443: Cannot drop constraint  - nonexistent constraint
02443. 00000 -  "Cannot drop constraint  - nonexistent constraint"
*Cause:    alter table drop constraint <constraint_name>
*Action:   make sure you supply correct constraint name.

Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_PAIS_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 2 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_ESTADO_CIUDAD_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 3 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_INSTALACION_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.
Error starting at line : 4 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_FECHAS_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 5 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_FABRICA_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 6 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_TOPE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 7 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_TIENDA_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 8 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_FACTURA_PEDIDO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 9 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_CLIENTE_VISITANTE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 10 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_FACTURA_ONLINE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 11 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_FACTURA_TIENDA_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 12 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_PEDIDO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.
Error starting at line : 13 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DETALLE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 14 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_VALORACION_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 15 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DETALLE_FACTURA_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 16 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_LINEA_PROD_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 17 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_CLAS_CLAS_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 18 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_CLASIFICACION_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 19 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DISP_PROD_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 20 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_PRODUCTO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 21 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_PROD_REL_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.
Error starting at line : 22 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DETALLE_PEDIDO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 23 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_HISTORICO_PRODUCTO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 24 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DET_LOTE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 25 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_PRODUCCION_LOTE_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Error starting at line : 26 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP SEQUENCE.sql
In command -
DROP SEQUENCE SQ_DESCUENTO_ID
Error report -
SQL Error: ORA-02289: sequence does not exist
02289. 00000 -  "sequence does not exist"
*Cause:    The specified sequence does not exist, or the user does
           not have the required privilege to perform this operation.
*Action:   Make sure the sequence name is correct, and that you have
           the right to perform the desired operation on this sequence.

Type COSTO dropped.


Type DIA dropped.

Type DIRECCION dropped.


Type HORARIO dropped.


Type MONEDA dropped.


Type RANGO dropped.


Type RESUMEN dropped.

Type TELEFONO dropped.


Type TOUR_DIAS dropped.


Type TELEFONOS_VA dropped.


Type DIAS_VA dropped.


Type CATEGORIAS_VA dropped.


Type HORARIOS_VA dropped.


Type IDIOMAS_VA dropped.

Type IMAGEN dropped.


Type IMAGENES_NT dropped.


Type RANGOS_VA dropped.


Table CLASIFICACION dropped.


Table CLAS_CLAS dropped.

Table CLIENTE_VISITANTE dropped.


Table DESCUENTO dropped.


Table DETALLE dropped.


Table DETALLE_FACTURA dropped.


Table DETALLE_PEDIDO dropped.

Table DET_LOTE dropped.


Table DISP_PROD dropped.


Table ESTADO_CIUDAD dropped.


Table FABRICA dropped.


Table FACTURA_ONLINE dropped.


Table FACTURA_PEDIDO dropped.

Table FACTURA_TIENDA dropped.


Table FECHAS dropped.


Table HISTORICO_PRODUCTO dropped.


Table INSTALACION dropped.


Table LINEA_PROD dropped.

Table PAIS dropped.


Table PEDIDO dropped.


Table PRODUCCION_LOTE dropped.


Table PRODUCTO dropped.

Table PROD_REL dropped.


Error starting at line : 47 File @ file:/home/aspicas/Lego/Scripts/DROP/DROP Table.sql
In command -
drop table TIENDA cascade constraints
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table TOPE dropped.


Table VALORACION dropped.


Type IDIOMAS_VA compiled


Type RESUMEN compiled

Type DIA compiled


Type MONEDA compiled


Type HORARIO compiled


Type TELEFONO compiled


Type COSTO compiled


Type RANGO compiled

Type TELEFONOS_VA compiled


Type DIAS_VA compiled


Type DIRECCION compiled


Type TOUR_DIAS compiled


Type IMAGEN compiled

Type IMAGENES_NT compiled


Type HORARIOS_VA compiled


Type CATEGORIAS_VA compiled


Type RANGOS_VA compiled


Type HORARIOS_NT compiled

Table CLASIFICACION created.


Table CLAS_CLAS created.


Table CLIENTE_VISITANTE created.


Table DESCUENTO created.


Table DETALLE created.


Table DETALLE_FACTURA created.


Table DETALLE_PEDIDO created.

Table DET_LOTE created.


Table DISP_PROD created.


Table ESTADO_CIUDAD created.


Table FABRICA created.


Table FACTURA_ONLINE created.


Table FACTURA_PEDIDO created.


Table FACTURA_TIENDA created.

Table FECHAS created.


Table HISTORICO_PRODUCTO created.


Table INSTALACION created.


Table LINEA_PROD created.


Table PAIS created.


Table PEDIDO created.


Table PRODUCCION_LOTE created.

Table PRODUCTO created.


Table PROD_REL created.


Table TIENDA created.


Table TOPE created.


Table VALORACION created.

Index FK_CLASIFICADO_CCP_FK created.


Index FK_CLASIFICADO_CCH_FK created.


Index FK_CLIENTE_VISITANTE_FK created.


Index FK_PAIS_CV_FK created.


Index FK_CIUDAD_CV_FK created.


Index FK_PRODLOTE_DES_FK created.


Index FK_DISPROD_DET_FK created.


Index FK_PRODLOTE_DET_FK created.


Index FK_CLIENTE_DET_FK created.


Index FK_FACTONLINE_DET_FK created.


Index FK_FACTIENDA_DF_FK created.


Index FK_CLIENTE_DF_FK created.

Index FK_DETPEDIDO_DF_FK created.


Index FK_PEDIDO_DP_FK created.


Index FK_DISPROD_DP_FK created.


Index FK_PRODLOTE_DL_FK created.


Index FK_DETPEDIDO_DL_FK created.


Index FK_PRODUCTO_DP_FK created.


Index FK_PAIS_DP_FK created.


Index FK_PAIS_EC_FK created.


Index FK_ESTADO_CIUDAD_FK created.


Index FK_CIUDAD_FA_FK created.


Index FK_CLIENTE_FON_FK created.


Index FK_FACTPEDIDO_PEDIDO2_FK created.


Index FK_TIENDA_FT_FK created.

Index FK_CLIENTE_FTIE_FK created.


Index FK_PRODUCTO_HP_FK created.


Index FK_LINEA_HP_FK created.


Index FK_CIUDAD_INS_FK created.


Index FK_FABRICA_LP_FK created.


Index FK_FABRICA_PD_FK created.


Index FK_TIENDA_PD_FK created.


Index FK_CLASIFICACION_PR_FK created.


Index FK_PRODUCTO_PREH_FK created.


Index FK_PRODUCTO_PREP_FK created.


Index FK_CIUDAD_TIE_FK created.

Index FK_CLIENTE_TOPE_FK created.


Index FK_FECHAS_TOPE_FK created.


Index FK_FACTONLINE_VA_FK created.


Index FK_FACTIENDA_VA_FK created.


Index FK_PRODUCTO_PL_FK created.


Sequence SQ_PAIS_ID created.


Sequence SQ_ESTADO_CIUDAD_ID created.


Sequence SQ_INSTALACION_ID created.


Sequence SQ_FECHAS_ID created.


Sequence SQ_FABRICA_ID created.


Sequence SQ_TOPE_ID created.


Sequence SQ_TIENDA_ID created.


Sequence SQ_FACTURA_PEDIDO_ID created.


Sequence SQ_CLIENTE_VISITANTE_ID created.

Sequence SQ_FACTURA_ONLINE_ID created.


Sequence SQ_FACTURA_TIENDA_ID created.


Sequence SQ_PEDIDO_ID created.


Sequence SQ_DETALLE_ID created.


Sequence SQ_VALORACION_ID created.


Sequence SQ_DETALLE_FACTURA_ID created.


Sequence SQ_LINEA_PROD_ID created.


Sequence SQ_CLAS_CLAS_ID created.


Sequence SQ_CLASIFICACION_ID created.


Sequence SQ_DISP_PROD_ID created.


Sequence SQ_PRODUCTO_ID created.


Sequence SQ_PROD_REL_ID created.


Sequence SQ_DETALLE_PEDIDO_ID created.


Sequence SQ_HISTORICO_PRODUCTO_ID created.


Sequence SQ_DET_LOTE_ID created.


Sequence SQ_PRODUCCION_LOTE_ID created.


Sequence SQ_DESCUENTO_ID created.


Table CLAS_CLAS altered.

Table CLAS_CLAS altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.


Table DESCUENTO altered.


Table DETALLE altered.


Table DETALLE altered.


Table DETALLE altered.

Table DETALLE altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_FACTURA altered.


Table DETALLE_PEDIDO altered.


Table DETALLE_PEDIDO altered.


Table DET_LOTE altered.


Table DET_LOTE altered.


Table DISP_PROD altered.


Table DISP_PROD altered.

Table ESTADO_CIUDAD altered.


Table ESTADO_CIUDAD altered.


Table FABRICA altered.


Table FACTURA_ONLINE altered.


Table FACTURA_PEDIDO altered.


Table FACTURA_TIENDA altered.


Table FACTURA_TIENDA altered.


Table HISTORICO_PRODUCTO altered.


Table HISTORICO_PRODUCTO altered.


Table INSTALACION altered.

Table LINEA_PROD altered.


Table PEDIDO altered.


Table PEDIDO altered.


Table PRODUCTO altered.


Table PROD_REL altered.


Table PROD_REL altered.


Table TIENDA altered.


Table TOPE altered.


Table TOPE altered.


Table VALORACION altered.

Table VALORACION altered.


Table PRODUCCION_LOTE altered.


Table PRODUCCION_LOTE altered.


Table ESTADO_CIUDAD altered.


Table INSTALACION altered.


Table CLASIFICACION altered.


Table CLASIFICACION altered.


Table CLIENTE_VISITANTE altered.


Table CLIENTE_VISITANTE altered.

Table CLIENTE_VISITANTE altered.


Table VALORACION altered.


Table VALORACION altered.


Table VALORACION altered.


Table CLASIFICACION altered.


Table PAIS altered.


Table PAIS altered.


Table PRODUCTO altered.


Directory DIR_BINARIOS created.


Function IMPORTAR_BINARIO compiled

Function CALCULAR_EDAD compiled


Procedure EXIST compiled


Trigger VALIDAR_PR_REL compiled


Trigger VALIDAR_EDAD_VISITANTE compiled


Trigger VALIDA_ARCEXCLUSIVO compiled

Trigger TR_VALIDAR_PRODUCTO compiled


Trigger CH_HORARIO compiled


Trigger CH_HORARIO dropped.

Trigger MAXIMO_COMPRAONLINE compiled

Errors: check compiler log

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

Error starting at line : 1 File @ file:/home/aspicas/Lego/Scripts/INSERT/insert_clasificacion.sql
In command -
INSERT INTO CLASIFICACION VALUES(SQ_CLASIFICACION_ID.NEXTVAL,'NINJAGO','Los fans de LEGO® están fascinados por el emocionante mundo de NINJAGO™, conde los Ninjas usan Spinjitzu para combatir a los villanos y descubrir su verdadero potencial!','N','TEMA',IMAGENES_NT(IMAGEN('COVER',IMPORTAR_BINARIO('ninjago.png')),IMAGEN('LOGO',IMPORTAR_BINARIO('LEGO_ninjago.png'))))
Error report -
SQL Error: ORA-22288: file or LOB operation FILEOPEN failed
No such file or directory
ORA-06512: at "SYS.DBMS_LOB", line 1014
ORA-06512: at "SYSTEM.IMPORTAR_BINARIO", line 7
22288. 00000 -  "file or LOB operation %s failed\n%s"
*Cause:    The operation attempted on the file or LOB failed.
*Action:   See the next error message in the error stack for more detailed
           information.  Also, verify that the file or LOB exists and that
           the necessary privileges are set for the specified operation. If
           the error still persists, report the error to the DBA.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.

