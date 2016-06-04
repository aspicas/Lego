/*Solo valida que la persona sea menor de edad no se pueda registrar*/

create or replace TRIGGER VALIDAR_EDAD_VISITANTE 
BEFORE INSERT ON CLIENTE_VISITANTE
FOR EACH ROW
BEGIN 
IF (months_between(sysdate,:new.CV_F_NAC)/12) < 18 THEN
raise_Application_error(-20929,'El visitante es menor de edad);
end if;
END;