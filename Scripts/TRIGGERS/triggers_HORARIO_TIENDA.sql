/*Valida dia y hora */

CREATE OR REPLACE TRIGGER CH_HORARIO
BEFORE INSERT OR UPDATE ON TIENDA
FOR EACH ROW
BEGIN
  IF :NEW.TI_HORARIO IS NOT NULL THEN
        FOR i IN :NEW.TI_HORARIO.FIRST..:NEW.TI_HORARIO.LAST LOOP
              IF :NEW.TI_HORARIO(i).HR_DIA <> 'LUNES' 
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MARTES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'MIERCOLES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'JUEVES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'VIERNES'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'SABADO'
              AND :NEW.TI_HORARIO(i).HR_DIA <> 'DOMINGO' THEN
                  RAISE_APPLICATION_ERROR(-20000, 'Día Invalido');
              END IF;
              IF :NEW.TI_HORARIO(i).HR_INICIO > :NEW.TI_HORARIO(i).HR_FIN THEN
                  raise_application_error(-20001,'HORA DE INICIO DEBE SER MENOR A HORA FINAL');
              END IF;              
        END LOOP;
    ELSE
      raise_application_error(-20001,'EL HORARIO NO PUEDE ESTAR VACIO');
    END IF;
END;
/