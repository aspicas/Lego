CREATE OR REPLACE PROCEDURE REALIZAR_VENTA(id_tienda NUMBER, id_cliente NUMBER) IS
  fec date;
BEGIN
  SELECT CV_F_NAC into fec FROM CLIENTE_VISITANTE WHERE CV_ID = id_cliente;
	IF calcular_edad(to_char(fec)) < 18 THEN
		RAISE_APPLICATION_ERROR(-20012,'El cliente es menor de edad.');
	END IF;
END;