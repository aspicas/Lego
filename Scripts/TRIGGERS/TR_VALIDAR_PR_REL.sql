/*	Al crear/modificar se verifica que el ID padre y el ID hijo no sean iguales.
También verifica registros inversos (ej: [Padre A – Hijo B] y [Padre B – Hijo A])	*/
CREATE OR REPLACE TRIGGER VALIDAR_PR_REL BEFORE INSERT ON PROD_REL FOR EACH ROW
DECLARE
	p_cnt	NUMBER;
BEGIN
	IF :NEW.PRE_PADRE = :NEW.PRE_HIJO THEN
		RAISE_APPLICATION_ERROR(-20010,'Ambas claves foráneas no pueden ser iguales.');
	END IF;	
	SELECT COUNT(*) INTO p_cnt FROM PROD_REL
	WHERE PRE_PADRE = :NEW.PRE_HIJO AND PRE_HIJO = :NEW.PRE_PADRE;
	IF (p_cnt > 0) THEN
		RAISE_APPLICATION_ERROR(-20011,'El registro ya existe de forma inversa');
	END IF;
END;
/