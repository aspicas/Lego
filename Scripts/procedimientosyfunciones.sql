CREATE OR REPLACE PROCEDURE INSERTAR_FABRICA (
IDF IN FABRICA.FA_ID%TYPE,
CIUDAD IN FABRICA.FA_FK_CIUDAD%TYPE,
NOMBRE IN FABRICA.FA_NOMBRE%TYPE,
CALLE IN VARCHAR2,
N_EDIF IN VARCHAR2,
ZIP IN NUMBER,
LOCAL IN VARCHAR2,
TELE IN TELEFONO
) IS
BEGIN

	INSERT INTO FABRICA VALUES (IDF,CIUDAD,NOMBRE,DIRECCION(CALLE,N_EDIF,ZIP,LOCAL,TELEFONOS_VA(TELE)));
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_FACTURA_TIENDA (
TIENDA IN FACTURA_TIENDA.FT_FK_TIENDA%TYPE,
CLIENTE IN FACTURA_TIENDA.FT_FK_CLIENTE%TYPE,
FECHA IN FACTURA_TIENDA.FT_FECHA%TYPE,
MONTO IN FACTURA_TIENDA.FT_MONTO_USD%TYPE
) IS
BEGIN
  INSERT INTO FACTURA_TIENDA VALUES (TIENDA,CLIENTE,SQ_FACTURA_TIENDA_ID.NEXTVAL,FECHA,MONTO);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_DETALLE_FACTURA(
FACT_T IN DETALLE_FACTURA.DF_FK_FACT_T%TYPE,
CLIENTE IN DETALLE_FACTURA.DF_FK_CLIENTE%TYPE,
PEDIDO IN DETALLE_FACTURA.DF_FK_PEDIDO%TYPE,
DET_PED IN DETALLE_FACTURA.DF_FK_DETPED%TYPE
)IS
BEGIN
  INSERT INTO DETALLE_FACTURA VALUES (SQ_DETALLE_FACTURA_ID.NEXTVAL,FACT_T,CLIENTE,PEDIDO,DET_PED);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_DETALLE_PEDIDO(
PEDIDO IN DETALLE_PEDIDO.DP_FK_PEDIDO%TYPE,
PAIS IN DETALLE_PEDIDO.DP_FK_PAIS%TYPE,
PRODUCTO IN DETALLE_PEDIDO.DP_FK_PRODUCTO%TYPE,
CANTIDAD IN DETALLE_PEDIDO.DP_CANTIDAD%TYPE,
SUBTOTAL IN DETALLE_PEDIDO.DP_SUBTOTAL%TYPE
)IS
BEGIN
  INSERT INTO DETALLE_PEDIDO VALUES (SQ_DETALLE_PEDIDO_ID.NEXTVAL,PEDIDO,PAIS,PRODUCTO,CANTIDAD,SUBTOTAL);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_DET_LOTE(
PLOTE IN DET_LOTE.DL_FK_PROD_LOTE%TYPE,
PEDIDO IN DET_LOTE.DL_FK_PEDIDO%TYPE,
DETPED IN DET_LOTE.DL_FK_DET_PEDIDO%TYPE,
CANTIDAD IN DET_LOTE.DL_CANTIDAD%TYPE
)IS
BEGIN
  INSERT INTO DET_LOTE VALUES (PLOTE,PEDIDO,DETPED,CANTIDAD);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_DESCUENTO(
PLOTE IN DESCUENTO.DES_FK_PROD_LOTE%TYPE,
FECHA IN DESCUENTO.DES_FECHA%TYPE,
CANTIDAD IN DESCUENTO.DES_CANTIDAD%TYPE
)IS
BEGIN
  INSERT INTO DESCUENTO VALUES (SQ_DESCUENTO_ID.NEXTVAL,PLOTE,FECHA,CANTIDAD);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_INSTALACION(
CIUDAD IN VARCHAR2,
NOMBRE IN INSTALACION.INS_NOMBRE%TYPE,
TIPO IN INSTALACION.INS_TIPO%TYPE,
CALLE IN VARCHAR2,
NUMEROEDIF IN VARCHAR2,
POSTAL IN NUMBER,
LOCAL IN VARCHAR2
)IS
BEGIN
  insert into INSTALACION VALUES (SQ_INSTALACION_ID.NEXTVAL,(select EC_ID from estado_ciudad where ec_tipo = 'CIUDAD' AND EC_NOMBRE = CIUDAD)
  ,NOMBRE,TIPO,DIRECCION(CALLE,NUMEROEDIF,POSTAL,LOCAL,NULL));
