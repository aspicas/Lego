--Poner ruta del dir. Scripts en Toaspicasols->Preferences->Database->Worksheet
alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
@"DROP\DROP Index.sql";
@"DROP\DROP Constraints CH Y UN.sql";
@"DROP\DROP Constraints FK.sql";
@"DROP\DROP SEQUENCE.sql";
@"DROP\DROP Type.sql";
@"DROP\DROP Table.sql";

@"CREATE\CREATE Type.sql";
@"CREATE\CREATE Table.sql";
@"ALTER\ALTER Constraints FK.sql";
@"CREATE\CREATE Index.sql";
@"CREATE\CREATE SEQUENCE.sql";

@"ALTER\ALTER Constraints CH Y UN.sql";


@"functions.sql";
@"procedures.sql";
@"NUEVA_VENTA.sql";
--CREATE OR REPLACE DIRECTORY DIR_BINARIOS AS 'C:\Users\Carlos Velasco\Desktop\Base\Lego\images';
@"TRIGGERS\TR_VALIDAR_PR_REL.sql";
/*@"TRIGGERS\trigger de direccion.sql";*/
@"TRIGGERS\trigger valida visitante.sql";
@"TRIGGERS\trigger valida_Arcexclusivo .sql";
@"TRIGGERS\Trigger_validar_producto.sql";
@"TRIGGERS\triggers_HORARIO_TIENDA.sql";
/*@"trigger maxima compra online .sql";*/

@"procedimientosyfunciones.sql";

@"INSERT\insert_pais.sql";
@"INSERT\insert_estadociudad.sql";
@"INSERTS_v2.sql";

@"Metricas\metricas.sql";
/*
@"INSERT\insert_clasificacion.sql";
@"INSERT\inserts Cliente padre.sql";
@"INSERT\insert_producto.sql";
@"INSERT\INSERTS FABRICA.sql";
@"INSERT\TIENDAS.sql";
@"INSERT\FECHAS_TOUR.sql";
@"INSERT\INSTALACION.sql";
@"INSERT\linea_prod.sql";*/