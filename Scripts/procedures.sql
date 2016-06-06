CREATE OR REPLACE PROCEDURE EXIST (V_NOMBRE VARCHAR2) IS  
  V_BFILE BFILE := BFILENAME('DIR_BINARIOS',V_NOMBRE);  
BEGIN
  DBMS_LOB.FILEOPEN(V_BFILE, DBMS_LOB.FILE_READONLY);
  DBMS_LOB.FILECLOSE(V_BFILE);
  DBMS_OUTPUT.PUT_LINE('EL ARCHIVO EXISTE');  
  EXCEPTION WHEN OTHERS THEN    
    raise_application_error(-20100,'EL ARCHIVO NO EXISTE');
END;
/