/*Valida el arco exclusivo, SIN PROBAR POR NO HABER DATOS*/
create or replace TRIGGER valida_Arcexclusivo 
BEFORE insert on VALORACION
FOR EACH ROW
BEGIN 
  IF :NEW.VA_FK_FAC_ONLI IS NOT NULL AND :NEW.VA_FK_FAC_TIENDA IS NOT NULL THEN 
    RAISE_APPLICATION_ERROR(-200032,'La valoracion solo puede ser hecha por un tipo de factura');
  END IF;
END;