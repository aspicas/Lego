/*Valida que la hora de inicio sea menor a la hora fin no */
/* NO PROBADA POR FALTA DE INSERTS -.-*/

create or replace trigger valida_fecha_horario_tienda 
before create or update on TIENDA
FOR EACH ROW
BEGIN
IF to_number(to_char(:NEW.TI_HORARIO.HR_INICIO,HH24)) > to_number(to_char(:NEW.TI_HORARIO.HR_FIN,HH24)) THEN
RAISE_APPLICATION_ERROR(-20909,'La hora de inicio es mayor a la hora final');
END IF;
END;