END;
/

CREATE OR REPLACE PROCEDURE VALORAR_TIENDA(
FACTIENDA VALORACION.VA_FK_FAC_TIENDA%TYPE,
FECHA VALORACION.VA_FECHA%TYPE,
EXPERIENCIA VALORACION.VA_EXPERIENCIA%TYPE,
CALPROD VALORACION.VA_CALIDAD_PR%TYPE,
DIFICULTAD VALORACION.VA_DIFICULTAD%TYPE,
IMPRESIONES VALORACION.VA_IMPRESIONES%TYPE,
ARTICULO VALORACION.VA_ARTICULO%TYPE
)IS
BEGIN
  INSERT INTO VALORACION VALUES (SQ_VALORACION_ID.NEXTVAL,NULL,FACTIENDA,FECHA,EXPERIENCIA,CALPROD,DIFICULTAD,IMPRESIONES,ARTICULO);
END;
/

CREATE OR REPLACE PROCEDURE VALORAR_ONLINE(
FACONLINE VALORACION.VA_FK_FAC_ONLI%TYPE,
FECHA VALORACION.VA_FECHA%TYPE,
EXPERIENCIA VALORACION.VA_EXPERIENCIA%TYPE,
CALPROD VALORACION.VA_CALIDAD_PR%TYPE,
DIFICULTAD VALORACION.VA_DIFICULTAD%TYPE,
IMPRESIONES VALORACION.VA_IMPRESIONES%TYPE,
ARTICULO VALORACION.VA_ARTICULO%TYPE
)IS
BEGIN
  INSERT INTO VALORACION VALUES (SQ_VALORACION_ID.NEXTVAL,FACONLINE,NULL,FECHA,EXPERIENCIA,CALPROD,DIFICULTAD,IMPRESIONES,ARTICULO);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_FACTURA_PEDIDO(
NUMERO IN FACTURA_PEDIDO.FP_NUMERO%TYPE,
ORDEN IN FACTURA_PEDIDO.FP_FK_ORDEN%TYPE,
FECHA IN FACTURA_PEDIDO.FP_FECHA%TYPE,
TOTAL IN FACTURA_PEDIDO.FP_TOTAL%TYPE
) IS
BEGIN
	INSERT INTO FACTURA_PEDIDO VALUES (NUMERO,ORDEN,FECHA,TOTAL);
END;
/

create or replace function calcular_edad(d_fecha in date) return number is
n_retorno number := 0;
begin
  select trunc((sysdate - to_date(d_fecha,'dd/mm/rrrr'))/365,0) into n_retorno from dual;
  return n_retorno;
end;
/

/*METRICAS*/
create or replace FUNCTION FAB_ESNULO 
  (NOMBRE IN FABRICA_E.FABR_NOMBRE%TYPE)
  RETURN NUMBER IS  
  N_FAB NUMBER;
BEGIN  
  SELECT COUNT(FABR_NOMBRE) INTO N_FAB FROM FABRICA_E WHERE FABR_NOMBRE = NOMBRE;
  IF N_FAB > 0 THEN
    RETURN 1;
  ELSE
    RETURN 0;  
  END IF;  
END;
/

create or replace FUNCTION FAB_PK
  (NOMBRE IN FABRICA_E.FABR_NOMBRE%TYPE)
  RETURN NUMBER IS
  N_FAB NUMBER;
