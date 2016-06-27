SELECT * FROM EJEMPLO;


/*AI- EXTRACCION*/
DROP SNAPSHOT EJEMPLO;

CREATE SNAPSHOT EJEMPLO AS select cv_genero from cliente_visitante group by cv_genero;

select cv_genero from ejemplo where cv_genero = 'H';

/*AI TRANSFORMACION*/
CREATE OR REPLACE PROCEDURE PROBA AS
/*HOM EJEMPLO.CV_GENERO%TYPE;*/
BEGIN
  /*select cv_genero INTO HOM from ejemplo;*/
  /*AI EXTRACCION*/
  INSERT INTO HOMBRES (nombre) select cv_genero from ejemplo;
END;
/

/*DM*/
CREATE TABLE HOMBRES(NOMBRE VARCHAR2(2));
CREATE TABLE MUJERES(NOMBRE VARCHAR2(2));

EXEC PROBA;

SELECT * FROM HOMBRES;