CREATE OR REPLACE PROCEDURE INSERTAR_FABRICA (
IDF IN FABRICA.FA_ID%TYPE,
CIUDAD IN FABRICA.FA_FK_CIUDAD%TYPE,%TYPE,
NOMBRE IN FABRICA.FA_NOMBRE%TYPE,
CALLE IN VARCHAR2,
N_EDIF IN VARCHAR2,
ZIP IN NUMBER,
LOCAL IN VARCHAR2,
TELE IN TELEFONO
) IS
BEGIN
	INSERT INTO FABRICA VALUES (IDF,CIUDAD,NOMBRE,DIRECCION(CALLE,N_EDIF,ZIP,LOCAL,TELEFONOS_VA(TELE)));
END;
/
/*
CREATE OR REPLACE PROCEDURE INSERTAR_PEDIDO(
TIENDA  IN PEDIDO.PD_FK_TIENDA%TYPE,
FABRICA IN PEDIDO.PD_FK_FABRICA%TYPE,
ORDEN IN PEDIDO.PD_ORDEN%TYPE,
F_PEDIDO IN PEDIDO.PD_FEC_PEDIDO%TYPE,
F_OBJETIVO IN PEDIDO.PD_FEC_OBJETIVO%TYPE,
F_ENVIO IN PEDIDO.PD_FEC_ENVIO%TYPE,
F_COMP IN PEDIDO.PD_FECHA_COMPLETACION%TYPE
) IS
BEGIN
	INSERT INTO PEDIDO VALUES (TIENDA,FABRICA,ORDEN,F_PEDIDO,F_OBJETIVO,F_ENVIO,F_COMP);
END;
/
*/
CREATE OR REPLACE PROCEDURE INSERTAR_TIENDA(
IDT IN TIENDA.TI_ID%TYPE,
CIUDAD IN TIENDA.TI_FK_CIUDAD%TYPE,
HORARIO IN TIENDA.TI_HORARIO%TYPE,
FOTOS IN TIENDA.TI_FOTOS%TYPE,
DIRECCION IN TIENDA.TI_DIRECCION%TYPE
) IS
BEGIN
	INSERT INTO TIENDA VALUES(IDT,CIUDAD,HORARIO,FOTOS,DIRECCION);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_FACTURA_PEDIDO(
NUMERO IN FACTURA_PEDIDO.FP_NUMERO%TYPE,
ORDEN IN FACTURA_PEDIDO.FP_FK_ORDEN%TYPE,
FECHA IN FACTURA_PEDIDO.FP_FECHA%TYPE,
TOTAL IN FACTURA_PEDIDO.FP_TOTAL%TYPE
) IS
BEGIN
	INSERT INTO FACTURA_PEDIDO VALUES (NUMERO,ORDEN,FECHA,TOTAL);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_LINEA_PROD(
FABRICA IN LINEA_PROD.LP_FK_FABRICA%TYPE,
IDLP IN LINEA_PROD.LP_ID%TYPE,
DESCRIPCION IN LINEA_PROD.LP_DESCRIPCION%TYPE
) IS
BEGIN
	INSERT INTO LINEA_PROD VALUES(FABRICA,IDLP,DESCRIPCION);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_HISTORICO_PRODUCTO(
FABRICA IN HISTORICO_PRODUCTO.HP_FK_FABRICA%TYPE,
LINEAPROD IN HISTORICO_PRODUCTO.HP_FK_LINEAPROD%TYPE,
PRODUCTO IN HISTORICO_PRODUCTO.HP_FK_PRODUCTO%TYPE,
FECHAI IN HISTORICO_PRODUCTO.HP_FECHAI%TYPE,
FECHAF IN HISTORICO_PRODUCTO.HP_FECHAF%TYPE
) IS
BEGIN
	INSERT INTO HISTORICO_PRODUCTO VALUES(FABRICA,LINEAPROD,PRODUCTO,FECHAI,FECHAF);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCCION_LOTE(
ID_LOTE IN PRODUCCION_LOTE.PL_ID_LOTE%TYPE,
FEHA IN PRODUCCION_LOTE.PL_FEHA%TYPE,
CANTIDAD IN PRODUCCION_LOTE.PL_CANTIDAD%TYPE,
TIPO IN PRODUCCION_LOTE.PL_TIPO%TYPE,
FABRICA IN PRODUCCION_LOTE.PL_FK_HIST_FABRICA%TYPE,
LINEAPROD IN PRODUCCION_LOTE.PL_FK_HIST_LINEAPROD%TYPE,
PRODUCTO IN PRODUCCION_LOTE.PL_FK_HIST_PRODUCTO%TYPE,
FECHAI IN PRODUCCION_LOTE.PL_FK_HIST_FECHAI%TYPE
) IS
BEGIN
	INSERT INTO PRODUCCION_LOTE VALUES(ID_LOTE,FEHA,CANTIDAD,TIPO,FABRICA,LINEAPROD,PRODUCTO,FECHAI);
