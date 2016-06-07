/*Valida que el visitante no sea menor de edad&*/

create or replace TRIGGER VALIDAR_EDAD_VISITANTE 
BEFORE INSERT ON CLIENTE_VISITANTE
FOR EACH ROW
BEGIN 
	IF (months_between(sysdate,:new.CV_F_NAC)/12) < 18	AND :new.cv_fk_represen IS NULL THEN
		raise_Application_error(-20929,'El visitante es menor de edad y esta sin representante');
	end if;
END;
