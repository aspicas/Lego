CREATE OR REPLACE PACKAGE NUEVA_VENTA AS
	TYPE ARR_NUMBER IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
	FUNCTION PRODUCTO_DISPONIBLE(numero_p NUMBER, id_t NUMBER) RETURN NUMBER;
	PROCEDURE REALIZAR_VENTA(id_tienda IN NUMBER,id_cliente IN NUMBER,arr_prod IN ARR_NUMBER, arr_cant IN ARR_NUMBER);
END;
/
CREATE OR REPLACE PACKAGE BODY NUEVA_VENTA AS
	FUNCTION PRODUCTO_DISPONIBLE(numero_p NUMBER, id_t NUMBER) RETURN NUMBER IS
		p_inv NUMBER := 0;    
	BEGIN
		SELECT COUNT(*) INTO p_inv FROM DETALLE_FACTURA;
		RETURN p_inv;
	END;
	PROCEDURE REALIZAR_VENTA(id_tienda IN NUMBER,id_cliente IN NUMBER,arr_prod IN ARR_NUMBER, arr_cant IN ARR_NUMBER) IS
		fec date;
		id_det_fac NUMBER;
		id_fac_ti NUMBER;
		id_dp NUMBER;
		id_dp_p NUMBER;
		pro_dis CHAR;
		ex_cl NUMBER;
		ex_ti NUMBER;
		ex_dp NUMBER;
    prod_precio NUMBER;
	BEGIN
		IF arr_prod.COUNT = arr_cant.COUNT THEN
			SELECT COUNT(*) INTO ex_cl FROM CLIENTE_VISITANTE WHERE CV_ID = id_cliente;
			IF ex_cl>0 THEN
				SELECT CV_F_NAC into fec FROM CLIENTE_VISITANTE WHERE CV_ID = id_cliente;
				IF calcular_edad(to_char(fec)) < 18 THEN
					RAISE_APPLICATION_ERROR(-20012,'El cliente es menor de edad.');
				END IF;
				SELECT COUNT(*) INTO ex_ti FROM TIENDA WHERE TI_ID = id_tienda;
				IF ex_ti>0 THEN
					id_fac_ti := SQ_FACTURA_TIENDA_ID.NEXTVAL;
					INSERT INTO FACTURA_TIENDA VALUES(id_tienda,id_cliente,id_fac_ti,(SELECT SYSDATE FROM DUAL),0);
					FOR i in 1 .. arr_prod.COUNT LOOP
						pro_dis := producto_disponible(arr_prod(i),id_tienda);
						IF pro_dis > 0 THEN
							SELECT COUNT(*) INTO ex_dp FROM DETALLE_PEDIDO WHERE DP_FK_PRODUCTO = arr_prod(i);
							IF ex_dp>0 THEN
								SELECT DP_ID, DP_FK_PEDIDO INTO id_dp,id_dp_p FROM DETALLE_PEDIDO WHERE DP_FK_PRODUCTO = arr_prod(i);
								FOR j in 1 .. arr_cant(i) LOOP
									id_det_fac := SQ_DETALLE_FACTURA_ID.NEXTVAL;
									DBMS_OUTPUT.PUT_LINE(id_det_fac||' '||id_tienda||' '||id_cliente||' '||id_dp_p||' '||id_dp);
									INSERT INTO DETALLE_FACTURA VALUES(id_det_fac,id_fac_ti,id_cliente,id_dp_p,id_dp);
									UPDATE FACTURA_TIENDA SET FT_MONTO_USD = FT_MONTO_USD + (SELECT p.PR_PRECIO_USD FROM PRODUCTO p WHERE p.PR_CODIGO=arr_prod(i)) WHERE FT_CODIGO = id_fac_ti;          
								END LOOP;
							ELSE
								EXECUTE IMMEDIATE 'ALTER SEQUENCE SQ_FACTURA_TIENDA_ID INCREMENT BY -1';
								id_det_fac := SQ_DETALLE_FACTURA_ID.NEXTVAL;
								EXECUTE IMMEDIATE 'ALTER SEQUENCE SQ_FACTURA_TIENDA_ID INCREMENT BY 1';
								RAISE_APPLICATION_ERROR(-20013,'No existe el producto ' || arr_prod(i) || ' definido para esta tienda.');
							END IF;
						ELSE
							EXECUTE IMMEDIATE 'ALTER SEQUENCE SQ_FACTURA_TIENDA_ID INCREMENT BY -1';
							id_det_fac := SQ_DETALLE_FACTURA_ID.NEXTVAL;
							EXECUTE IMMEDIATE 'ALTER SEQUENCE SQ_FACTURA_TIENDA_ID INCREMENT BY 1';
							RAISE_APPLICATION_ERROR(-20014,'No existe el producto ' || arr_prod(i) || ' en inventario.');
						END IF;
					END LOOP;
				ELSE
					RAISE_APPLICATION_ERROR(-20015,'No existe la tienda '||id_tienda);
				END IF;
			ELSE
				RAISE_APPLICATION_ERROR(-20016,'No existe el cliente '||id_cliente);
			END IF;
		ELSE
			RAISE_APPLICATION_ERROR(-20017,'Los parámetros de producto y cantidad no coinciden');
		END IF;
	END;
END;
/

/*

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
  a_cant(1) := 5;
  
  a_prod(2) := 851345;
  a_cant(2) := 10;
  
  NUEVA_VENTA.REALIZAR_VENTA(1,1,a_prod,a_cant);
end;
*/