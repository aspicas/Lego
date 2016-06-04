CREATE OR REPLACE TRIGGER TR_VALIDAR_PRODUCTO BEFORE INSERT OR UPDATE ON PRODUCTO FOR EACH ROW
BEGIN
IF :NEW.PR_RGO_EDAD IS NOT NULL THEN
    FOR i IN :NEW.PR_RGO_EDAD.FIRST..:NEW.PR_RGO_EDAD.LAST LOOP
        IF :NEW.PR_RGO_EDAD(i).RA_VALORI > :NEW.PR_RGO_EDAD(i).RA_VALORF
        OR :NEW.PR_RGO_EDAD(i).RA_VALORI < 0
        OR :NEW.PR_RGO_EDAD(i).RA_VALORF < 0  THEN
            RAISE_APPLICATION_ERROR(-20001, 'Rango de edad no v�lido.');
        END IF;
    END LOOP;
ELSE
    RAISE_APPLICATION_ERROR(-20002, 'El rango no puede ser nulo.');
END IF;      
IF :NEW.PR_RESUMEN IS NOT NULL THEN
    IF :NEW.PR_RESUMEN.RE_ALTO <= 0
    OR :NEW.PR_RESUMEN.RE_ANCHO <= 0
    OR :NEW.PR_RESUMEN.RE_PROFUNDO <= 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Valores de dimensi�n inv�lidos.');
    END IF;
    IF  :NEW.PR_RESUMEN.RE_IDIOMAS IS NOT NULL THEN
        FOR i IN :NEW.PR_RESUMEN.RE_IDIOMAS.FIRST..:NEW.PR_RESUMEN.RE_IDIOMAS.LAST LOOP
            IF :NEW.PR_RESUMEN.RE_IDIOMAS(i) = NULL THEN
                RAISE_APPLICATION_ERROR(-20004, 'Idioma no v�lido.');
            END IF;
        END LOOP;
    ELSE
        RAISE_APPLICATION_ERROR(-20005, 'Debe de haber al menos un idioma');
    END IF;        
ELSE
    RAISE_APPLICATION_ERROR(-20006, 'El resumen no puede ser nulo.');
END IF;
IF :NEW.PR_FOTOS IS NULL THEN
    RAISE_APPLICATION_ERROR(-20007, 'Debe haber al menos una im�gen.');
END IF;
IF :NEW.PR_INSTRUCCIONES IS NULL THEN
    RAISE_APPLICATION_ERROR(-20008, 'El instructivo no puede ser nulo');
END IF;
IF :NEW.PR_CATEGORIAS IS NULL THEN
    RAISE_APPLICATION_ERROR(-20009, 'Debe haber al menos una categor�a.');
END IF; 
END;
/