BEGIN  
  SELECT FABR_ID INTO N_FAB FROM FABRICA_E WHERE FABR_NOMBRE = NOMBRE;
  RETURN N_FAB;
  EXCEPTION WHEN OTHERS THEN RETURN NULL;
END;
/

create or replace FUNCTION TIE_ESNULO 
  (FECHA IN TIEMPO_E.TIEM_ANO%TYPE)
  RETURN NUMBER IS  
  N_CHECK NUMBER;
BEGIN  
  SELECT COUNT(TIEM_ANO) INTO N_CHECK FROM TIEMPO_E WHERE TIEM_ANO = FECHA;
  IF N_CHECK > 0 THEN
    RETURN 1;
  ELSE
    RETURN 0;  
  END IF;  
END;
/

create or replace FUNCTION CLI_ESNULO 
  (NACIONALIDAD IN CLIENTE_T.CLIE_NACIONALIDAD%TYPE)
  RETURN NUMBER IS
  N_CLI NUMBER;
BEGIN  
  SELECT COUNT(CLIE_NACIONALIDAD) INTO N_CLI FROM CLIENTE_T WHERE CLIE_NACIONALIDAD = NACIONALIDAD;
  IF N_CLI > 0 THEN
    RETURN 1;
  ELSE
    RETURN 0;  
  END IF;  
END;
/

create or replace FUNCTION CLI_PK
  (NACIONALIDAD IN CLIENTE_T.CLIE_NACIONALIDAD%TYPE)
  RETURN NUMBER IS
  N_CLI NUMBER;
BEGIN  
  SELECT CLIE_ID INTO N_CLI FROM CLIENTE_T WHERE CLIE_NACIONALIDAD = NACIONALIDAD;
  RETURN N_CLI;
  EXCEPTION WHEN OTHERS THEN RETURN NULL;
END;
/

create or replace FUNCTION TIET_ESNULO 
  (FECHA IN TIEMPO_T.TIEM_ANO%TYPE)
  RETURN NUMBER IS  
  N_CHECK NUMBER;
BEGIN  
  SELECT COUNT(TIEM_ANO) INTO N_CHECK FROM TIEMPO_T WHERE TIEM_ANO = FECHA;
  IF N_CHECK > 0 THEN
    RETURN 1;
  ELSE
    RETURN 0;  
  END IF;  
END;
/

create or replace FUNCTION EXISTE_PAIS 
  (NoP IN PAIS_P.PAIS_NOMBRE%TYPE)
  RETURN NUMBER IS  
  N_CHECK NUMBER;
BEGIN  
  SELECT COUNT(PAIS_ID) INTO N_CHECK FROM PAIS_P WHERE PAIS_NOMBRE = NoP;
  IF N_CHECK > 0 THEN
    SELECT PAIS_ID INTO N_CHECK FROM PAIS_P WHERE PAIS_NOMBRE = NoP;
    RETURN N_CHECK;
  ELSE
    RETURN 0;  
  END IF;  
END;
/

create or replace FUNCTION EFI_LLENA   
  (TIEMPO EFICIENCIA.TIEM_ANO%TYPE, FABRICA EFICIENCIA.FABR_ID%TYPE)
  RETURN NUMBER IS
  N_EFI NUMBER;  
BEGIN  
  SELECT COUNT(TIEM_ANO) INTO N_EFI FROM EFICIENCIA WHERE FABR_ID = FABRICA AND TIEM_ANO = TIEMPO;
  RETURN N_EFI;
END;
/

create or replace FUNCTION TOUR_LLENA   
  (TIEMPO TOUR.TIEM_ANO%TYPE, CLIENTE TOUR.CLIE_ID%TYPE)
  RETURN NUMBER IS
  N_TOUR NUMBER;  
BEGIN  
  SELECT COUNT(TIEM_ANO) INTO N_TOUR FROM TOUR WHERE CLIE_ID = CLIENTE AND TIEM_ANO = TIEMPO;
  RETURN N_TOUR;
END;
/