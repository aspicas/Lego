/*Valida que la hora de inicio sea menor a la hora fin no, DA ERROR AL COMPILAR */

create or replace trigger valida_fecha_horario_tienda 
before insert on TIENDA
FOR EACH ROW
BEGIN
   IF (:new.TI_HORARIO.HR_INICIO - :new.TI_HORARIO.HR_FIN) < 0 THEN
   RAISE_APPLICATION_ERROR(-20909,'La hora de inicio es mayor a la hora final');
   end if;
END;