END;
/

CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO(
CODIGO IN PRODUCTO.PR_CODIGO%TYPE,
CLASIFICACION IN PRODUCTO.PR_FK_CLASIFICACION%TYPE,
NOMBRE IN PRODUCTO.PR_NOMBRE%TYPE,
DESCR IN PRODUCTO.PR_DESC%TYPE,
RGO_EDAD IN PRODUCTO.PR_RGO_EDAD%TYPE,
PRECIO_USD IN PRODUCTO.PR_PRECIO_USD%TYPE,
CANT_PIEZAS IN PRODUCTO.PR_CANT_PIEZAS%TYPE,
RESUMEN IN PRODUCTO.PR_RESUMEN%TYPE,
FOTOS IN PRODUCTO.PR_FOTOS%TYPE,
FEC_LANZAM IN PRODUCTO.PR_FEC_LANZAM%TYPE,
INSTRUCCIONES IN PRODUCTO.PR_INSTRUCCIONES%TYPE,
CATEGORIAS IN PRODUCTO.PR_CATEGORIAS%TYPE
) IS
BEGIN
	INSERT INTO PRODUCTO VALUES(CODIGO,CLASIFICACION,NOMBRE,DESCR,RGO_EDAD,PRECIO_USD,CANT_PIEZAS,RESUMEN,FOTOS,FEC_LANZAM,INSTRUCCIONES,CATEGORIAS);
END;
/


/*	FABRICA	*/
EXEC INSERTAR_FABRICA(1,19,'Blooming Bricks','Calle 5','234',24921,null,TELEFONO(1,812,5551598)));
EXEC INSERTAR_FABRICA(2,20,'NY LEGO Factory','Avenida Lincoln','65',33215,null,TELEFONO(1,914,5557459)));
EXEC INSERTAR_FABRICA(3,21,'The American Brick','Calle 69','115',23315,null,TELEFONO(1,863,5559553)));
EXEC INSERTAR_FABRICA(4,22,'LEGO Florida HQ','Gulfport','76',11256,null,TELEFONO(1,727,5559731)));
EXEC INSERTAR_FABRICA(5,23,'Winter Bricks','Avenida Park','50',84256,null,TELEFONO(1,223,5553498)));
EXEC INSERTAR_FABRICA(5,24,'Essen LEGO','Avenida 8','45',42526,null,TELEFONO(49,343,5552264)));
EXEC INSERTAR_FABRICA(7,25,'Das Bricken','Boulevard Adolf','12',85213,null,TELEFONO(49,853,7772154)));
EXEC INSERTAR_FABRICA(8,26,'Die LEGO Fabrik','Calle Frankfurt','34',5123,null,TELEFONO(49,112,7771246)));
EXEC INSERTAR_FABRICA(9,27,'LEGO United','Boulevard Victoria','96',7265,null,TELEFONO(44,38,8889713)));
EXEC INSERTAR_FABRICA(10,28,'Lennon-Starr Bricks','Abbey Road','69',2165,null,TELEFONO(44,83,2227436)));
EXEC INSERTAR_FABRICA(11,29,'Castle Bricks','Carretera 32','5',1265,null,TELEFONO(44,58,2222843)));
EXEC INSERTAR_FABRICA(12,30,'Maple & Lego Factory','Calle 40','477',1337,null,TELEFONO(1,712,4442596)));
EXEC INSERTAR_FABRICA(13,31,'LEGOh Canada!','Avenida Isabel II','129',64987,null,TELEFONO(1,713,4441672)));
EXEC INSERTAR_FABRICA(14,32,'The Red Leaf of LEGO','Ruta Standford','95',48679,null,TELEFONO(1,362,4449795)));
EXEC INSERTAR_FABRICA(15,33,'LEGO von Österreich','Calle 35','19',49264,null,TELEFONO(43,647,3336548)));
EXEC INSERTAR_FABRICA(16,34,'Les Briques de Bruxelles','Avenida Haren','91',8334,null,TELEFONO(32,637,3339985)));
EXEC INSERTAR_FABRICA(17,35,'Ole Bricks','Ruta 13','98',11687,null,TELEFONO(45,115,4448213)));
EXEC INSERTAR_FABRICA(18,36,'Le Usine de Briques','Avenida Bonaparte','821',93155,null,TELEFONO(33,567,3331597)));
EXEC INSERTAR_FABRICA(19,37,'LEGO fran IKEA','Calle Kjellberg','91',40523,null,TELEFONO(46,575,1112137)));


