CREATE OR REPLACE PROCEDURE AGREGAR_DIR_CLIENTE (id_cli NUMBER, d_calle VARCHAR2, d_num_ed VARCHAR2, d_zip NUMBER, d_local VARCHAR2, d_c_int NUMBER, d_c_loc NUMBER, d_tel NUMBER, d_tel_tp VARCHAR) IS
	cnt NUMBER;
BEGIN
	SELECT COUNT(*) INTO cnt FROM CLIENTE_VISITANTE WHERE CV_ID = id_cli;
	IF cnt > 0 THEN
		UPDATE CLIENTE_VISITANTE SET CV_DIRECCION=DIRECCION(d_calle,d_num_ed,d_zip,d_local,TELEFONOS_VA(TELEFONO(d_c_int,d_c_loc,d_tel,d_tel_tp))) WHERE CV_ID = id_cli;
	ELSE
		RAISE_APPLICATION_ERROR(-20018,'El cliente no existe');
	END IF;
END;
/
set serveroutput on;
accept c_id prompt 'ID Cliente/Visitante:'
accept c_ca prompt 'Calle/Avenida:'
accept c_ed prompt 'Edificio:'
accept c_zp prompt 'Código Postal:'
accept c_lo prompt 'Local:'
accept c_tt prompt '(TLF) Tipo [LOCAL,MOVIL,FAX]:'
accept c_ci prompt '(TLF) Código Internacional:'
accept c_cd prompt '(TLF) Código de Área:'
accept c_tn prompt '(TLF) Número:'
exec	AGREGAR_DIR_CLIENTE(&c_id,'&c_ca','&c_ed',&c_zp,'&c_lo',&c_ci,&c_cd,&c_tn,'&c_tt');
