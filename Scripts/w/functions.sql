--CREATE OR REPLACE DIRECTORY DIR_BINARIOS AS 'C:\Users\Carlos Velasco\Desktop\Base\Lego\images';
--CREATE OR REPLACE DIRECTORY DIR_BINARIOS AS '/home/aspicas/Lego/images';
/

CREATE OR REPLACE FUNCTION IMPORTAR_BINARIO(NOMBRE VARCHAR2)
RETURN BLOB IS
	R_BLOB BLOB;
	V_BFILE BFILE := BFILENAME('DIR_BINARIOS',NOMBRE);
BEGIN
	DBMS_LOB.CREATETEMPORARY(R_BLOB,true);
	DBMS_LOB.OPEN(V_BFILE,DBMS_LOB.LOB_READONLY);
	DBMS_LOB.LOADFROMFILE(R_BLOB,V_BFILE,DBMS_LOB.GETLENGTH(V_BFILE));
	DBMS_LOB.CLOSE(V_BFILE);
	RETURN R_BLOB;
END;
/

CREATE OR REPLACE FUNCTION CALCULAR_EDAD(D_FECHA IN DATE) RETURN NUMBER IS
N_RETORNO NUMBER := 0;
BEGIN
	SELECT TRUNC((SYSDATE - TO_DATE(D_FECHA,'dd/mm/rrrr'))/365,0) INTO N_RETORNO FROM DUAL;
	RETURN N_RETORNO;
END;
/