/*	TIENDA	*/
INSERT INTO TIENDA VALUES (1,19,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('21:30','hh24:mi')),HORARIO('DOMINGO',TO_DATE('11:00','hh24:mi'),TO_DATE('19:00','hh24:mi'))),NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (2,20,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('DOMINGO',TO_DATE('11:00','hh24:mi'),TO_DATE('18:00','hh24:mi'))),NULL,DIRECCION('WESTCHESTER AVE.','125',10601,'',TELEFONOS_VA(TELEFONO(1,914,2598282))));
INSERT INTO TIENDA VALUES (3,21,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('DOMINGO',TO_DATE('11:00','hh24:mi'),TO_DATE('18:00','hh24:mi'))),NULL,DIRECCION('NORTH MAYFAIR RD.','SPACE 0635',53226,'',TELEFONOS_VA(TELEFONO(1,414,7780280))));
INSERT INTO TIENDA VALUES (4,24,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('LIMBECKERSTRAßE','25',45127,'',TELEFONOS_VA(TELEFONO(49,201,2698927))));
INSERT INTO TIENDA VALUES (5,25,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('DOMINGO',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('TAUENTZIENSTRAßE','20',10789,'',TELEFONOS_VA(TELEFONO(49,30,2101622))));
INSERT INTO TIENDA VALUES (6,26,HORARIOS_NT(HORARIO('LUNES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MARTES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('10:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi')),HORARIO('SABADO',TO_DATE('10:00','hh24:mi'),TO_DATE('21:00','hh24:mi'))),NULL,DIRECCION('','MyZeil Einkaufszentrum',60313,'',TELEFONOS_VA(TELEFONO(49,69,2097769))));
INSERT INTO TIENDA VALUES (7,27,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MARTES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('MIERCOLES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('JUEVES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('VIERNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi')),HORARIO('SABADO',TO_DATE('09:00','hh24:mi'),TO_DATE('19:00','hh24:mi')),HORARIO('DOMINGO',TO_DATE('11:30','hh24:mi'),TO_DATE('17:30','hh24:mi'))),NULL,DIRECCION('Lloyd St.','Arndale Shopping Centre',55425,'M4 3AQ',TELEFONOS_VA(TELEFONO(44,161,8192272))));
INSERT INTO TIENDA VALUES (8,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (9,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (10,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (11,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (12,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (13,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (14,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (15,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (16,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (17,1,   ,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));


/*	PRODUCTO	*/
INSERT INTO PRODUCTO VALUES(5005117,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Minifigura despertador de Jay','Deja que la Minifigura Despertador de Jay de LEGO® NINJAGO™ te proteja mientras duermes, y despiertes listo para tus aventuras diarias. Mira la hora en la pantalla LCD fácil de leer, mueve los brazos, muñecas y piernas de la minifigura jumbo de Jay y presiona su cabeza para activar el silenciador y la luz de fondo. El regalo ideal para los fans de sets LEGO NINJAGO.',RANGOS_VA(RANGO(6,99)),29.99,1,RESUMEN(23,12,9,IDIOMAS_VA('INGLES','ESPAÑOL'),'Levántate para las batallas ninja con esta Minifigura Despertador de Jay que incluye una minifigura jumbo movible, pantalla LCD, y funciones de silenciar y luz de fondo.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_5005117_1.png'))),TO_DATE('19-MAY-16','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('NUEVOS','MINIFIGURAS'));
INSERT INTO PRODUCTO VALUES(70751,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Templo de Airjitzu','¡Disfruta de la experiencia de construcción LEGO® NINJAGO™ definitiva con el majestuoso Templo de Airjitzu y el poblado de alrededor! El asombroso templo posee numerosos detalles arquitectónicos. La elaborada estructura de las paredes de la herrería cercana y los suaves tejados en curva del mercado de contrabando pondrán también a prueba tus habilidades de construcción con LEGO. ¡Apaga entonces las luces de tu habitación para ver el teatro de sombras giratorio en el templo!

***Incluye 12 minifiguras con diferentes armas: Lloyd, Kai, Jay, Zane, Cole, Nya, Wu, Misako, Dareth, cartero, Jesper y Claire.
***Armas incluidas: katanas para Lloyd, Kai, Jay, Zane, Cole y Nya.
***¡Busca los cofres escondidos en el mercado de contrabando!
***¡Prepara un espectáculo para tus amigos con el teatro de sombras giratorio!
***Recrea tus escenas favoritas de la serie de televisión NINJAGO™: Maestros del Spinjitzu.',RANGOS_VA(RANGO(14,99)),199.99,2028,RESUMEN(42,52,35,IDIOMAS_VA('INGLES','ESPAÑOL','FRANCÉS'),'¡Construye el majestuoso Templo de Airjitzu! Cuenta con teatro de sombras giratorio con ladrillo luminoso, herrería y mercado de contrabando.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_70751_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_70751_2.png'))),TO_DATE('02-SEP-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('DIFICILES DE ENCONTRAR','EDIFICIOS','EXCLUSIVOS'));
INSERT INTO PRODUCTO VALUES(851345,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Tapete de juego','¡Pon en marcha las aventuras más emocionantes con el Tapete de juego LEGO® NINJAGO™! Este tapete de cartón plastificado impreso a doble cara cuenta con diferentes paisajes inspirados en el mundo de NINJAGO por cada lado. ¡Reúne tus sets LEGO NINJAGO favoritos y prepárate para escenificar asombrosas batallas!

***Tapete de juego de cartón plastificado impreso a doble cara con diferentes paisajes inspirados en el mundo de NINJAGO™ por cada lado.
***¡Planifica tu propia ruta a través de NINJAGO™!
***Combínalo con los sets LEGO® NINJAGO™ para disfrutar de aún más opciones de juego.',RANGOS_VA(RANGO(6,99)),7.48,1,RESUMEN(100,63,1,IDIOMAS_VA('INGLES','ESPAÑOL'),'¡Sumérgete en una aventura ninja con el Tapete de juego LEGO® NINJAGO™! Plastificado e impreso a doble cara, cuenta con asombrosos paisajes inspirados en el mundo de NINJAGO.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_851345_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_851345_2.png'))),TO_DATE('01-JUN-12','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('HOME'));
INSERT INTO PRODUCTO VALUES(70756,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Entrenamiento en el Dojo','Participa con Kai en un emocionante Enfrentamiento en el Dojo, como parte del Torneo de los Elementos. Demuestra tu velocidad y agilidad al esquivar al peligroso robot y sus espadas giratorias escalando la pared como un experto. Lucha contra Griffin Turner y Karlof mientras esquivas las demoledoras manos gigantes de Karlof y te apoderas de la Espada de Jade. Asegúrate de no caer por la trampilla a la prisión de fuego, ¡porque no podrás salir jamás! Incluye 4 minifiguras con armas: Kai, Sleven, Griffin Turner y Karlof.

***Armas incluidas: hoz de Kai, hoz de Sleven y bastón bo de Griffin Turner.
***Pon a prueba tu agilidad con el robot y sus espadas giratorias.
***Esquiva los dardos con punta envenenada.
***Sube por los escalones o la cadena para llegar a lo más alto del dojo.
***Esquiva las demoledoras manos de Karlof.
***¡No caigas por la trampilla en la prisión de fuego!
***¡Reclama la Espada de Jade y pasa a la próxima ronda del torneo!',RANGOS_VA(RANGO(6,14)),19.98,215,RESUMEN(13,23,10,IDIOMAS_VA('INGLES','ESPAÑOL','ALEMÁN'),'¡Lucha por la Espada de Jade en el Enfrentamiento en el Dojo, de LEGO® NINJAGO™! Cuenta con trampilla, prisión de fuego, dardos con punta envenenada, robot con espadas giratorias y 4 minifiguras.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_70756_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_70756_2.png'))),TO_DATE('01-JAN-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('EDIFICIOS'));
INSERT INTO PRODUCTO VALUES(70747,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Destructor de Roca','Han encerrado a Cole en las cuevas de la isla durante el Torneo de los Elementos. Colócalo en la cabina del Destructor de Roca, sujeta el mango retráctil para despegar y huye a toda velocidad. Cole necesitará usar todos sus poderes elementales para derrotar a Zugu y Sleven, que están armados y preparados para luchar. ¡Gira la rueda para disparar el poderoso cañón rápido automático NINJAGO™ de 8 misiles y haz pedazos su puesto de ataque Anacondrai! Incluye 3 minifiguras con diferentes armas: Cole, Zugu y Sleven.

***El Destructor de Roca cuenta con cañón rápido automático NINJAGO™ de 8 misiles, cabina abatible, mecanismo giratorio, alas ajustables, soportes para las armas de Cole y detalles creados con espadas ninja doradas.
***Armas incluidas: 2 espadas dentadas de Cole, espada Anacondrai de Zugu y daga de Sleven.
***¡Destruye el puesto de ataque Anacondrai con el cañón rápido automático NINJAGO™ de 8 misiles!',RANGOS_VA(RANGO(7,14)),29.99,236,RESUMEN(8,20,28,IDIOMAS_VA('INGLES','ESPAÑOL','ALEMÁN'),'¡Ayuda a Cole a escapar de su prisión en el Destructor de Roca, de LEGO® NINJAGO™! Cuenta con cañón rápido automático NINJAGO de 8 misiles y mango retráctil.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_70747_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_70747_2.png'))),TO_DATE('01-JAN-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(851352,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Llavero de Zane: ninja de titanio','¡Deja que el héroe ninja Zane te proteja dondequiera que vayas! Unido a una auténtica minifigura de Zane, el ninja de titanio, este útil llavero se engancha fácilmente a tus llaves o tu mochila.

***Cuenta con una auténtica minifigura de Zane, el ninja de titanio, unida a una resistente anilla con cadena metálica.
***Úsalo como llavero o como amuleto para tu mochila.
***La minifigura no se puede separar de la cadena metálica.
***Un fantástico regalo para fans de los sets de juego LEGO® NINJAGO™.',RANGOS_VA(RANGO(6,99)),5.99,1,RESUMEN(6,3,2,IDIOMAS_VA('INGLES','ESPAÑOL'),'¡Demuestra el estilo ninja con el Llavero de Zane: ninja de titanio, de LEGO® NINJAGO™! Cuenta con una auténtica minifigura unida a una resistente anilla con cadena metálica.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_851352_1.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('LLAVEROS'));
INSERT INTO PRODUCTO VALUES(70600,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Persecución en la moto ninja','Apunta al planeador del pirata del cielo con los cañones secretos de la moto de Kai. Esquiva las bombas del planeador y dispara con el cañón elemental del agua desde la asombrosa moto de Nya. Haz caer el planeador y despliega las espadas ninja doradas de la moto de Kai para atacar.

***Incluye 3 minifiguras con diferentes armas: Kai, Nya y Sqiffy.
***La moto de Kai cuenta con grandes ruedas de caucho, espadas ninja doradas que se despliegan y 2 cañones/propulsores secretos.
***La moto de Nya está armada con un cañón elemental del agua ajustable para disparar al pirata del cielo y cuenta con ruedas de caucho, alerones traseros ajustables y detalles creados con espadas ninja doradas.
***El planeador pirata cuenta con punto de fijación para la minifigura de Sqiffy, alas articuladas y función de lanzamiento de bombas; incluye también 2 bombas con llamas traslúcidas.
***Armas incluidas: espada traslúcida de Djinn en color gris con “Cole atrapado” y espada pirata de Sqiffy.',RANGOS_VA(RANGO(7,14)),19.99,231,RESUMEN(26,19,5,IDIOMAS_VA('INGLES','ESPAÑOL'),'Derriba el planeador de Sqiffy con la moto de Kai, equipada con ruedas de caucho y espadas ninja doradas que se despliegan, y la moto de Nya, armada con un cañón elemental del agua.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_70600_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_70600_2.png'))),TO_DATE('01-JAN-16','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(851342,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),'Set de construcción de ejércitos','Suma guerreros a tus ejércitos ninja y fantasma con el asombroso Set de construcción de ejércitos LEGO® NINJAGO™. ¡Elige entre las fantásticas armas y da comienzo a la batalla! Incluye 4 minifiguras con diferentes armas: Kai, Jay, Wooo y Howla.

***Incluye 4 minifiguras con diferentes armas: Kai, Jay, Wooo y Howla.
***¡Construye tus ejércitos ninja y fantasma!
***¡Elige tus armas y prepárate para la batalla!
***Combínalo con los sets LEGO® NINJAGO™ para disfrutar de aún más opciones de juego.',RANGOS_VA(RANGO(6,99)),14.99,37,RESUMEN(20,12,4,IDIOMAS_VA('INGLES','ALEMÁN','FRANCÉS','ESPAÑOL'),'¡Construye tus ejércitos ninja y fantasma con el Set de construcción de ejércitos LEGO® NINJAGO™! Incluye 4 minifiguras y numerosas armas.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_851342_1.png'))),TO_DATE('01-SEP-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('MINIFIGURAS'));
INSERT INTO PRODUCTO VALUES(75913,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'F14 T y Camión de la Escudería Ferrari','Conduce el camión de la escudería Ferrari, completamente equipado, y transporta al equipo y el F14 T hasta el circuito. Abre el techo de la cabina para colocar al conductor del camión frente al volante con un miembro del equipo junto a él. Separa el remolque y gira la palanca para desplegar las patas de apoyo. Despliega la compuerta trasera y activa la función de lanzamiento para bajar el F14 T por la rampa. ¡Participa entonces en emocionantes carreras compitiendo contra tus amigos y sus coches LEGO® Speed Champions!

***Incluye 6 minifiguras con diferentes accesorios: un piloto, un conductor del camión del equipo y 4 miembros del equipo mecánico. 
***Accesorios incluidos: 2 cascos, 3 gorras con auriculares, panel para contar las vueltas y señal de parada/salida.
***Prepárate para la carrera con el completo juego de herramientas y las pantallas informáticas.
***Activa la función de lanzamiento para lanzar al coche por la rampa.',RANGOS_VA(RANGO(8,14)),99.99,884,RESUMEN(12,8,41,IDIOMAS_VA('INGLES','FRANCÉS','ESPAÑOL'),'¡Conduce hasta el circuito con el F14 T y el Camión de la Escudería Ferrari, de LEGO® Speed Champions! Cuenta con función de lanzamiento, coche de carreras F14 T y otros muchos accesorios.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75913_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75913_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75908,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'458 Italia GT2','¡Alcanza la gloria en la versión LEGO® Speed Champions del rapidísimo 458 Italia GT2! Este vehículo para construir está preparado para enfrentarse a cualquier carrera y cuenta con todos los detalles que caracterizan al auténtico y aerodinámico modelo Ferrari. Coloca los fantásticos y exclusivos tapacubos y sienta al piloto al volante. ¡Celebra tus propias carreras LEGO® Speed Champions y compite contra tus amigos por el trofeo de plata!

***Incluye una minifigura de un piloto con diferentes accesorios.
***Cuenta con parabrisas desmontable, cabina del piloto, ruedas desmontables, exclusivos tapacubos y auténticos detalles inspirados en la marca Ferrari.
***El traje de competición del piloto cuenta con adornos inspirados en la marca Ferrari.
***Accesorios incluidos: un casco, una llave y un trofeo plateado.
***Comprueba las ruedas con la llave.
***¡Compite contralos coches LEGO® Speed Champions de tus amigos y hazte con el trofeo!',RANGOS_VA(RANGO(7,14)),14.99,153,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Gana el trofeo con el 458 Italia GT2 de LEGO® Speed Champions! Cuenta con exclusivos tapacubos y fantásticos detalles inspirados en la marca Ferrari, así como una minifigura de un piloto.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75913_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75913_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75876,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Puesto de reparación Porsche 919 Hybrid y 917K','De ti dependen las decisiones que tome el legendario equipo de Porsche en el avanzado taller. Usa el elevador y las herramientas para preparar el ultramoderno Porsche 919 Hybrid y el clásico 917K. Pisa el acelerador en la línea de salida y controla los dos coches desde las pantallas del carril de reparación. Si haces una parada técnica, cambia esas ruedas bien rápido y vuelve a la carrera. Durante más de 60 años, Porsche ha tenido una misión: fabricar el coche del futuro. Pero… ¿será el 919 Hybrid el primero en pasar junto a la bandera de cuadros y conseguir el trofeo?',RANGOS_VA(RANGO(8,14)),55.99,732,RESUMEN(4,14,5,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Prepárate para una carrera LEGO® Speed Champions entre el Porsche 919 Hybrid y el Porsche 917K! Cuenta con puesto de reparación, elevador, bomba de combustible, línea de salida y otros accesorios. 
'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75876_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75876_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75872,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Audi R18 e-tron quattro',' ¡Llena el depósito y compite por la victoria!

Esta fantástica versión LEGO® Speed Champions de un prototipo de Le Mans ha sido diseñada para correr día y noche. ¡Usa la llave inglesa y la bomba de combustible para poner a punto el Audi R18 e-tron quattro y deja atrás a tus rivales!',RANGOS_VA(RANGO(7,14)),14.99,166,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Hazte con la victoria a pura potencia con el Audi R18 e-tron quattro de LEGO® Speed Champions! Cuenta con tapacubos intercambiables, minifigura de un piloto, llave inglesa y bomba de combustible. 
'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75872_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75872_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75870,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Chevrolet Corvette Z06','¡Prepárate para correr por el desierto con este emblemático deportivo americano!

Cambia los tapacubos y pon a punto el motor con la llave inglesa. ¡Coloca al piloto en el fabuloso Chevrolet Corvette Z06 de LEGO® Speed Champions y pisa a fondo! ¡Practica en las curvas cerradas y usa después la cámara para imaginar que grabas la acción a toda velocidad!',RANGOS_VA(RANGO(7,14)),14.99,173,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Prepárate para la carrera con el Chevrolet Corvette Z06 de LEGO® Speed Champions! Cuenta con tapacubos intercambiables, una minifigura de un piloto, una cámara de televisión y llave inglesa. 
'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75870_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75870_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75871,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Ford Mustang GT','¡Bate todos los récords en el coche que mejor representa el sueño americano!

Prepara el potente Ford Mustang GT de LEGO® Speed Champions para una carrera por el desierto. Elige los tapacubos, instala el cronómetro y pisa a fondo. ¡Demuestra tus habilidades al volante y ábrete paso hacia la victoria a base de potencia!',RANGOS_VA(RANGO(7,14)),14.99,185,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Hazte con la victoria con el Ford Mustang GT de LEGO® Speed Champions! Cuenta con tapacubos intercambiables, una minifigura de un piloto, una llave inglesa y un cronómetro. '),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75871_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75871_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75899,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'LaFerrari','¡Haz realidad tus sueños de competición con el moderno LaFerrari!

¡Acelera y prepárate para ser la sensación en el moderno LaFerrari de LEGO® Speed Champions! Este vehículo para construir está preparado para enfrentarse a cualquier carrera y cuenta con todos los detalles que caracterizan al emblemático deportivo híbrido de Ferrari. Comprueba las ruedas desmontables con la llave y coloca los exclusivos tapacubos. ¡Siéntate entonces en el asiento del piloto, espera hasta que se iluminen las luces de salida y pisa el acelerador! Incluye una minifigura de un piloto con diferentes accesorios.',RANGOS_VA(RANGO(7,14)),14.99,164,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Pisa a fondo con elegancia en el moderno LaFerrari de LEGO® Speed Champions! Cuenta con exclusivos tapacubos, luces de salida y una minifigura de un piloto. '),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75899_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75899_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75910,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Porsche 918 Spyder','¡Pasa junto a la bandera de cuadros con el Porsche 918 Spyder!

¡Disfruta de un emocionante paseo en la versión LEGO® Speed Champions del Porsche 918 Spyder! Este vehículo para construir está preparado para enfrentarse a cualquier carrera y posee todos los detalles que caracterizan al asombroso deportivo híbrido de Porsche. Elige entre 2 tipos de tapacubos y usa la llave para hacer los últimos ajustes. Coloca entonces al piloto tras el volante y acelera. ¡Adelanta los coches LEGO® Speed Champions de tus amigos y sé el primero en pasar junto a la bandera de cuadros! Incluye una minifigura de un piloto con diferentes accesorios.',RANGOS_VA(RANGO(7,14)),14.99,151,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Pasa junto a la bandera de cuadros a toda velocidad con el Porsche 918 Spyder de LEGO® Speed Champions! Cuenta con 2 juegos de tapacubos y una minifigura de un piloto.'),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75910_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75910_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75909,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'McLaren P1™','¡Pon el velocímetro al límite con el McLaren P1™!

¡Supera todos los récords de velocidad en el potente McLaren P1™ de LEGO® Speed Champions! Este vehículo para construir está preparado para enfrentarse a cualquier carrera y posee los detalles que caracterizan al moderno supercoche híbrido de McLaren. Coloca los elegantes tapacubos y usa la llave para poner a punto el coche. Ponte el casco de piloto y prepárate para ganar la carrera. Esquiva los conos y asegúrate de no pisar el bordillo. ¡Pon a prueba tus habilidades participando en emocionantescarreras LEGO® Speed Champions contra tus amigos! Incluye una minifigura de un piloto con diferentes accesorios.',RANGOS_VA(RANGO(7,14)),14.99,168,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Conduce el asombroso McLaren P1™ de LEGO® Speed Champions! Cuenta con exclusivos tapacubos y detalles inspirados en la marca McLaren, así como una minifigura de un piloto, un bordillo y conos. '),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75909_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75909_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));
INSERT INTO PRODUCTO VALUES(75873,(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),'Audi R8 LMS ultra','¡Prepárate para un poco de acción de clase GT!

Reduce el circuito a cenizas con el Audi R8 LMS de LEGO® Speed Champions. Si empieza a llover, detente para cambiar las ruedas y vuelve a la carrera tan rápido como puedas. ¡Demuestra tus habilidades al volante y levanta el trofeo en el podio de la victoria!',RANGOS_VA(RANGO(7,14)),14.99,175,RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL',''),'¡Gana el trofeo con el Audi R8 LMS de LEGO® Speed Champions! Cuenta con parabrisas desmontable, tapacubos intercambiables, podio de la victoria y una minifigura de un piloto. '),IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75873_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75873_2.png'))),TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));

