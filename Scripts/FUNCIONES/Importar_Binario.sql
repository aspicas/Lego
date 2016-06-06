--CREATE DIRECTORY DIR_BINARIOS AS 'C:\Users\Carlos Velasco\Desktop\Base\Lego\images';
--CREATE DIRECTORY DIR_BINARIOS AS 'C:\Users\Jessica Elberg\Documents\GitHub\Lego\images';
CREATE DIRECTORY DIR_BINARIOS AS '/home/aspicas/Lego/images';
--Cambiar a donde quieran guardar
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


/*

INSERT INTO CLASIFICACION(CL_ID,CL_NOMBRE,CL_DESCRIPCION,CL_LICENCIA,CL_TIPO,CL_IMAGENES) VALUES(
  SQ_CLASIFICACION_ID.NEXTVAL,
  'sucisdfa',
  'DESC',
  'N',
  'TEMA',
  IMAGENES_NT(
    IMAGEN('aa',IMPORTAR_BINARIO('ninjago.png')),
    IMAGEN('LOGO',IMPORTAR_BINARIO('LEGO_Ninjago.png'))
  )
);

SELECT c.cl_nombre "Clasificacion", im.im_nombre "Nombre de Imagen", im.im_imagen "Imagen" FROM clasificacion c, table(c.cl_imagenes) im;

*/