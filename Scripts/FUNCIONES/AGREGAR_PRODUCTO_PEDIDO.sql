Ccreate or replace PROCEDURE AGREGA_PRODUCTO( 
TIENDA PEDIDO.PD_FK_TIENDA%TYPE, LEGO DETALLE_PEDIDO.DIP_FK_PRODUCTO%TYPE, FABRICA PEDIDO.PD_FK_FABRICA%TYPE ) IS

ID_PAIS NUMBER(7);
ID_PEDIDO NUMBER(7);
PRODUCTO_DISPONIBLE NUMBER(7):=NULL;

BEGIN
-- devuelve el pais de la fabrica
SELECT DIP_FK_PAIS INTO ID_PAIS 
FROM DISP_PROD 
WHERE DIP_FK_PAIS = (SELECT PA_ID FROM PAIS, ESTADO_CIUDAD, FABRICA WHERE EC_ID = FA_FK_CIUDAD 
AND FA_ID = FABRICA AND EC_FK_PAIS = PA_ID);

--toma el ultimo insert de pedido
SELECT PD_ORDEN INTO ID_PEDIDO FROM PEDIDO WHERE ROWNUM = 1 ORDER BY PD_ORDEN DESC;


--toma id del pais en DISP_PROD, comparando disponibilidad del producto por pais
SELECT DIP_FK_PAIS INTO PRODUCTO_DISPONIBLE FROM DISP_PROD WHERE DIP_FK_PAIS=ID_PAIS AND DIP_FK_PRODUCTO= LEGO;


--si la busqueda no retorna un null hace la insercion en detalle pedido
IF PRODUCTO_DISPONIBLE = NULL THEN 
DBMS_OUTPUT.PUT_LINE('EL PRODUCTO NO SE ENCUENTRA DISPONIBLE PARA ESE PAIS');
ELSE
INSERT INTO DETALLE_PEDIDO VALUES (SQ_DETALLE_PEDIDO_ID.NEXTVAL,TIENDA,ID_PAIS,LEGO,0,0);
end if;

END;
