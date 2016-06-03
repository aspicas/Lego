/* Valida que no se registre un visitante menor de edad. No lo he podido probar por que no hay inserts
en la tabla cliente_visitante*/

CREATE OR REPLACE TRIGGER VALIDAR_EDAD_VISITANTE 
BEFORE INSERT ON CLIENTE_VISITANTE
FOR EACH ROW
BEGIN 
IF (months_between(sysdate,:new.CV_F_NAC)/12) < 18
AND :new.cv_fk_represen IS NULL THEN
raise_Application_error(30003,'El visitante es menor de edad sin representante');
end if;
END; 