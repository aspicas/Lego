/*FABRICA*/
EXEC INSERTAR_FABRICA(19,'Blooming Bricks','Calle 5','234',24921,null,TELEFONO(1,812,5551598,'OFICINA'));
EXEC INSERTAR_FABRICA(20,'NY LEGO Factory','Avenida Lincoln','65',33215,null,TELEFONO(1,914,5557459,'OFICINA'));
EXEC INSERTAR_FABRICA(21,'The American Brick','Calle 69','115',23315,null,TELEFONO(1,863,5559553,'OFICINA'));
EXEC INSERTAR_FABRICA(22,'LEGO Florida HQ','Gulfport','76',11256,null,TELEFONO(1,727,5559731,'OFICINA'));
EXEC INSERTAR_FABRICA(23,'Winter Bricks','Avenida Park','50',84256,null,TELEFONO(1,223,5553498,'OFICINA'));
EXEC INSERTAR_FABRICA(24,'Essen LEGO','Avenida 8','45',42526,null,TELEFONO(49,343,5552264,'OFICINA'));
EXEC INSERTAR_FABRICA(25,'Das Bricken','Boulevard Adolf','12',85213,null,TELEFONO(49,853,7772154,'OFICINA'));
EXEC INSERTAR_FABRICA(26,'Die LEGO Fabrik','Calle Frankfurt','34',5123,null,TELEFONO(49,112,7771246,'OFICINA'));
EXEC INSERTAR_FABRICA(27,'LEGO United','Boulevard Victoria','96',7265,null,TELEFONO(44,38,8889713,'OFICINA'));
EXEC INSERTAR_FABRICA(28,'Lennon-Starr Bricks','Abbey Road','69',2165,null,TELEFONO(44,83,2227436,'OFICINA'));
EXEC INSERTAR_FABRICA(29,'Castle Bricks','Carretera 32','5',1265,null,TELEFONO(44,58,2222843,'OFICINA'));
EXEC INSERTAR_FABRICA(30,'Maple and Lego Factory','Calle 40','477',1337,null,TELEFONO(1,712,4442596,'OFICINA'));
EXEC INSERTAR_FABRICA(31,'LEGOh Canada!','Avenida Isabel II','129',64987,null,TELEFONO(1,713,4441672,'OFICINA'));
EXEC INSERTAR_FABRICA(32,'The Red Leaf of LEGO','Ruta Standford','95',48679,null,TELEFONO(1,362,4449795,'OFICINA'));
EXEC INSERTAR_FABRICA(33,'LEGO von Österreich','Calle 35','19',49264,null,TELEFONO(43,647,3336548,'OFICINA'));
EXEC INSERTAR_FABRICA(34,'Les Briques de Bruxelles','Avenida Haren','91',8334,null,TELEFONO(32,637,3339985,'OFICINA'));
EXEC INSERTAR_FABRICA(35,'Ole Bricks','Ruta 13','98',11687,null,TELEFONO(45,115,4448213,'OFICINA'));
EXEC INSERTAR_FABRICA(36,'Le Usine de Briques','Avenida Bonaparte','821',93155,null,TELEFONO(33,567,3331597,'OFICINA'));
EXEC INSERTAR_FABRICA(37,'LEGO fran IKEA','Calle Kjellberg','91',40523,null,TELEFONO(46,575,1112137,'OFICINA'));

/*INSTALACION*/
EXEC INSERTAR_INSTALACION('SAINT PETERSBURG','SERIOUS PLAY','IYD','1 DALI BLVD',NULL,33701,'LOCAL');
EXEC INSERTAR_INSTALACION('WINTER HAVEN','SERIOUS PLAY','PARQUE','1 LEGOLAND WAY',NULL,33884,'LOCAL');

--CLIENTE_VISITANTE
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  7,  6,'KYRA'		,NULL,'FOLEY'		,NULL,TO_DATE('02-Jul-69','DD-MON-RR'),'M','E','P',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 19,  9,'DOLAN'		,NULL,'BYERS'		,NULL,TO_DATE('05-Mar-52','DD-MON-RR'),'H','I','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  8,  3,'KELSIE'		,NULL,'ENGLAND'		,NULL,TO_DATE('20-Oct-79','DD-MON-RR'),'M','I','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 19,  7,'COLE'		,NULL,'LINDSEY'		,NULL,TO_DATE('25-Nov-55','DD-MON-RR'),'H','I','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  9,  5,'KASPER'		,NULL,'ROBERTSON'	,NULL,TO_DATE('12-Feb-71','DD-MON-RR'),'H','I','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 16,  2,'PATRICK'	,NULL,'PETERS'		,NULL,TO_DATE('18-Feb-76','DD-MON-RR'),'H','E','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 10,  5,'VIOLET'		,NULL,'CAREY'		,NULL,TO_DATE('27-Oct-81','DD-MON-RR'),'M','I','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 12,  6,'RAYMOND'	,NULL,'ZIMMERMAN'	,NULL,TO_DATE('28-Apr-54','DD-MON-RR'),'H','A','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 11,  1,'NAYDA'		,NULL,'GRANT'		,NULL,TO_DATE('08-May-84','DD-MON-RR'),'M','I','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  2,  2,'GRADY'		,NULL,'HESTER'		,NULL,TO_DATE('02-Jul-78','DD-MON-RR'),'M','E','O',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 11,  8,'PATIENCE'	,NULL,'LEVINE'		,NULL,TO_DATE('19-Feb-80','DD-MON-RR'),'M','E','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 20,  5,'GRACE'		,NULL,'FITZPATRICK'	,NULL,TO_DATE('11-Mar-70','DD-MON-RR'),'M','E','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 10,  8,'APRIL'		,NULL,'HAMPTON'		,NULL,TO_DATE('01-Apr-71','DD-MON-RR'),'M','E','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 11,  8,'KARINA'		,NULL,'LINDSEY'		,NULL,TO_DATE('23-Apr-69','DD-MON-RR'),'M','E','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  3,  7,'FRANCIS'	,NULL,'MCGEE'		,NULL,TO_DATE('20-Feb-89','DD-MON-RR'),'H','I','O',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  1,  2,'CHARITY'	,NULL,'PAGE'		,NULL,TO_DATE('05-Dec-73','DD-MON-RR'),'M','N','P',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  2,  7,'YARDLEY'	,NULL,'HENDERSON'	,NULL,TO_DATE('28-Mar-77','DD-MON-RR'),'M','E','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  6,  1,'AKEEM'		,NULL,'SHORT'		,NULL,TO_DATE('24-Jul-84','DD-MON-RR'),'M','N','O',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  9,  1,'FAITH'		,NULL,'CASEY'		,NULL,TO_DATE('08-May-67','DD-MON-RR'),'M','I','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  2,  7,'KAY'		,NULL,'PACE'		,NULL,TO_DATE('22-Mar-81','DD-MON-RR'),'H','E','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 17,  1,'RASHAD'		,NULL,'FRANCIS'		,NULL,TO_DATE('08-Oct-77','DD-MON-RR'),'H','N','O',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  9,  8,'COOPER'		,NULL,'DUKE'		,NULL,TO_DATE('13-Jan-69','DD-MON-RR'),'H','I','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  4,  3,'BORIS'		,NULL,'RICHARDSON'	,NULL,TO_DATE('02-Jun-83','DD-MON-RR'),'H','E','O',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 12,  5,'VINCENT'	,NULL,'ELLISON'		,NULL,TO_DATE('13-Jan-58','DD-MON-RR'),'H','A','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  1,  4,'UPTON'		,NULL,'WATKINS'		,NULL,TO_DATE('02-Jul-56','DD-MON-RR'),'H','E','P',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 11,  6,'KATELYN'	,NULL,'ANDREWS'		,NULL,TO_DATE('24-Mar-51','DD-MON-RR'),'M','I','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 19,  5,'JOSEPHINE'	,NULL,'GLENN'		,NULL,TO_DATE('16-Feb-61','DD-MON-RR'),'M','A','D',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL, 15,  9,'BERNARD'	,NULL,'JONES'		,NULL,TO_DATE('22-Jun-76','DD-MON-RR'),'H','A','F',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  6,  7,'JOLIE'		,NULL,'NEWMAN'		,NULL,TO_DATE('14-Oct-80','DD-MON-RR'),'M','A','A',NULL);
INSERT INTO CLIENTE_VISITANTE VALUES (SQ_CLIENTE_VISITANTE_ID.NEXTVAL,NULL,  2,  1,'HAYFA'		,NULL,'LUCAS'		,NULL,TO_DATE('18-Sep-52','DD-MON-RR'),'H','I','P',NULL);

/*------	TIENDA		------*/
INSERT INTO TIENDA VALUES (1,19,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949,'OFICINA'))));
INSERT INTO TIENDA VALUES (2,20,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('WESTCHESTER AVE.','125',10601,'',TELEFONOS_VA(TELEFONO(1,914,2598282,'OFICINA'))));
INSERT INTO TIENDA VALUES (3,21,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('NORTH MAYFAIR RD.','SPACE 0635',53226,'',TELEFONOS_VA(TELEFONO(1,414,7780280,'OFICINA'))));
INSERT INTO TIENDA VALUES (4,24,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('LIMBECKERSTRAßE','25',45127,'',TELEFONOS_VA(TELEFONO(49,201,2698927,'OFICINA'))));
INSERT INTO TIENDA VALUES (5,25,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('TAUENTZIENSTRAßE','20',10789,'',TELEFONOS_VA(TELEFONO(49,30,2101622,'OFICINA'))));
INSERT INTO TIENDA VALUES (6,26,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('STIFTSTRAßE','MyZeil Einkaufszentrum',60313,'',TELEFONOS_VA(TELEFONO(49,69,2097769,'OFICINA'))));
INSERT INTO TIENDA VALUES (7,27,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Lloyd St.','Arndale Shopping Centre',55425,'M4 3AQ',TELEFONOS_VA(TELEFONO(44,161,8192272,'OFICINA'))));
INSERT INTO TIENDA VALUES (8,28,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Hanover St.','Liverpool ONE Shopping Centre',55426,'L1 8BJ',TELEFONOS_VA(TELEFONO(44,151,7086017,'OFICINA'))));
INSERT INTO TIENDA VALUES (9,29,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Metrocentre','Unit 73',55427,'NE11 9YG',TELEFONOS_VA(TELEFONO(44,191,4609049,'OFICINA'))));
INSERT INTO TIENDA VALUES (10,30,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('PORTAGE AVE.','1485',55428,'R3G 0W4',TELEFONOS_VA(TELEFONO(1,204,7741801,'OFICINA'))));
INSERT INTO TIENDA VALUES (11,31,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Sherway Gardens Rd.','25',55429,'#1066',TELEFONOS_VA(TELEFONO(1,416,6952433,'OFICINA'))));
INSERT INTO TIENDA VALUES (12,32,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('111 ST NW','5015',55430,'Space #424',TELEFONOS_VA(TELEFONO(1,780,4374567,'OFICINA'))));
INSERT INTO TIENDA VALUES (13,33,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('SCS-Straße','',2334,'Unit G103',TELEFONOS_VA()));
INSERT INTO TIENDA VALUES (14,34,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Turnhoutsebaan','5',2110,'Space 526',TELEFONOS_VA(TELEFONO(32,03,3537831,'OFICINA'))));
INSERT INTO TIENDA VALUES (15,35,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('VIMMELSKAFTET','',1161,'37',TELEFONOS_VA(TELEFONO(45,521,59157,'OFICINA'))));
INSERT INTO TIENDA VALUES (16,36,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Avenue Paul Séramy','DisneyLand Paris',77700,'',TELEFONOS_VA(TELEFONO(33,161,103319,'OFICINA'))));
INSERT INTO TIENDA VALUES (17,37,HORARIOS_NT(HORARIO('LUNES',TO_DATE('09:00','hh24:mi'),TO_DATE('20:00','hh24:mi'))),NULL,DIRECCION('Evenemangsgatan','169',16956,'56',TELEFONOS_VA(TELEFONO(46,827,7735,'OFICINA'))));

/*------	LINEA_PROD		------*/
INSERT INTO LINEA_PROD VALUES (1,1,'F1-LP 1');
INSERT INTO LINEA_PROD VALUES (1,2,'F1-LP 2');
INSERT INTO LINEA_PROD VALUES (2,1,'F2-LP 1');
INSERT INTO LINEA_PROD VALUES (2,2,'F2-LP 2');
INSERT INTO LINEA_PROD VALUES (3,1,'F3-LP 1');
INSERT INTO LINEA_PROD VALUES (3,2,'F3-LP 2');
INSERT INTO LINEA_PROD VALUES (4,1,'F4-LP 1');
INSERT INTO LINEA_PROD VALUES (4,2,'F4-LP 2');
INSERT INTO LINEA_PROD VALUES (5,1,'F5-LP 1');
INSERT INTO LINEA_PROD VALUES (5,2,'F5-LP 2');
INSERT INTO LINEA_PROD VALUES (6,1,'F6-LP 1');
INSERT INTO LINEA_PROD VALUES (6,2,'F6-LP 2');
INSERT INTO LINEA_PROD VALUES (7,1,'F7-LP 1');
INSERT INTO LINEA_PROD VALUES (7,2,'F7-LP 2');
INSERT INTO LINEA_PROD VALUES (8,1,'F8-LP 1');
INSERT INTO LINEA_PROD VALUES (8,2,'F8-LP 2');
INSERT INTO LINEA_PROD VALUES (9,1,'F9-LP 1');
INSERT INTO LINEA_PROD VALUES (9,2,'F9-LP 2');
INSERT INTO LINEA_PROD VALUES (10,1,'F10-LP 1');
INSERT INTO LINEA_PROD VALUES (10,2,'F10-LP 2');
INSERT INTO LINEA_PROD VALUES (11,1,'F11-LP 1');
INSERT INTO LINEA_PROD VALUES (11,2,'F11-LP 2');
INSERT INTO LINEA_PROD VALUES (12,1,'F12-LP 1');
INSERT INTO LINEA_PROD VALUES (12,2,'F12-LP 2');
INSERT INTO LINEA_PROD VALUES (13,1,'F13-LP 1');
INSERT INTO LINEA_PROD VALUES (13,2,'F13-LP 2');
INSERT INTO LINEA_PROD VALUES (14,1,'F14-LP 1');
INSERT INTO LINEA_PROD VALUES (14,2,'F14-LP 2');
INSERT INTO LINEA_PROD VALUES (15,1,'F15-LP 1');
INSERT INTO LINEA_PROD VALUES (15,2,'F15-LP 2');
INSERT INTO LINEA_PROD VALUES (16,1,'F16-LP 1');
INSERT INTO LINEA_PROD VALUES (16,2,'F16-LP 2');
INSERT INTO LINEA_PROD VALUES (17,1,'F17-LP 1');
INSERT INTO LINEA_PROD VALUES (17,2,'F17-LP 2');
INSERT INTO LINEA_PROD VALUES (18,1,'F18-LP 1');
INSERT INTO LINEA_PROD VALUES (18,2,'F18-LP 2');
INSERT INTO LINEA_PROD VALUES (19,1,'F19-LP 1');
INSERT INTO LINEA_PROD VALUES (19,2,'F19-LP 2');

--CLASIFICACION
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'SPEED CHAMPIONS','JUEGA CON EL NUEVO SET DE CARRERA','N','TEMA',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'STAR WARS','JUEGA CON EL NUEVO SET DE STAR WARS INSPIRADOS EL LA SAGA','S','TEMA',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'THE CLONE WARS','INSPIRADA EN LAS PELICULAS DE STAR WARS','S','SUBTEMA',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'REBELS','INSPIRADA EN LAS PELICULAS DE STAR WARS','S','SUBTEMA',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'ANGRY BIRDS','INSPIRADA EN EL FAMOSO JUEGO QUE HA ARRAZADO GOOGLE PLAY','S','TEMA',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'NINJAGO','MAESTROS DEL SPINJITZU','S','SERIE',NULL);
insert into clasificacion values (SQ_CLASIFICACION_ID.NEXTVAL,'SKY SHARK','MAESTROS DEL SPINJITZU','S','SUBTEMA',NULL);

--CLAS_CLAS
INSERT INTO CLAS_CLAS VALUES ((SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'STAR WARS'),(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'THE CLONE WARS'));
INSERT INTO CLAS_CLAS VALUES ((SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'STAR WARS'),(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'REBELS'));
INSERT INTO CLAS_CLAS VALUES ((SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'NINJAGO'),(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SKY SHARK'));

/*PRODUCTO*/
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

INSERT INTO PRODUCTO VALUES(75876,
(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),
'Puesto de reparación Porsche 919 Hybrid y 917K',
'De ti dependen las decisiones que tome el legendario equipo de Porsche en el avanzado taller. Usa el elevador y las herramientas para preparar el ultramoderno Porsche 919 Hybrid y el clásico 917K. Pisa el acelerador en la línea de salida y controla los dos coches desde las pantallas del carril de reparación. Si haces una parada técnica, cambia esas ruedas bien rápido y vuelve a la carrera. Durante más de 60 años, Porsche ha tenido una misión: fabricar el coche del futuro. Pero… ¿será el 919 Hybrid el primero en pasar junto a la bandera de cuadros y conseguir el trofeo?',
RANGOS_VA(RANGO(8,14)),
55.99,
732,
RESUMEN(4,14,5,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Prepárate para una carrera LEGO® Speed Champions entre el Porsche 919 Hybrid y el Porsche 917K! Cuenta con puesto de reparación, elevador, bomba de combustible, línea de salida y otros accesorios.'),
IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75876_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75876_2.png'))),
TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));

INSERT INTO PRODUCTO VALUES(75872,
(SELECT CL_ID FROM CLASIFICACION WHERE CL_NOMBRE = 'SPEED CHAMPIONS'),
'Audi R18 e-tron quattro',
'¡Llena el depósito y compite por la victoria!Esta fantástica versión LEGO® Speed Champions de un prototipo de Le Mans ha sido diseñada para correr día y noche. ¡Usa la llave inglesa y la bomba de combustible para poner a punto el Audi R18 e-tron quattro y deja atrás a tus rivales!',
RANGOS_VA(RANGO(7,14)),
14.99,
166,
RESUMEN(4,5,14,IDIOMAS_VA('INGLES','ESPAÑOL','INGLES'),'¡Hazte con la victoria a pura potencia con el Audi R18 e-tron quattro de LEGO® Speed Champions! Cuenta con tapacubos intercambiables, minifigura de un piloto, llave inglesa y bomba de combustible.'),
IMAGENES_NT(IMAGEN('1',IMPORTAR_BINARIO('PROD_75872_1.png')),IMAGEN('2',IMPORTAR_BINARIO('PROD_75872_2.png'))),
TO_DATE('01-MAR-15','DD-MON-RR'),EMPTY_BLOB(),CATEGORIAS_VA('VEHÍCULOS'));

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


/*------	HISTORICO_PRODUCTO		------*/
insert into HISTORICO_PRODUCTO values (1, 1,5005117,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,70751,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,851345,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,70756,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,70747,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,851352,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,70600,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1,851342,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75913,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75908,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75876,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75871,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75899,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75910,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75909,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,75873,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,5005117,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,70751,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,851345,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,70756,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,70747,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,851352,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,70600,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1,851342,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75913,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75908,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75876,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75870,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75871,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75899,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75910,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75909,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,5005117,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,70751,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,851345,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,70756,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,70747,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,851352,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,70600,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1,851342,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75913,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75876,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75872,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75899,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75910,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75909,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,5005117,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,70751,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,851345,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,70756,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,70747,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,851352,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,70600,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1,851342,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75913,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75872,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75870,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75899,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75909,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,5005117,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,70751,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,851345,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,70756,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,70747,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,851352,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,70600,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1,851342,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75913,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75908,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75876,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75872,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75871,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75899,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75910,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75909,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,75873,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,5005117,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,70751,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,851345,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,70756,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,70747,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,851352,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,70600,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1,851342,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75913,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75876,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75872,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75870,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75871,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75899,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75910,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75909,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,75873,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,5005117,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,70751,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,851345,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,70756,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,70747,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,851352,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,70600,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1,851342,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75913,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75876,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75872,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75870,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75871,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75899,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75910,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75909,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,75873,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,5005117,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,70751,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,851345,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,70756,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,70747,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,851352,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,70600,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1,851342,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75913,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75908,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75876,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75872,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75871,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75910,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75909,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,75873,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,5005117,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,70751,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,851345,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,70756,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,70747,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,851352,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,70600,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1,851342,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75913,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75876,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75872,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75870,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75871,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75899,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75910,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75909,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,75873,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,5005117,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,70751,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,851345,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,70756,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,70747,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,851352,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,70600,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1,851342,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75913,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75908,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75876,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75872,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75870,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75871,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75899,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75910,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75909,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,75873,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,5005117,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,70751,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,851345,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,70756,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,70747,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,851352,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,70600,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1,851342,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75913,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75908,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75876,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75872,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75870,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75899,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75910,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75909,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,75873,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,5005117,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,70751,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,851345,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,70756,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,70747,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,851352,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,70600,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1,851342,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75913,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75908,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75870,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75871,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75899,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75910,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75909,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,5005117,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,70751,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,851345,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,70756,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,70747,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,851352,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,70600,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1,851342,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75913,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75908,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75876,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75872,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75870,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75871,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75899,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75910,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75909,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,75873,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,5005117,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,70751,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,851345,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,70756,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,70747,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,851352,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,70600,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1,851342,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75913,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75908,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75876,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75870,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75871,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75899,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75910,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75909,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,75873,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,5005117,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,70751,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,851345,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,70756,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,70747,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,851352,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,70600,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1,851342,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75913,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75908,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75876,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75872,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75871,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75899,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75910,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75909,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,5005117,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,70751,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,851345,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,70756,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,70747,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,851352,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,70600,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1,851342,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75913,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75908,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75876,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75872,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75870,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75871,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75910,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,75873,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,5005117,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,70751,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,851345,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,70756,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,70747,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,851352,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,70600,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1,851342,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75913,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75908,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75871,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75899,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75910,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,5005117,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,70751,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,851345,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,70756,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,70747,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,851352,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,70600,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1,851342,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75913,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75908,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75876,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75872,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75871,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75910,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,75873,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,5005117,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,70751,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,851345,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,70756,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,70747,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,851352,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,70600,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1,851342,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75913,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75908,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75872,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75870,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75871,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75899,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,75873,TO_DATE('15/05/2013','dd/mm/rrrr'), null);

--DISP_PROD 
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Minifigura despertador de Jay'),8);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Minifigura despertador de Jay'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Minifigura despertador de Jay'),7);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Minifigura despertador de Jay'),7);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Minifigura despertador de Jay'),3);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),4);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),6);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'BELGIUM'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),4);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Destructor de Roca'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Tapete de juego'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Entrenamiento en el Dojo'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Destructor de Roca'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Destructor de Roca'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Destructor de Roca'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Llavero de Zane: ninja de titanio'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'DENMARK'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Llavero de Zane: ninja de titanio'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Llavero de Zane: ninja de titanio'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Llavero de Zane: ninja de titanio'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Persecución en la moto ninja'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Set de construcción de ejércitos'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Set de construcción de ejércitos'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Set de construcción de ejércitos'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Set de construcción de ejércitos'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Set de construcción de ejércitos'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='458 Italia GT2'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='458 Italia GT2'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'BELGIUM'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='458 Italia GT2'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'DENMARK'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='LaFerrari'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='LaFerrari'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='LaFerrari'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R18 e-tron quattro'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R18 e-tron quattro'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R18 e-tron quattro'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R18 e-tron quattro'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Chevrolet Corvette Z06'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Chevrolet Corvette Z06'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Ford Mustang GT'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'BELGIUM'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Ford Mustang GT'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'DENMARK'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Ford Mustang GT'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'DENMARK'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Porsche 918 Spyder'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'FRANCE'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Porsche 918 Spyder'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'SWEDEN'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Porsche 918 Spyder'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Porsche 918 Spyder'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'UNITED STATES'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R8 LMS ultra'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'GERMANY'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R8 LMS ultra'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'ENGLAND'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R8 LMS ultra'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'CANADA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R8 LMS ultra'),5);
INSERT INTO DISP_PROD VALUES ((SELECT PA_ID FROM PAIS WHERE PA_NOMBRE = 'AUSTRIA'),
(SELECT PR_CODIGO FROM PRODUCTO WHERE PR_NOMBRE ='Audi R8 LMS ultra'),5);

/*FACTURA_TIENDA*/
exec INSERTAR_FACTURA_TIENDA(1,1,TO_DATE('04/01/2016','dd/mm/rrrr'),100);
exec INSERTAR_FACTURA_TIENDA(2,2,TO_DATE('11/02/2016','dd/mm/rrrr'),200);
exec INSERTAR_FACTURA_TIENDA(3,3,TO_DATE('25/03/2016','dd/mm/rrrr'),300);
exec INSERTAR_FACTURA_TIENDA(4,4,TO_DATE('05/01/2015','dd/mm/rrrr'),400);
exec INSERTAR_FACTURA_TIENDA(5,5,TO_DATE('12/02/2015','dd/mm/rrrr'),500);
exec INSERTAR_FACTURA_TIENDA(6,6,TO_DATE('26/03/2015','dd/mm/rrrr'),100);
exec INSERTAR_FACTURA_TIENDA(7,7,TO_DATE('06/01/2014','dd/mm/rrrr'),200);
exec INSERTAR_FACTURA_TIENDA(8,8,TO_DATE('13/02/2014','dd/mm/rrrr'),700);
exec INSERTAR_FACTURA_TIENDA(9,9,TO_DATE('27/03/2014','dd/mm/rrrr'),500);
exec INSERTAR_FACTURA_TIENDA(10,10,TO_DATE('13/08/2013','dd/mm/rrrr'),200);

--FACTURA ONLINE
INSERT INTO FACTURA_ONLINE VALUES (SQ_FACTURA_ONLINE_ID.NEXTVAL,(select cv_id from cliente_visitante where rownum = 1)+1,TO_DATE('13-01-2013','DD-MM-RRRR'),23.4);
INSERT INTO FACTURA_ONLINE VALUES (SQ_FACTURA_ONLINE_ID.NEXTVAL,(select cv_id from cliente_visitante where rownum = 1)+2,TO_DATE('16-01-2014','DD-MM-RRRR'),13.4);
INSERT INTO FACTURA_ONLINE VALUES (SQ_FACTURA_ONLINE_ID.NEXTVAL,(select cv_id from cliente_visitante where rownum = 1)+3,TO_DATE('20-01-2014','DD-MM-RRRR'),26.4);
INSERT INTO FACTURA_ONLINE VALUES (SQ_FACTURA_ONLINE_ID.NEXTVAL,(select cv_id from cliente_visitante where rownum = 1)+4,TO_DATE('29-01-2015','DD-MM-RRRR'),23.4);
INSERT INTO FACTURA_ONLINE VALUES (SQ_FACTURA_ONLINE_ID.NEXTVAL,(select cv_id from cliente_visitante where rownum = 1)+5,TO_DATE('09-01-2015','DD-MM-RRRR'),43.4);

/*VALORAR_FACTIENDA*/
EXEC VALORAR_TIENDA(1,TO_DATE('18/01/2016','dd/mm/rrrr'),1,5,'F',NULL,1);
EXEC VALORAR_TIENDA(2,TO_DATE('25/02/2016','dd/mm/rrrr'),2,1,'I','JUEGO NORMAL',2);
EXEC VALORAR_TIENDA(3,TO_DATE('08/04/2016','dd/mm/rrrr'),3,2,'D','ALGO ABURRIDO',3);
EXEC VALORAR_TIENDA(4,TO_DATE('19/01/2015','dd/mm/rrrr'),4,3,'F',NULL,4);
EXEC VALORAR_TIENDA(5,TO_DATE('26/02/2015','dd/mm/rrrr'),5,4,'I','MUY ENTRETENIDO',5);
EXEC VALORAR_TIENDA(6,TO_DATE('09/04/2015','dd/mm/rrrr'),1,5,'D','MUY BUENA CALIDAD AUNQUE ALGO DIFICIL',6);
EXEC VALORAR_TIENDA(7,TO_DATE('20/01/2014','dd/mm/rrrr'),2,1,'F',NULL,7);
EXEC VALORAR_TIENDA(8,TO_DATE('27/02/2014','dd/mm/rrrr'),3,2,'I','ES BUENO',8);
EXEC VALORAR_TIENDA(9,TO_DATE('10/04/2014','dd/mm/rrrr'),4,3,'D','ES FACIL',9);
EXEC VALORAR_TIENDA(10,TO_DATE('27/08/2013','dd/mm/rrrr'),5,4,'F',NULL,10);

/*VALORAR_FACONLINE*/
EXEC VALORAR_ONLINE(1,TO_DATE('27-01-1998','dd/mm/rrrr'),1,5,'F','ES FACIL DE USAR',2);
EXEC VALORAR_ONLINE(2,TO_DATE('30-01-1998','dd/mm/rrrr'),2,4,'I','ES DE BUENA CALIDAD',4);
EXEC VALORAR_ONLINE(3,TO_DATE('03-02-1998','dd/mm/rrrr'),3,3,'D','ES UN RETO',6);
EXEC VALORAR_ONLINE(4,TO_DATE('12-02-1998','dd/mm/rrrr'),4,2,'F','PUEDE MEJORARSE LA DINAMICA',8);
EXEC VALORAR_ONLINE(5,TO_DATE('23-01-1998','dd/mm/rrrr'),5,1,'I','NO ES DE BUENA CALIDAD',10);

/*------	PRODUCCION_LOTE		------*/
insert into PRODUCCION_LOTE values (1, TO_DATE('11/06/2013','dd/mm/rrrr'), 750, 'TIENDA', 1, 1,5005117, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (2, TO_DATE('09/06/2013','dd/mm/rrrr'), 966, 'TIENDA', 1, 1,70751, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (3, TO_DATE('22/06/2013','dd/mm/rrrr'), 796, 'TIENDA', 1, 1,851345, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (4, TO_DATE('29/06/2013','dd/mm/rrrr'), 732, 'TIENDA', 1, 1,70756, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (5, TO_DATE('30/06/2013','dd/mm/rrrr'), 730, 'TIENDA', 1, 1,70747, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (6, TO_DATE('27/06/2013','dd/mm/rrrr'), 795, 'TIENDA', 1, 1,851352, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (7, TO_DATE('25/06/2013','dd/mm/rrrr'), 772, 'TIENDA', 1, 1,70600, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (8, TO_DATE('25/06/2013','dd/mm/rrrr'), 944, 'TIENDA', 1, 1,851342, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (9, TO_DATE('18/06/2013','dd/mm/rrrr'), 926, 'TIENDA', 1, 2,75913, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (10, TO_DATE('12/06/2013','dd/mm/rrrr'), 874, 'TIENDA', 1,  2,75908,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (11, TO_DATE('05/06/2013','dd/mm/rrrr'), 983, 'TIENDA', 1,  2,75876,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (12, TO_DATE('26/06/2013','dd/mm/rrrr'), 842, 'TIENDA', 1,  2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (13, TO_DATE('03/06/2013','dd/mm/rrrr'), 611, 'TIENDA', 1,  2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (14, TO_DATE('04/06/2013','dd/mm/rrrr'), 632, 'TIENDA', 1,  2,75871,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (15, TO_DATE('10/06/2013','dd/mm/rrrr'), 595, 'TIENDA', 1,  2,75899,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (16, TO_DATE('10/06/2013','dd/mm/rrrr'), 770, 'TIENDA', 1,  2,75910,TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (17, TO_DATE('11/06/2013','dd/mm/rrrr'), 995, 'TIENDA', 1,  2,75909,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (18, TO_DATE('27/06/2013','dd/mm/rrrr'), 945, 'TIENDA', 1,  2,75873,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (19, TO_DATE('19/06/2013','dd/mm/rrrr'), 857, 'TIENDA', 2, 1,5005117, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (20, TO_DATE('19/06/2013','dd/mm/rrrr'), 514, 'TIENDA', 2, 1,70751, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (21, TO_DATE('08/06/2013','dd/mm/rrrr'), 887, 'TIENDA', 2, 1,851345, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (22, TO_DATE('30/06/2013','dd/mm/rrrr'), 630, 'TIENDA', 2, 1,70756, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (23, TO_DATE('09/06/2013','dd/mm/rrrr'), 750, 'TIENDA', 2, 1,70747, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (24, TO_DATE('14/06/2013','dd/mm/rrrr'), 684, 'TIENDA', 2, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (25, TO_DATE('03/06/2013','dd/mm/rrrr'), 572, 'TIENDA', 2, 1,70600, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (26, TO_DATE('24/06/2013','dd/mm/rrrr'), 958, 'TIENDA', 2, 1,851342, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (27, TO_DATE('29/06/2013','dd/mm/rrrr'), 689, 'TIENDA', 2, 2,75913, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (28, TO_DATE('07/06/2013','dd/mm/rrrr'), 649, 'TIENDA', 2,  2,75908,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (29, TO_DATE('02/06/2013','dd/mm/rrrr'), 549, 'TIENDA', 2,  2,75876,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (30, TO_DATE('04/06/2013','dd/mm/rrrr'), 634, 'TIENDA', 2,  2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (31, TO_DATE('02/06/2013','dd/mm/rrrr'), 857, 'TIENDA', 2,  2,75870,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (32, TO_DATE('22/06/2013','dd/mm/rrrr'), 719, 'TIENDA', 2,  2,75871,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (33, TO_DATE('16/06/2013','dd/mm/rrrr'), 525, 'TIENDA', 2,  2,75899,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (34, TO_DATE('20/06/2013','dd/mm/rrrr'), 892, 'TIENDA', 2,  2,75910,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (35, TO_DATE('14/06/2013','dd/mm/rrrr'), 780, 'TIENDA', 2,  2,75909,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (36, TO_DATE('08/06/2013','dd/mm/rrrr'), 620, 'TIENDA', 2,  2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (37, TO_DATE('09/06/2013','dd/mm/rrrr'), 650, 'TIENDA', 3, 1,5005117, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (38, TO_DATE('02/06/2013','dd/mm/rrrr'), 686, 'TIENDA', 3, 1,70751, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (39, TO_DATE('11/06/2013','dd/mm/rrrr'), 787, 'TIENDA', 3, 1,851345, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (40, TO_DATE('25/06/2013','dd/mm/rrrr'), 749, 'TIENDA', 3, 1,70756, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (41, TO_DATE('24/06/2013','dd/mm/rrrr'), 821, 'TIENDA', 3, 1,70747, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (42, TO_DATE('10/06/2013','dd/mm/rrrr'), 890, 'TIENDA', 3, 1,851352, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (43, TO_DATE('09/06/2013','dd/mm/rrrr'), 616, 'TIENDA', 3, 1,70600, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (44, TO_DATE('28/06/2013','dd/mm/rrrr'), 759, 'TIENDA', 3, 1,851342, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (45, TO_DATE('09/06/2013','dd/mm/rrrr'), 966, 'TIENDA', 3, 2,75913, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (46, TO_DATE('13/06/2013','dd/mm/rrrr'), 958, 'TIENDA', 3,  2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (47, TO_DATE('26/06/2013','dd/mm/rrrr'), 700, 'TIENDA', 3,  2,75876,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (48, TO_DATE('25/06/2013','dd/mm/rrrr'), 681, 'TIENDA', 3,  2,75872,TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (49, TO_DATE('23/06/2013','dd/mm/rrrr'), 826, 'TIENDA', 3,  2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (50, TO_DATE('26/06/2013','dd/mm/rrrr'), 783, 'TIENDA', 3,  2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (51, TO_DATE('08/06/2013','dd/mm/rrrr'), 811, 'TIENDA', 3,  2,75899,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (52, TO_DATE('30/06/2013','dd/mm/rrrr'), 612, 'TIENDA', 3,  2,75910,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (53, TO_DATE('05/06/2013','dd/mm/rrrr'), 676, 'TIENDA', 3,  2,75909,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (54, TO_DATE('28/06/2013','dd/mm/rrrr'), 909, 'TIENDA', 3,  2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (55, TO_DATE('10/06/2013','dd/mm/rrrr'), 517, 'TIENDA', 4, 1,5005117, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (56, TO_DATE('06/06/2013','dd/mm/rrrr'), 971, 'TIENDA', 4, 1,70751, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (57, TO_DATE('05/06/2013','dd/mm/rrrr'), 754, 'TIENDA', 4, 1,851345, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (58, TO_DATE('25/06/2013','dd/mm/rrrr'), 708, 'TIENDA', 4, 1,70756, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (59, TO_DATE('15/06/2013','dd/mm/rrrr'), 849, 'TIENDA', 4, 1,70747, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (60, TO_DATE('28/06/2013','dd/mm/rrrr'), 741, 'TIENDA', 4, 1,851352, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (61, TO_DATE('23/06/2013','dd/mm/rrrr'), 526, 'TIENDA', 4, 1,70600, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (62, TO_DATE('28/06/2013','dd/mm/rrrr'), 836, 'TIENDA', 4, 1,851342, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (63, TO_DATE('20/06/2013','dd/mm/rrrr'), 613, 'TIENDA', 4, 2,75913, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (64, TO_DATE('26/06/2013','dd/mm/rrrr'), 501, 'TIENDA', 4,  2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (65, TO_DATE('11/06/2013','dd/mm/rrrr'), 793, 'TIENDA', 4,  2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (66, TO_DATE('06/06/2013','dd/mm/rrrr'), 569, 'TIENDA', 4,  2,75872,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (67, TO_DATE('21/06/2013','dd/mm/rrrr'), 812, 'TIENDA', 4,  2,75870,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (68, TO_DATE('18/06/2013','dd/mm/rrrr'), 620, 'TIENDA', 4,  2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (69, TO_DATE('04/06/2013','dd/mm/rrrr'), 933, 'TIENDA', 4,  2,75899,TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (70, TO_DATE('17/06/2013','dd/mm/rrrr'), 977, 'TIENDA', 4,  2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (71, TO_DATE('05/06/2013','dd/mm/rrrr'), 591, 'TIENDA', 4,  2,75909,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (72, TO_DATE('24/06/2013','dd/mm/rrrr'), 630, 'TIENDA', 4,  2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (73, TO_DATE('15/06/2013','dd/mm/rrrr'), 934, 'TIENDA', 5, 1,5005117, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (74, TO_DATE('15/06/2013','dd/mm/rrrr'), 914, 'TIENDA', 5, 1,70751, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (75, TO_DATE('05/06/2013','dd/mm/rrrr'), 812, 'TIENDA', 5, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (76, TO_DATE('01/06/2013','dd/mm/rrrr'), 718, 'TIENDA', 5, 1,70756, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (77, TO_DATE('06/06/2013','dd/mm/rrrr'), 521, 'TIENDA', 5, 1,70747, TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (78, TO_DATE('27/06/2013','dd/mm/rrrr'), 686, 'TIENDA', 5, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (79, TO_DATE('11/06/2013','dd/mm/rrrr'), 516, 'TIENDA', 5, 1,70600, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (80, TO_DATE('10/06/2013','dd/mm/rrrr'), 511, 'TIENDA', 5, 1,851342, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (81, TO_DATE('02/06/2013','dd/mm/rrrr'), 543, 'TIENDA', 5, 2,75913, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (82, TO_DATE('24/06/2013','dd/mm/rrrr'), 537, 'TIENDA', 5,  2,75908,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (83, TO_DATE('29/06/2013','dd/mm/rrrr'), 549, 'TIENDA', 5,  2,75876,TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (84, TO_DATE('29/06/2013','dd/mm/rrrr'), 980, 'TIENDA', 5,  2,75872,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (85, TO_DATE('08/06/2013','dd/mm/rrrr'), 588, 'TIENDA', 5,  2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (86, TO_DATE('22/06/2013','dd/mm/rrrr'), 592, 'TIENDA', 5,  2,75871,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (87, TO_DATE('04/06/2013','dd/mm/rrrr'), 569, 'TIENDA', 5,  2,75899,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (88, TO_DATE('15/06/2013','dd/mm/rrrr'), 542, 'TIENDA', 5,  2,75910,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (89, TO_DATE('09/06/2013','dd/mm/rrrr'), 997, 'TIENDA', 5,  2,75909,TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (90, TO_DATE('19/06/2013','dd/mm/rrrr'), 861, 'TIENDA', 5,  2,75873,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (91, TO_DATE('30/06/2013','dd/mm/rrrr'), 844, 'TIENDA', 6, 1,5005117, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (92, TO_DATE('30/06/2013','dd/mm/rrrr'), 909, 'TIENDA', 6, 1,70751, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (93, TO_DATE('22/06/2013','dd/mm/rrrr'), 524, 'TIENDA', 6, 1,851345, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (94, TO_DATE('05/06/2013','dd/mm/rrrr'), 893, 'TIENDA', 6, 1,70756, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (95, TO_DATE('04/06/2013','dd/mm/rrrr'), 978, 'TIENDA', 6, 1,70747, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (96, TO_DATE('26/06/2013','dd/mm/rrrr'), 806, 'TIENDA', 6, 1,851352, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (97, TO_DATE('15/06/2013','dd/mm/rrrr'), 724, 'TIENDA', 6, 1,70600, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (98, TO_DATE('05/06/2013','dd/mm/rrrr'), 822, 'TIENDA', 6, 1,851342, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (99, TO_DATE('26/06/2013','dd/mm/rrrr'), 885, 'TIENDA', 6, 2,75913, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (100,TO_DATE('01/06/2013','dd/mm/rrrr'), 779, 'TIENDA', 6,  2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (101,TO_DATE('19/06/2013','dd/mm/rrrr'), 968, 'TIENDA', 6,  2,75876,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (102,TO_DATE('18/06/2013','dd/mm/rrrr'), 675, 'TIENDA', 6,  2,75872,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (103,TO_DATE('12/06/2013','dd/mm/rrrr'), 957, 'TIENDA', 6,  2,75870,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (104,TO_DATE('26/06/2013','dd/mm/rrrr'), 960, 'TIENDA', 6,  2,75871,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (105,TO_DATE('26/06/2013','dd/mm/rrrr'), 871, 'TIENDA', 6,  2,75899,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (106,TO_DATE('26/06/2013','dd/mm/rrrr'), 954, 'TIENDA', 6,  2,75910,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (107,TO_DATE('28/06/2013','dd/mm/rrrr'), 799, 'TIENDA', 6,  2,75909,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (108,TO_DATE('17/06/2013','dd/mm/rrrr'), 640, 'TIENDA', 6,  2,75873,TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (109,TO_DATE('17/06/2013','dd/mm/rrrr'), 840, 'TIENDA', 7, 1,5005117, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (110,TO_DATE('23/06/2013','dd/mm/rrrr'), 591, 'TIENDA', 7, 1,70751, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (111,TO_DATE('26/06/2013','dd/mm/rrrr'), 830, 'TIENDA', 7, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (112,TO_DATE('17/06/2013','dd/mm/rrrr'), 715, 'TIENDA', 7, 1,70756, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (113,TO_DATE('08/06/2013','dd/mm/rrrr'), 918, 'TIENDA', 7, 1,70747, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (114,TO_DATE('09/06/2013','dd/mm/rrrr'), 853, 'TIENDA', 7, 1,851352, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (115,TO_DATE('18/06/2013','dd/mm/rrrr'), 693, 'TIENDA', 7, 1,70600, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (116,TO_DATE('25/06/2013','dd/mm/rrrr'), 518, 'TIENDA', 7, 1,851342, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (117,TO_DATE('22/06/2013','dd/mm/rrrr'), 507, 'TIENDA', 7, 2,75913, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (118,TO_DATE('15/06/2013','dd/mm/rrrr'), 617, 'TIENDA', 7,  2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (119,TO_DATE('28/06/2013','dd/mm/rrrr'), 873, 'TIENDA', 7,  2,75876,TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (120,TO_DATE('06/06/2013','dd/mm/rrrr'), 640, 'TIENDA', 7,  2,75872,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (121,TO_DATE('25/06/2013','dd/mm/rrrr'), 772, 'TIENDA', 7,  2,75870,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (122,TO_DATE('30/06/2013','dd/mm/rrrr'), 849, 'TIENDA', 7,  2,75871,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (123,TO_DATE('25/06/2013','dd/mm/rrrr'), 692, 'TIENDA', 7,  2,75899,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (124,TO_DATE('29/06/2013','dd/mm/rrrr'), 581, 'TIENDA', 7,  2,75910,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (125,TO_DATE('30/06/2013','dd/mm/rrrr'), 725, 'TIENDA', 7,  2,75909,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (126,TO_DATE('08/06/2013','dd/mm/rrrr'), 565, 'TIENDA', 7,  2,75873,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (127,TO_DATE('29/06/2013','dd/mm/rrrr'), 783, 'TIENDA', 8, 1,5005117, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (128,TO_DATE('02/06/2013','dd/mm/rrrr'), 919, 'TIENDA', 8, 1,70751, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (129,TO_DATE('23/06/2013','dd/mm/rrrr'), 976, 'TIENDA', 8, 1,851345, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (130,TO_DATE('01/06/2013','dd/mm/rrrr'), 669, 'TIENDA', 8, 1,70756, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (131,TO_DATE('14/06/2013','dd/mm/rrrr'), 911, 'TIENDA', 8, 1,70747, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (132,TO_DATE('27/06/2013','dd/mm/rrrr'), 976, 'TIENDA', 8, 1,851352, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (133,TO_DATE('28/06/2013','dd/mm/rrrr'), 520, 'TIENDA', 8, 1,70600, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (134,TO_DATE('07/06/2013','dd/mm/rrrr'), 993, 'TIENDA', 8, 1,851342, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (135,TO_DATE('22/06/2013','dd/mm/rrrr'), 933, 'TIENDA', 8, 2,75913, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (136,TO_DATE('16/06/2013','dd/mm/rrrr'), 915, 'TIENDA', 8,  2,75908,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (137,TO_DATE('06/06/2013','dd/mm/rrrr'), 832, 'TIENDA', 8,  2,75876,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (138,TO_DATE('16/06/2013','dd/mm/rrrr'), 957, 'TIENDA', 8,  2,75872,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (139,TO_DATE('23/06/2013','dd/mm/rrrr'), 748, 'TIENDA', 8,  2,75870,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (140,TO_DATE('18/06/2013','dd/mm/rrrr'), 695, 'TIENDA', 8,  2,75871,TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (141,TO_DATE('28/06/2013','dd/mm/rrrr'), 839, 'TIENDA', 8,  2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (142,TO_DATE('22/06/2013','dd/mm/rrrr'), 694, 'TIENDA', 8,  2,75910,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (143,TO_DATE('19/06/2013','dd/mm/rrrr'), 723, 'TIENDA', 8,  2,75909,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (144,TO_DATE('30/06/2013','dd/mm/rrrr'), 834, 'TIENDA', 8,  2,75873,TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (145,TO_DATE('16/06/2013','dd/mm/rrrr'), 901, 'TIENDA', 9, 1,5005117, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (146,TO_DATE('09/06/2013','dd/mm/rrrr'), 771, 'TIENDA', 9, 1,70751, TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (147,TO_DATE('16/06/2013','dd/mm/rrrr'), 704, 'TIENDA', 9, 1,851345, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (148,TO_DATE('23/06/2013','dd/mm/rrrr'), 755, 'TIENDA', 9, 1,70756, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (149,TO_DATE('29/06/2013','dd/mm/rrrr'), 903, 'TIENDA', 9, 1,70747, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (150,TO_DATE('17/06/2013','dd/mm/rrrr'), 589, 'TIENDA', 9, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (151,TO_DATE('25/06/2013','dd/mm/rrrr'), 682, 'TIENDA', 9, 1,70600, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (152,TO_DATE('09/06/2013','dd/mm/rrrr'), 861, 'TIENDA', 9, 1,851342, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (153,TO_DATE('05/06/2013','dd/mm/rrrr'), 842, 'TIENDA', 9, 2,75913, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (154,TO_DATE('28/06/2013','dd/mm/rrrr'), 636, 'TIENDA', 9,  2,75908,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (155,TO_DATE('20/06/2013','dd/mm/rrrr'), 652, 'TIENDA', 9,  2,75876,TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (156,TO_DATE('10/06/2013','dd/mm/rrrr'), 550, 'TIENDA', 9,  2,75872,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (157,TO_DATE('21/06/2013','dd/mm/rrrr'), 607, 'TIENDA', 9,  2,75870,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (158,TO_DATE('09/06/2013','dd/mm/rrrr'), 811, 'TIENDA', 9,  2,75871,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (159,TO_DATE('23/06/2013','dd/mm/rrrr'), 999, 'TIENDA', 9,  2,75899,TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (160,TO_DATE('03/06/2013','dd/mm/rrrr'), 603, 'TIENDA', 9,  2,75910,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (161,TO_DATE('12/06/2013','dd/mm/rrrr'), 887, 'TIENDA', 9,  2,75909,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (162,TO_DATE('22/06/2013','dd/mm/rrrr'), 853, 'TIENDA', 9,  2,75873,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (163,TO_DATE('19/06/2013','dd/mm/rrrr'), 775, 'TIENDA', 10, 1,5005117,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (164,TO_DATE('20/06/2013','dd/mm/rrrr'), 846, 'TIENDA', 10, 1,70751,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (165,TO_DATE('27/06/2013','dd/mm/rrrr'), 864, 'TIENDA', 10, 1,851345,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (166,TO_DATE('09/06/2013','dd/mm/rrrr'), 594, 'TIENDA', 10, 1,70756,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (167,TO_DATE('12/06/2013','dd/mm/rrrr'), 600, 'TIENDA', 10, 1,70747,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (168,TO_DATE('20/06/2013','dd/mm/rrrr'), 570, 'TIENDA', 10, 1,851352,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (169,TO_DATE('03/06/2013','dd/mm/rrrr'), 622, 'TIENDA', 10, 1,70600,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (170,TO_DATE('13/06/2013','dd/mm/rrrr'), 779, 'TIENDA', 10, 1,851342,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (171,TO_DATE('04/06/2013','dd/mm/rrrr'), 960, 'TIENDA', 10, 2,75913,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (172,TO_DATE('01/06/2013','dd/mm/rrrr'), 789, 'TIENDA', 10,  2,75908, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (173,TO_DATE('30/06/2013','dd/mm/rrrr'), 694, 'TIENDA', 10,  2,75876, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (174,TO_DATE('11/06/2013','dd/mm/rrrr'), 998, 'TIENDA', 10,  2,75872, TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (175,TO_DATE('30/06/2013','dd/mm/rrrr'), 732, 'TIENDA', 10,  2,75870, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (176,TO_DATE('27/06/2013','dd/mm/rrrr'), 805, 'TIENDA', 10,  2,75871, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (177,TO_DATE('21/06/2013','dd/mm/rrrr'), 567, 'TIENDA', 10,  2,75899, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (178,TO_DATE('04/06/2013','dd/mm/rrrr'), 596, 'TIENDA', 10,  2,75910, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (179,TO_DATE('18/06/2013','dd/mm/rrrr'), 991, 'TIENDA', 10,  2,75909, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (180,TO_DATE('25/06/2013','dd/mm/rrrr'), 811, 'TIENDA', 10,  2,75873, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (181,TO_DATE('05/06/2013','dd/mm/rrrr'), 959, 'TIENDA', 11, 1,5005117, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (182,TO_DATE('21/06/2013','dd/mm/rrrr'), 638, 'TIENDA', 11, 1,70751, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (183,TO_DATE('06/06/2013','dd/mm/rrrr'), 966, 'TIENDA', 11, 1,851345, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (184,TO_DATE('24/06/2013','dd/mm/rrrr'), 983, 'TIENDA', 11, 1,70756, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (185,TO_DATE('24/06/2013','dd/mm/rrrr'), 571, 'TIENDA', 11, 1,70747, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (186,TO_DATE('01/06/2013','dd/mm/rrrr'), 741, 'TIENDA', 11, 1,851352, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (187,TO_DATE('06/06/2013','dd/mm/rrrr'), 825, 'TIENDA', 11, 1,70600, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (188,TO_DATE('25/06/2013','dd/mm/rrrr'), 656, 'TIENDA', 11, 1,851342, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (189,TO_DATE('16/06/2013','dd/mm/rrrr'), 733, 'TIENDA', 11, 2,75913, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (190,TO_DATE('18/06/2013','dd/mm/rrrr'), 839, 'TIENDA', 11,  2,75908, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (191,TO_DATE('15/06/2013','dd/mm/rrrr'), 719, 'TIENDA', 11,  2,75876, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (192,TO_DATE('05/06/2013','dd/mm/rrrr'), 989, 'TIENDA', 11,  2,75872, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (193,TO_DATE('26/06/2013','dd/mm/rrrr'), 921, 'TIENDA', 11,  2,75870, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (194,TO_DATE('07/06/2013','dd/mm/rrrr'), 538, 'TIENDA', 11,  2,75871, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (195,TO_DATE('23/06/2013','dd/mm/rrrr'), 972, 'TIENDA', 11,  2,75899, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (196,TO_DATE('01/06/2013','dd/mm/rrrr'), 649, 'TIENDA', 11,  2,75910, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (197,TO_DATE('10/06/2013','dd/mm/rrrr'), 595, 'TIENDA', 11,  2,75909, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (198,TO_DATE('25/06/2013','dd/mm/rrrr'), 900, 'TIENDA', 11,  2,75873, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (199,TO_DATE('09/06/2013','dd/mm/rrrr'), 598, 'TIENDA', 12, 1,5005117, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (200,TO_DATE('11/06/2013','dd/mm/rrrr'), 524, 'TIENDA', 12, 1,70751, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (201,TO_DATE('21/06/2013','dd/mm/rrrr'), 568, 'TIENDA', 12, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (202,TO_DATE('22/06/2013','dd/mm/rrrr'), 611, 'TIENDA', 12, 1,70756, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (203,TO_DATE('11/06/2013','dd/mm/rrrr'), 923, 'TIENDA', 12, 1,70747, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (204,TO_DATE('26/06/2013','dd/mm/rrrr'), 657, 'TIENDA', 12, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (205,TO_DATE('25/06/2013','dd/mm/rrrr'), 849, 'TIENDA', 12, 1,70600, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (206,TO_DATE('29/06/2013','dd/mm/rrrr'), 640, 'TIENDA', 12, 1,851342, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (207,TO_DATE('13/06/2013','dd/mm/rrrr'), 862, 'TIENDA', 12, 2,75913, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (208,TO_DATE('10/06/2013','dd/mm/rrrr'), 646, 'TIENDA', 12,  2,75908,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (209,TO_DATE('25/06/2013','dd/mm/rrrr'), 614, 'TIENDA', 12,  2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (210,TO_DATE('28/06/2013','dd/mm/rrrr'), 555, 'TIENDA', 12,  2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (211,TO_DATE('01/06/2013','dd/mm/rrrr'), 653, 'TIENDA', 12,  2,75870,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (212,TO_DATE('10/06/2013','dd/mm/rrrr'), 711, 'TIENDA', 12,  2,75871,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (213,TO_DATE('18/06/2013','dd/mm/rrrr'), 750, 'TIENDA', 12,  2,75899,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (214,TO_DATE('23/06/2013','dd/mm/rrrr'), 999, 'TIENDA', 12,  2,75910,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (215,TO_DATE('19/06/2013','dd/mm/rrrr'), 686, 'TIENDA', 12,  2,75909,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (216,TO_DATE('30/06/2013','dd/mm/rrrr'), 784, 'TIENDA', 12,  2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (217,TO_DATE('04/06/2013','dd/mm/rrrr'), 512, 'TIENDA', 13, 1,5005117, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (218,TO_DATE('27/06/2013','dd/mm/rrrr'), 524, 'TIENDA', 13, 1,70751, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (219,TO_DATE('16/06/2013','dd/mm/rrrr'), 718, 'TIENDA', 13, 1,851345, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (220,TO_DATE('10/06/2013','dd/mm/rrrr'), 608, 'TIENDA', 13, 1,70756, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (221,TO_DATE('25/06/2013','dd/mm/rrrr'), 959, 'TIENDA', 13, 1,70747, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (222,TO_DATE('21/06/2013','dd/mm/rrrr'), 759, 'TIENDA', 13, 1,851352, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (223,TO_DATE('09/06/2013','dd/mm/rrrr'), 670, 'TIENDA', 13, 1,70600, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (224,TO_DATE('13/06/2013','dd/mm/rrrr'), 563, 'TIENDA', 13, 1,851342, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (225,TO_DATE('10/06/2013','dd/mm/rrrr'), 975, 'TIENDA', 13, 2,75913, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (226,TO_DATE('21/06/2013','dd/mm/rrrr'), 755, 'TIENDA', 13,  2,75908,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (227,TO_DATE('10/06/2013','dd/mm/rrrr'), 528, 'TIENDA', 13,  2,75876,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (228,TO_DATE('12/06/2013','dd/mm/rrrr'), 968, 'TIENDA', 13,  2,75872,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (229,TO_DATE('15/06/2013','dd/mm/rrrr'), 982, 'TIENDA', 13,  2,75870,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (230,TO_DATE('16/06/2013','dd/mm/rrrr'), 933, 'TIENDA', 13,  2,75871,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (231,TO_DATE('03/06/2013','dd/mm/rrrr'), 857, 'TIENDA', 13,  2,75899,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (232,TO_DATE('25/06/2013','dd/mm/rrrr'), 568, 'TIENDA', 13,  2,75910,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (233,TO_DATE('17/06/2013','dd/mm/rrrr'), 868, 'TIENDA', 13,  2,75909,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (234,TO_DATE('01/06/2013','dd/mm/rrrr'), 791, 'TIENDA', 13,  2,75873,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (235,TO_DATE('28/06/2013','dd/mm/rrrr'), 777, 'TIENDA', 14, 1,5005117, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (236,TO_DATE('29/06/2013','dd/mm/rrrr'), 586, 'TIENDA', 14, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (237,TO_DATE('26/06/2013','dd/mm/rrrr'), 664, 'TIENDA', 14, 1,851345, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (238,TO_DATE('12/06/2013','dd/mm/rrrr'), 556, 'TIENDA', 14, 1,70756, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (239,TO_DATE('01/06/2013','dd/mm/rrrr'), 756, 'TIENDA', 14, 1,70747, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (240,TO_DATE('30/06/2013','dd/mm/rrrr'), 802, 'TIENDA', 14, 1,851352, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (241,TO_DATE('18/06/2013','dd/mm/rrrr'), 638, 'TIENDA', 14, 1,70600, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (242,TO_DATE('06/06/2013','dd/mm/rrrr'), 956, 'TIENDA', 14, 1,851342, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (243,TO_DATE('11/06/2013','dd/mm/rrrr'), 977, 'TIENDA', 14, 2,75913, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (244,TO_DATE('26/06/2013','dd/mm/rrrr'), 936, 'TIENDA', 14,  2,75908,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (245,TO_DATE('12/06/2013','dd/mm/rrrr'), 986, 'TIENDA', 14,  2,75876,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (246,TO_DATE('07/06/2013','dd/mm/rrrr'), 736, 'TIENDA', 14,  2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (247,TO_DATE('12/06/2013','dd/mm/rrrr'), 658, 'TIENDA', 14,  2,75870,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (248,TO_DATE('09/06/2013','dd/mm/rrrr'), 805, 'TIENDA', 14,  2,75871,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (249,TO_DATE('19/06/2013','dd/mm/rrrr'), 646, 'TIENDA', 14,  2,75899,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (250,TO_DATE('26/06/2013','dd/mm/rrrr'), 570, 'TIENDA', 14,  2,75910,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (251,TO_DATE('13/06/2013','dd/mm/rrrr'), 534, 'TIENDA', 14,  2,75909,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (252,TO_DATE('07/06/2013','dd/mm/rrrr'), 817, 'TIENDA', 14,  2,75873,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (253,TO_DATE('04/06/2013','dd/mm/rrrr'), 600, 'TIENDA', 15, 1,5005117, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (254,TO_DATE('11/06/2013','dd/mm/rrrr'), 755, 'TIENDA', 15, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (255,TO_DATE('13/06/2013','dd/mm/rrrr'), 658, 'TIENDA', 15, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (256,TO_DATE('27/06/2013','dd/mm/rrrr'), 805, 'TIENDA', 15, 1,70756, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (257,TO_DATE('14/06/2013','dd/mm/rrrr'), 993, 'TIENDA', 15, 1,70747, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (258,TO_DATE('09/06/2013','dd/mm/rrrr'), 755, 'TIENDA', 15, 1,851352, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (259,TO_DATE('06/06/2013','dd/mm/rrrr'), 632, 'TIENDA', 15, 1,70600, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (260,TO_DATE('09/06/2013','dd/mm/rrrr'), 756, 'TIENDA', 15, 1,851342, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (261,TO_DATE('27/06/2013','dd/mm/rrrr'), 532, 'TIENDA', 15, 2,75913, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (262,TO_DATE('24/06/2013','dd/mm/rrrr'), 946, 'TIENDA', 15,  2,75908,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (263,TO_DATE('03/06/2013','dd/mm/rrrr'), 556, 'TIENDA', 15,  2,75876,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (264,TO_DATE('05/06/2013','dd/mm/rrrr'), 897, 'TIENDA', 15,  2,75872,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (265,TO_DATE('02/06/2013','dd/mm/rrrr'), 693, 'TIENDA', 15,  2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (266,TO_DATE('03/06/2013','dd/mm/rrrr'), 864, 'TIENDA', 15,  2,75871,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (267,TO_DATE('16/06/2013','dd/mm/rrrr'), 987, 'TIENDA', 15,  2,75899,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (268,TO_DATE('27/06/2013','dd/mm/rrrr'), 933, 'TIENDA', 15,  2,75910,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (269,TO_DATE('28/06/2013','dd/mm/rrrr'), 765, 'TIENDA', 15,  2,75909,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (270,TO_DATE('27/06/2013','dd/mm/rrrr'), 557, 'TIENDA', 15,  2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (271,TO_DATE('17/06/2013','dd/mm/rrrr'), 784, 'TIENDA', 16, 1,5005117, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (272,TO_DATE('30/06/2013','dd/mm/rrrr'), 780, 'TIENDA', 16, 1,70751, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (273,TO_DATE('26/06/2013','dd/mm/rrrr'), 644, 'TIENDA', 16, 1,851345, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (274,TO_DATE('22/06/2013','dd/mm/rrrr'), 870, 'TIENDA', 16, 1,70756, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (275,TO_DATE('10/06/2013','dd/mm/rrrr'), 747, 'TIENDA', 16, 1,70747, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (276,TO_DATE('05/06/2013','dd/mm/rrrr'), 789, 'TIENDA', 16, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (277,TO_DATE('20/06/2013','dd/mm/rrrr'), 711, 'TIENDA', 16, 1,70600, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (278,TO_DATE('22/06/2013','dd/mm/rrrr'), 702, 'TIENDA', 16, 1,851342, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (279,TO_DATE('20/06/2013','dd/mm/rrrr'), 968, 'TIENDA', 16, 2,75913, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (280,TO_DATE('02/06/2013','dd/mm/rrrr'), 632, 'TIENDA', 16,  2,75908,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (281,TO_DATE('26/06/2013','dd/mm/rrrr'), 772, 'TIENDA', 16,  2,75876,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (282,TO_DATE('06/06/2013','dd/mm/rrrr'), 733, 'TIENDA', 16,  2,75872,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (283,TO_DATE('19/06/2013','dd/mm/rrrr'), 922, 'TIENDA', 16,  2,75870,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (284,TO_DATE('08/06/2013','dd/mm/rrrr'), 618, 'TIENDA', 16,  2,75871,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (285,TO_DATE('19/06/2013','dd/mm/rrrr'), 653, 'TIENDA', 16,  2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (286,TO_DATE('28/06/2013','dd/mm/rrrr'), 641, 'TIENDA', 16,  2,75910,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (287,TO_DATE('08/06/2013','dd/mm/rrrr'), 536, 'TIENDA', 16,  2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (288,TO_DATE('27/06/2013','dd/mm/rrrr'), 877, 'TIENDA', 16,  2,75873,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (289,TO_DATE('06/06/2013','dd/mm/rrrr'), 758, 'TIENDA', 17, 1,5005117, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (290,TO_DATE('24/06/2013','dd/mm/rrrr'), 625, 'TIENDA', 17, 1,70751, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (291,TO_DATE('27/06/2013','dd/mm/rrrr'), 612, 'TIENDA', 17, 1,851345, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (292,TO_DATE('28/06/2013','dd/mm/rrrr'), 726, 'TIENDA', 17, 1,70756, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (293,TO_DATE('03/06/2013','dd/mm/rrrr'), 668, 'TIENDA', 17, 1,70747, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (294,TO_DATE('02/06/2013','dd/mm/rrrr'), 704, 'TIENDA', 17, 1,851352, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (295,TO_DATE('29/06/2013','dd/mm/rrrr'), 539, 'TIENDA', 17, 1,70600, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (296,TO_DATE('08/06/2013','dd/mm/rrrr'), 503, 'TIENDA', 17, 1,851342, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (297,TO_DATE('10/06/2013','dd/mm/rrrr'), 993, 'TIENDA', 17, 2,75913, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (298,TO_DATE('02/06/2013','dd/mm/rrrr'), 648, 'TIENDA', 17,  2,75908,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (299,TO_DATE('01/06/2013','dd/mm/rrrr'), 627, 'TIENDA', 17,  2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (300,TO_DATE('06/06/2013','dd/mm/rrrr'), 907, 'TIENDA', 17,  2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (301,TO_DATE('25/06/2013','dd/mm/rrrr'), 802, 'TIENDA', 17,  2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (302,TO_DATE('03/06/2013','dd/mm/rrrr'), 772, 'TIENDA', 17,  2,75871,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (303,TO_DATE('20/06/2013','dd/mm/rrrr'), 887, 'TIENDA', 17,  2,75899,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (304,TO_DATE('05/06/2013','dd/mm/rrrr'), 925, 'TIENDA', 17,  2,75910,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (305,TO_DATE('04/06/2013','dd/mm/rrrr'), 948, 'TIENDA', 17,  2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (306,TO_DATE('30/06/2013','dd/mm/rrrr'), 823, 'TIENDA', 17,  2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (307,TO_DATE('08/06/2013','dd/mm/rrrr'), 884, 'TIENDA', 18, 1,5005117, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (308,TO_DATE('09/06/2013','dd/mm/rrrr'), 836, 'TIENDA', 18, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (309,TO_DATE('02/06/2013','dd/mm/rrrr'), 939, 'TIENDA', 18, 1,851345, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (310,TO_DATE('18/06/2013','dd/mm/rrrr'), 922, 'TIENDA', 18, 1,70756, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (311,TO_DATE('24/06/2013','dd/mm/rrrr'), 907, 'TIENDA', 18, 1,70747, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (312,TO_DATE('13/06/2013','dd/mm/rrrr'), 795, 'TIENDA', 18, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (313,TO_DATE('27/06/2013','dd/mm/rrrr'), 642, 'TIENDA', 18, 1,70600, TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (314,TO_DATE('09/06/2013','dd/mm/rrrr'), 560, 'TIENDA', 18, 1,851342, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (315,TO_DATE('03/06/2013','dd/mm/rrrr'), 619, 'TIENDA', 18, 2,75913, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (316,TO_DATE('07/06/2013','dd/mm/rrrr'), 758, 'TIENDA', 18,  2,75908,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (317,TO_DATE('13/06/2013','dd/mm/rrrr'), 522, 'TIENDA', 18,  2,75876,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (318,TO_DATE('06/06/2013','dd/mm/rrrr'), 513, 'TIENDA', 18,  2,75872,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (319,TO_DATE('12/06/2013','dd/mm/rrrr'), 516, 'TIENDA', 18,  2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (320,TO_DATE('25/06/2013','dd/mm/rrrr'), 824, 'TIENDA', 18,  2,75871,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (321,TO_DATE('05/06/2013','dd/mm/rrrr'), 515, 'TIENDA', 18,  2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (322,TO_DATE('22/06/2013','dd/mm/rrrr'), 998, 'TIENDA', 18,  2,75910,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (323,TO_DATE('07/06/2013','dd/mm/rrrr'), 960, 'TIENDA', 18,  2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (324,TO_DATE('03/06/2013','dd/mm/rrrr'), 888, 'TIENDA', 18,  2,75873,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (325,TO_DATE('27/06/2013','dd/mm/rrrr'), 740, 'TIENDA', 19, 1,5005117, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (326,TO_DATE('04/06/2013','dd/mm/rrrr'), 882, 'TIENDA', 19, 1,70751, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (327,TO_DATE('03/06/2013','dd/mm/rrrr'), 727, 'TIENDA', 19, 1,851345, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (328,TO_DATE('27/06/2013','dd/mm/rrrr'), 505, 'TIENDA', 19, 1,70756, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (329,TO_DATE('30/06/2013','dd/mm/rrrr'), 988, 'TIENDA', 19, 1,70747, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (330,TO_DATE('18/06/2013','dd/mm/rrrr'), 716, 'TIENDA', 19, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (331,TO_DATE('04/06/2013','dd/mm/rrrr'), 786, 'TIENDA', 19, 1,70600, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (332,TO_DATE('23/06/2013','dd/mm/rrrr'), 503, 'TIENDA', 19, 1,851342, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (333,TO_DATE('05/06/2013','dd/mm/rrrr'), 971, 'TIENDA', 19, 2,75913, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (334,TO_DATE('22/06/2013','dd/mm/rrrr'), 672, 'TIENDA', 19,  2,75908,TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (335,TO_DATE('13/06/2013','dd/mm/rrrr'), 704, 'TIENDA', 19,  2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (336,TO_DATE('08/06/2013','dd/mm/rrrr'), 820, 'TIENDA', 19,  2,75872,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (337,TO_DATE('08/06/2013','dd/mm/rrrr'), 889, 'TIENDA', 19,  2,75870,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (338,TO_DATE('24/06/2013','dd/mm/rrrr'), 744, 'TIENDA', 19,  2,75871,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (339,TO_DATE('22/06/2013','dd/mm/rrrr'), 536, 'TIENDA', 19,  2,75899,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (340,TO_DATE('25/06/2013','dd/mm/rrrr'), 839, 'TIENDA', 19,  2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (341,TO_DATE('07/06/2013','dd/mm/rrrr'), 752, 'TIENDA', 19,  2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (342,TO_DATE('07/06/2013','dd/mm/rrrr'), 879, 'TIENDA', 19,  2,75873,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (343,TO_DATE('17/06/2013','dd/mm/rrrr'), 911, 'ONLINE', 1, 1,5005117,  TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (344,TO_DATE('21/06/2013','dd/mm/rrrr'), 649, 'ONLINE', 1, 1,70751,  TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (345,TO_DATE('28/06/2013','dd/mm/rrrr'), 978, 'ONLINE', 1, 1,851345,  TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (346,TO_DATE('28/06/2013','dd/mm/rrrr'), 897, 'ONLINE', 1, 1,70756,  TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (347,TO_DATE('20/06/2013','dd/mm/rrrr'), 875, 'ONLINE', 1, 1,70747,  TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (348,TO_DATE('23/06/2013','dd/mm/rrrr'), 736, 'ONLINE', 1, 1,851352,  TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (349,TO_DATE('14/06/2013','dd/mm/rrrr'), 894, 'ONLINE', 1, 1,70600,  TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (350,TO_DATE('07/06/2013','dd/mm/rrrr'), 846, 'ONLINE', 1, 1,851342,  TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (351,TO_DATE('26/06/2013','dd/mm/rrrr'), 820, 'ONLINE', 1, 2,75913,  TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (352,TO_DATE('07/06/2013','dd/mm/rrrr'), 792, 'ONLINE', 1,  2,75908, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (353,TO_DATE('04/06/2013','dd/mm/rrrr'), 918, 'ONLINE', 1,  2,75876, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (354,TO_DATE('16/06/2013','dd/mm/rrrr'), 678, 'ONLINE', 1,  2,75872, TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (355,TO_DATE('21/06/2013','dd/mm/rrrr'), 607, 'ONLINE', 1,  2,75870, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (356,TO_DATE('30/06/2013','dd/mm/rrrr'), 857, 'ONLINE', 1,  2,75871, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (357,TO_DATE('24/06/2013','dd/mm/rrrr'), 667, 'ONLINE', 1,  2,75899, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (358,TO_DATE('06/06/2013','dd/mm/rrrr'), 638, 'ONLINE', 1,  2,75910, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (359,TO_DATE('19/06/2013','dd/mm/rrrr'), 705, 'ONLINE', 1,  2,75909, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (360,TO_DATE('25/06/2013','dd/mm/rrrr'), 599, 'ONLINE', 1,  2,75873, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (361,TO_DATE('26/06/2013','dd/mm/rrrr'), 728, 'ONLINE', 2, 1,5005117,  TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (362,TO_DATE('11/06/2013','dd/mm/rrrr'), 516, 'ONLINE', 2, 1,70751,  TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (363,TO_DATE('07/06/2013','dd/mm/rrrr'), 505, 'ONLINE', 2, 1,851345,  TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (364,TO_DATE('06/06/2013','dd/mm/rrrr'), 767, 'ONLINE', 2, 1,70756,  TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (365,TO_DATE('19/06/2013','dd/mm/rrrr'), 521, 'ONLINE', 2, 1,70747,  TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (366,TO_DATE('06/06/2013','dd/mm/rrrr'), 689, 'ONLINE', 2, 1,851352,  TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (367,TO_DATE('17/06/2013','dd/mm/rrrr'), 808, 'ONLINE', 2, 1,70600,  TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (368,TO_DATE('24/06/2013','dd/mm/rrrr'), 976, 'ONLINE', 2, 1,851342,  TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (369,TO_DATE('05/06/2013','dd/mm/rrrr'), 603, 'ONLINE', 2, 2,75913,  TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (370,TO_DATE('02/06/2013','dd/mm/rrrr'), 975, 'ONLINE', 2,  2,75908,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (371,TO_DATE('12/06/2013','dd/mm/rrrr'), 861, 'ONLINE', 2,  2,75876,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (372,TO_DATE('29/06/2013','dd/mm/rrrr'), 843, 'ONLINE', 2,  2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (373,TO_DATE('03/06/2013','dd/mm/rrrr'), 615, 'ONLINE', 2,  2,75870,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (374,TO_DATE('27/06/2013','dd/mm/rrrr'), 713, 'ONLINE', 2,  2,75871,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (375,TO_DATE('23/06/2013','dd/mm/rrrr'), 695, 'ONLINE', 2,  2,75899,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (376,TO_DATE('18/06/2013','dd/mm/rrrr'), 929, 'ONLINE', 2,  2,75910,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (377,TO_DATE('11/06/2013','dd/mm/rrrr'), 796, 'ONLINE', 2,  2,75909,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (378,TO_DATE('03/06/2013','dd/mm/rrrr'), 767, 'ONLINE', 2,  2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (379,TO_DATE('11/06/2013','dd/mm/rrrr'), 618, 'ONLINE', 3, 1,5005117, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (380,TO_DATE('29/06/2013','dd/mm/rrrr'), 893, 'ONLINE', 3, 1,70751, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (381,TO_DATE('21/06/2013','dd/mm/rrrr'), 889, 'ONLINE', 3, 1,851345, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (382,TO_DATE('04/06/2013','dd/mm/rrrr'), 643, 'ONLINE', 3, 1,70756, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (383,TO_DATE('23/06/2013','dd/mm/rrrr'), 622, 'ONLINE', 3, 1,70747, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (384,TO_DATE('18/06/2013','dd/mm/rrrr'), 867, 'ONLINE', 3, 1,851352, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (385,TO_DATE('13/06/2013','dd/mm/rrrr'), 609, 'ONLINE', 3, 1,70600, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (386,TO_DATE('16/06/2013','dd/mm/rrrr'), 910, 'ONLINE', 3, 1,851342, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (387,TO_DATE('03/06/2013','dd/mm/rrrr'), 953, 'ONLINE', 3, 2,75913, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (388,TO_DATE('30/06/2013','dd/mm/rrrr'), 513, 'ONLINE', 3,  2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (389,TO_DATE('14/06/2013','dd/mm/rrrr'), 895, 'ONLINE', 3,  2,75876,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (390,TO_DATE('01/06/2013','dd/mm/rrrr'), 591, 'ONLINE', 3,  2,75872,TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (391,TO_DATE('27/06/2013','dd/mm/rrrr'), 572, 'ONLINE', 3,  2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (392,TO_DATE('14/06/2013','dd/mm/rrrr'), 626, 'ONLINE', 3,  2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (393,TO_DATE('09/06/2013','dd/mm/rrrr'), 981, 'ONLINE', 3,  2,75899,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (394,TO_DATE('14/06/2013','dd/mm/rrrr'), 625, 'ONLINE', 3,  2,75910,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (395,TO_DATE('06/06/2013','dd/mm/rrrr'), 829, 'ONLINE', 3,  2,75909,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (396,TO_DATE('15/06/2013','dd/mm/rrrr'), 602, 'ONLINE', 3,  2,75873,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (397,TO_DATE('22/06/2013','dd/mm/rrrr'), 696, 'ONLINE', 4, 1,5005117, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (398,TO_DATE('10/06/2013','dd/mm/rrrr'), 529, 'ONLINE', 4, 1,70751, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (399,TO_DATE('04/06/2013','dd/mm/rrrr'), 787, 'ONLINE', 4, 1,851345, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (400,TO_DATE('28/06/2013','dd/mm/rrrr'), 848, 'ONLINE', 4, 1,70756, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (401,TO_DATE('05/06/2013','dd/mm/rrrr'), 990, 'ONLINE', 4, 1,70747, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (402,TO_DATE('04/06/2013','dd/mm/rrrr'), 628, 'ONLINE', 4, 1,851352, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (403,TO_DATE('05/06/2013','dd/mm/rrrr'), 958, 'ONLINE', 4, 1,70600, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (404,TO_DATE('01/06/2013','dd/mm/rrrr'), 998, 'ONLINE', 4, 1,851342, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (405,TO_DATE('15/06/2013','dd/mm/rrrr'), 588, 'ONLINE', 4, 2,75913, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (406,TO_DATE('14/06/2013','dd/mm/rrrr'), 974, 'ONLINE', 4,  2,75908,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (407,TO_DATE('26/06/2013','dd/mm/rrrr'), 608, 'ONLINE', 4,  2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (408,TO_DATE('20/06/2013','dd/mm/rrrr'), 720, 'ONLINE', 4,  2,75872,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (409,TO_DATE('18/06/2013','dd/mm/rrrr'), 565, 'ONLINE', 4,  2,75870,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (410,TO_DATE('17/06/2013','dd/mm/rrrr'), 767, 'ONLINE', 4,  2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (411,TO_DATE('21/06/2013','dd/mm/rrrr'), 554, 'ONLINE', 4,  2,75899,TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (412,TO_DATE('15/06/2013','dd/mm/rrrr'), 846, 'ONLINE', 4,  2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (413,TO_DATE('29/06/2013','dd/mm/rrrr'), 502, 'ONLINE', 4,  2,75909,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (414,TO_DATE('28/06/2013','dd/mm/rrrr'), 588, 'ONLINE', 4,  2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (415,TO_DATE('12/06/2013','dd/mm/rrrr'), 518, 'ONLINE', 5, 1,5005117, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (416,TO_DATE('17/06/2013','dd/mm/rrrr'), 748, 'ONLINE', 5, 1,70751, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (417,TO_DATE('27/06/2013','dd/mm/rrrr'), 548, 'ONLINE', 5, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (418,TO_DATE('28/06/2013','dd/mm/rrrr'), 787, 'ONLINE', 5, 1,70756, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (419,TO_DATE('15/06/2013','dd/mm/rrrr'), 961, 'ONLINE', 5, 1,70747, TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (420,TO_DATE('23/06/2013','dd/mm/rrrr'), 768, 'ONLINE', 5, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (421,TO_DATE('27/06/2013','dd/mm/rrrr'), 542, 'ONLINE', 5, 1,70600, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (422,TO_DATE('18/06/2013','dd/mm/rrrr'), 953, 'ONLINE', 5, 1,851342, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (423,TO_DATE('11/06/2013','dd/mm/rrrr'), 510, 'ONLINE', 5, 2,75913, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (424,TO_DATE('05/06/2013','dd/mm/rrrr'), 841, 'ONLINE', 5,  2,75908, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (425,TO_DATE('29/06/2013','dd/mm/rrrr'), 596, 'ONLINE', 5,  2,75876, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (426,TO_DATE('23/06/2013','dd/mm/rrrr'), 949, 'ONLINE', 5,  2,75872, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (427,TO_DATE('07/06/2013','dd/mm/rrrr'), 918, 'ONLINE', 5,  2,75870, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (428,TO_DATE('18/06/2013','dd/mm/rrrr'), 651, 'ONLINE', 5,  2,75871, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (429,TO_DATE('23/06/2013','dd/mm/rrrr'), 929, 'ONLINE', 5,  2,75899, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (430,TO_DATE('21/06/2013','dd/mm/rrrr'), 934, 'ONLINE', 5,  2,75910, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (431,TO_DATE('12/06/2013','dd/mm/rrrr'), 885, 'ONLINE', 5,  2,75909, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (432,TO_DATE('13/06/2013','dd/mm/rrrr'), 974, 'ONLINE', 5,  2,75873, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (433,TO_DATE('13/06/2013','dd/mm/rrrr'), 614, 'ONLINE', 6, 1,5005117, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (434,TO_DATE('23/06/2013','dd/mm/rrrr'), 868, 'ONLINE', 6, 1,70751, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (435,TO_DATE('24/06/2013','dd/mm/rrrr'), 999, 'ONLINE', 6, 1,851345, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (436,TO_DATE('13/06/2013','dd/mm/rrrr'), 753, 'ONLINE', 6, 1,70756, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (437,TO_DATE('04/06/2013','dd/mm/rrrr'), 605, 'ONLINE', 6, 1,70747, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (438,TO_DATE('18/06/2013','dd/mm/rrrr'), 951, 'ONLINE', 6, 1,851352, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (439,TO_DATE('30/06/2013','dd/mm/rrrr'), 718, 'ONLINE', 6, 1,70600, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (440,TO_DATE('07/06/2013','dd/mm/rrrr'), 689, 'ONLINE', 6, 1,851342, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (441,TO_DATE('26/06/2013','dd/mm/rrrr'), 720, 'ONLINE', 6, 2,75913, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (442,TO_DATE('18/06/2013','dd/mm/rrrr'), 726, 'ONLINE', 6,  2,75908, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (443,TO_DATE('23/06/2013','dd/mm/rrrr'), 611, 'ONLINE', 6,  2,75876, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (444,TO_DATE('05/06/2013','dd/mm/rrrr'), 833, 'ONLINE', 6,  2,75872, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (445,TO_DATE('30/06/2013','dd/mm/rrrr'), 642, 'ONLINE', 6,  2,75870, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (446,TO_DATE('26/06/2013','dd/mm/rrrr'), 741, 'ONLINE', 6,  2,75871, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (447,TO_DATE('14/06/2013','dd/mm/rrrr'), 863, 'ONLINE', 6,  2,75899, TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (448,TO_DATE('26/06/2013','dd/mm/rrrr'), 848, 'ONLINE', 6,  2,75910, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (449,TO_DATE('07/06/2013','dd/mm/rrrr'), 966, 'ONLINE', 6,  2,75909, TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (450,TO_DATE('22/06/2013','dd/mm/rrrr'), 852, 'ONLINE', 6,  2,75873, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (451,TO_DATE('09/06/2013','dd/mm/rrrr'), 926, 'ONLINE', 7, 1,5005117, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (452,TO_DATE('23/06/2013','dd/mm/rrrr'), 926, 'ONLINE', 7, 1,70751, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (453,TO_DATE('14/06/2013','dd/mm/rrrr'), 844, 'ONLINE', 7, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (454,TO_DATE('22/06/2013','dd/mm/rrrr'), 561, 'ONLINE', 7, 1,70756, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (455,TO_DATE('21/06/2013','dd/mm/rrrr'), 554, 'ONLINE', 7, 1,70747, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (456,TO_DATE('25/06/2013','dd/mm/rrrr'), 845, 'ONLINE', 7, 1,851352, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (457,TO_DATE('21/06/2013','dd/mm/rrrr'), 817, 'ONLINE', 7, 1,70600, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (458,TO_DATE('10/06/2013','dd/mm/rrrr'), 510, 'ONLINE', 7, 1,851342, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (459,TO_DATE('03/06/2013','dd/mm/rrrr'), 643, 'ONLINE', 7, 2,75913, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (460,TO_DATE('17/06/2013','dd/mm/rrrr'), 940, 'ONLINE', 7,  2,75908, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (461,TO_DATE('07/06/2013','dd/mm/rrrr'), 519, 'ONLINE', 7,  2,75876, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (462,TO_DATE('24/06/2013','dd/mm/rrrr'), 536, 'ONLINE', 7,  2,75872, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (463,TO_DATE('09/06/2013','dd/mm/rrrr'), 908, 'ONLINE', 7,  2,75870, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (464,TO_DATE('15/06/2013','dd/mm/rrrr'), 546, 'ONLINE', 7,  2,75871, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (465,TO_DATE('02/06/2013','dd/mm/rrrr'), 905, 'ONLINE', 7,  2,75899, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (466,TO_DATE('06/06/2013','dd/mm/rrrr'), 909, 'ONLINE', 7,  2,75910, TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (467,TO_DATE('23/06/2013','dd/mm/rrrr'), 616, 'ONLINE', 7,  2,75909, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (468,TO_DATE('16/06/2013','dd/mm/rrrr'), 814, 'ONLINE', 7,  2,75873, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (469,TO_DATE('02/06/2013','dd/mm/rrrr'), 993, 'ONLINE', 8, 1,5005117, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (470,TO_DATE('08/06/2013','dd/mm/rrrr'), 816, 'ONLINE', 8, 1,70751, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (471,TO_DATE('04/06/2013','dd/mm/rrrr'), 582, 'ONLINE', 8, 1,851345, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (472,TO_DATE('16/06/2013','dd/mm/rrrr'), 755, 'ONLINE', 8, 1,70756, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (473,TO_DATE('28/06/2013','dd/mm/rrrr'), 746, 'ONLINE', 8, 1,70747, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (474,TO_DATE('02/06/2013','dd/mm/rrrr'), 717, 'ONLINE', 8, 1,851352, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (475,TO_DATE('17/06/2013','dd/mm/rrrr'), 966, 'ONLINE', 8, 1,70600, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (476,TO_DATE('06/06/2013','dd/mm/rrrr'), 571, 'ONLINE', 8, 1,851342, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (477,TO_DATE('08/06/2013','dd/mm/rrrr'), 566, 'ONLINE', 8, 2,75913, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (478,TO_DATE('01/06/2013','dd/mm/rrrr'), 663, 'ONLINE', 8,  2,75908, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (479,TO_DATE('10/06/2013','dd/mm/rrrr'), 800, 'ONLINE', 8,  2,75876, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (480,TO_DATE('28/06/2013','dd/mm/rrrr'), 538, 'ONLINE', 8,  2,75872, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (481,TO_DATE('01/06/2013','dd/mm/rrrr'), 858, 'ONLINE', 8,  2,75870, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (482,TO_DATE('30/06/2013','dd/mm/rrrr'), 732, 'ONLINE', 8,  2,75871, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (483,TO_DATE('12/06/2013','dd/mm/rrrr'), 575, 'ONLINE', 8,  2,75899, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (484,TO_DATE('15/06/2013','dd/mm/rrrr'), 841, 'ONLINE', 8,  2,75910, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (485,TO_DATE('18/06/2013','dd/mm/rrrr'), 537, 'ONLINE', 8,  2,75909, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (486,TO_DATE('30/06/2013','dd/mm/rrrr'), 584, 'ONLINE', 8,  2,75873, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (487,TO_DATE('25/06/2013','dd/mm/rrrr'), 708, 'ONLINE', 9, 1,5005117, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (488,TO_DATE('26/06/2013','dd/mm/rrrr'), 545, 'ONLINE', 9, 1,70751, TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (489,TO_DATE('09/06/2013','dd/mm/rrrr'), 558, 'ONLINE', 9, 1,851345, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (490,TO_DATE('24/06/2013','dd/mm/rrrr'), 997, 'ONLINE', 9, 1,70756, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (491,TO_DATE('24/06/2013','dd/mm/rrrr'), 637, 'ONLINE', 9, 1,70747, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (492,TO_DATE('17/06/2013','dd/mm/rrrr'), 650, 'ONLINE', 9, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (493,TO_DATE('13/06/2013','dd/mm/rrrr'), 746, 'ONLINE', 9, 1,70600, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (494,TO_DATE('11/06/2013','dd/mm/rrrr'), 943, 'ONLINE', 9, 1,851342, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (495,TO_DATE('30/06/2013','dd/mm/rrrr'), 799, 'ONLINE', 9, 2,75913, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (496,TO_DATE('13/06/2013','dd/mm/rrrr'), 635, 'ONLINE', 9,  2,75908, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (497,TO_DATE('26/06/2013','dd/mm/rrrr'), 783, 'ONLINE', 9,  2,75876, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (498,TO_DATE('19/06/2013','dd/mm/rrrr'), 723, 'ONLINE', 9,  2,75872, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (499,TO_DATE('13/06/2013','dd/mm/rrrr'), 713, 'ONLINE', 9,  2,75870, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (500,TO_DATE('29/06/2013','dd/mm/rrrr'), 804, 'ONLINE', 9,  2,75871, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (501,TO_DATE('17/06/2013','dd/mm/rrrr'), 547, 'ONLINE', 9,  2,75899, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (502,TO_DATE('07/06/2013','dd/mm/rrrr'), 910, 'ONLINE', 9,  2,75910, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (503,TO_DATE('30/06/2013','dd/mm/rrrr'), 772, 'ONLINE', 9,  2,75909, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (504,TO_DATE('07/06/2013','dd/mm/rrrr'), 760, 'ONLINE', 9,  2,75873, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (505,TO_DATE('30/06/2013','dd/mm/rrrr'), 742, 'ONLINE', 10, 1,5005117, TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (506,TO_DATE('24/06/2013','dd/mm/rrrr'), 829, 'ONLINE', 10, 1,70751, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (507,TO_DATE('05/06/2013','dd/mm/rrrr'), 554, 'ONLINE', 10, 1,851345, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (508,TO_DATE('19/06/2013','dd/mm/rrrr'), 731, 'ONLINE', 10, 1,70756, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (509,TO_DATE('07/06/2013','dd/mm/rrrr'), 506, 'ONLINE', 10, 1,70747, TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (510,TO_DATE('05/06/2013','dd/mm/rrrr'), 795, 'ONLINE', 10, 1,851352, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (511,TO_DATE('02/06/2013','dd/mm/rrrr'), 991, 'ONLINE', 10, 1,70600, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (512,TO_DATE('12/06/2013','dd/mm/rrrr'), 627, 'ONLINE', 10, 1,851342, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (513,TO_DATE('25/06/2013','dd/mm/rrrr'), 527, 'ONLINE', 10, 2,75913, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (514,TO_DATE('27/06/2013','dd/mm/rrrr'), 773, 'ONLINE', 10,  2,75908,TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (515,TO_DATE('22/06/2013','dd/mm/rrrr'), 577, 'ONLINE', 10,  2,75876,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (516,TO_DATE('17/06/2013','dd/mm/rrrr'), 655, 'ONLINE', 10,  2,75872,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (517,TO_DATE('07/06/2013','dd/mm/rrrr'), 822, 'ONLINE', 10,  2,75870,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (518,TO_DATE('15/06/2013','dd/mm/rrrr'), 986, 'ONLINE', 10,  2,75871,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (519,TO_DATE('10/06/2013','dd/mm/rrrr'), 735, 'ONLINE', 10,  2,75899,TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (520,TO_DATE('05/06/2013','dd/mm/rrrr'), 775, 'ONLINE', 10,  2,75910,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (521,TO_DATE('08/06/2013','dd/mm/rrrr'), 531, 'ONLINE', 10,  2,75909,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (522,TO_DATE('08/06/2013','dd/mm/rrrr'), 940, 'ONLINE', 10,  2,75873,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (523,TO_DATE('29/06/2013','dd/mm/rrrr'), 656, 'ONLINE', 11, 1,5005117, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (524,TO_DATE('20/06/2013','dd/mm/rrrr'), 581, 'ONLINE', 11, 1,70751, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (525,TO_DATE('18/06/2013','dd/mm/rrrr'), 908, 'ONLINE', 11, 1,851345, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (526,TO_DATE('06/06/2013','dd/mm/rrrr'), 767, 'ONLINE', 11, 1,70756, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (527,TO_DATE('05/06/2013','dd/mm/rrrr'), 996, 'ONLINE', 11, 1,70747, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (528,TO_DATE('11/06/2013','dd/mm/rrrr'), 964, 'ONLINE', 11, 1,851352, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (529,TO_DATE('22/06/2013','dd/mm/rrrr'), 912, 'ONLINE', 11, 1,70600, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (530,TO_DATE('01/06/2013','dd/mm/rrrr'), 880, 'ONLINE', 11, 1,851342, TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (531,TO_DATE('01/06/2013','dd/mm/rrrr'), 931, 'ONLINE', 11, 2,75913, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (532,TO_DATE('07/06/2013','dd/mm/rrrr'), 749, 'ONLINE', 11,  2,75908,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (533,TO_DATE('02/06/2013','dd/mm/rrrr'), 526, 'ONLINE', 11,  2,75876,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (534,TO_DATE('02/06/2013','dd/mm/rrrr'), 661, 'ONLINE', 11,  2,75872,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (535,TO_DATE('29/06/2013','dd/mm/rrrr'), 699, 'ONLINE', 11,  2,75870,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (536,TO_DATE('16/06/2013','dd/mm/rrrr'), 942, 'ONLINE', 11,  2,75871,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (537,TO_DATE('15/06/2013','dd/mm/rrrr'), 973, 'ONLINE', 11,  2,75899,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (538,TO_DATE('16/06/2013','dd/mm/rrrr'), 574, 'ONLINE', 11,  2,75910,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (539,TO_DATE('03/06/2013','dd/mm/rrrr'), 808, 'ONLINE', 11,  2,75909,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (540,TO_DATE('24/06/2013','dd/mm/rrrr'), 988, 'ONLINE', 11,  2,75873,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (541,TO_DATE('04/06/2013','dd/mm/rrrr'), 944, 'ONLINE', 12, 1,5005117, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (542,TO_DATE('23/06/2013','dd/mm/rrrr'), 977, 'ONLINE', 12, 1,70751, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (543,TO_DATE('10/06/2013','dd/mm/rrrr'), 546, 'ONLINE', 12, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (544,TO_DATE('09/06/2013','dd/mm/rrrr'), 766, 'ONLINE', 12, 1,70756, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (545,TO_DATE('20/06/2013','dd/mm/rrrr'), 752, 'ONLINE', 12, 1,70747, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (546,TO_DATE('06/06/2013','dd/mm/rrrr'), 779, 'ONLINE', 12, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (547,TO_DATE('26/06/2013','dd/mm/rrrr'), 799, 'ONLINE', 12, 1,70600, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (548,TO_DATE('03/06/2013','dd/mm/rrrr'), 876, 'ONLINE', 12, 1,851342, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (549,TO_DATE('30/06/2013','dd/mm/rrrr'), 986, 'ONLINE', 12, 2,75913, TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (550,TO_DATE('21/06/2013','dd/mm/rrrr'), 922, 'ONLINE', 12,  2,75908,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (551,TO_DATE('12/06/2013','dd/mm/rrrr'), 975, 'ONLINE', 12,  2,75876,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (552,TO_DATE('11/06/2013','dd/mm/rrrr'), 783, 'ONLINE', 12,  2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (553,TO_DATE('19/06/2013','dd/mm/rrrr'), 667, 'ONLINE', 12,  2,75870,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (554,TO_DATE('18/06/2013','dd/mm/rrrr'), 807, 'ONLINE', 12,  2,75871,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (555,TO_DATE('08/06/2013','dd/mm/rrrr'), 566, 'ONLINE', 12,  2,75899,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (556,TO_DATE('12/06/2013','dd/mm/rrrr'), 595, 'ONLINE', 12,  2,75910,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (557,TO_DATE('13/06/2013','dd/mm/rrrr'), 553, 'ONLINE', 12,  2,75909,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (558,TO_DATE('27/06/2013','dd/mm/rrrr'), 865, 'ONLINE', 12,  2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (559,TO_DATE('09/06/2013','dd/mm/rrrr'), 615, 'ONLINE', 13, 1,5005117, TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (560,TO_DATE('01/06/2013','dd/mm/rrrr'), 666, 'ONLINE', 13, 1,70751, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (561,TO_DATE('16/06/2013','dd/mm/rrrr'), 684, 'ONLINE', 13, 1,851345, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (562,TO_DATE('13/06/2013','dd/mm/rrrr'), 656, 'ONLINE', 13, 1,70756, TO_DATE('21/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (563,TO_DATE('07/06/2013','dd/mm/rrrr'), 888, 'ONLINE', 13, 1,70747, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (564,TO_DATE('01/06/2013','dd/mm/rrrr'), 502, 'ONLINE', 13, 1,851352, TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (565,TO_DATE('30/06/2013','dd/mm/rrrr'), 810, 'ONLINE', 13, 1,70600, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (566,TO_DATE('20/06/2013','dd/mm/rrrr'), 602, 'ONLINE', 13, 1,851342, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (567,TO_DATE('20/06/2013','dd/mm/rrrr'), 993, 'ONLINE', 13, 2,75913, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (568,TO_DATE('15/06/2013','dd/mm/rrrr'), 665, 'ONLINE', 13,  2,75908,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (569,TO_DATE('21/06/2013','dd/mm/rrrr'), 940, 'ONLINE', 13,  2,75876,TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (570,TO_DATE('05/06/2013','dd/mm/rrrr'), 510, 'ONLINE', 13,  2,75872,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (571,TO_DATE('29/06/2013','dd/mm/rrrr'), 973, 'ONLINE', 13,  2,75870,TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (572,TO_DATE('15/06/2013','dd/mm/rrrr'), 845, 'ONLINE', 13,  2,75871,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (573,TO_DATE('03/06/2013','dd/mm/rrrr'), 648, 'ONLINE', 13,  2,75899,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (574,TO_DATE('05/06/2013','dd/mm/rrrr'), 951, 'ONLINE', 13,  2,75910,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (575,TO_DATE('11/06/2013','dd/mm/rrrr'), 744, 'ONLINE', 13,  2,75909,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (576,TO_DATE('08/06/2013','dd/mm/rrrr'), 518, 'ONLINE', 13,  2,75873,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (577,TO_DATE('17/06/2013','dd/mm/rrrr'), 805, 'ONLINE', 14, 1,5005117, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (578,TO_DATE('28/06/2013','dd/mm/rrrr'), 871, 'ONLINE', 14, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (579,TO_DATE('26/06/2013','dd/mm/rrrr'), 974, 'ONLINE', 14, 1,851345, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (580,TO_DATE('13/06/2013','dd/mm/rrrr'), 602, 'ONLINE', 14, 1,70756, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (581,TO_DATE('15/06/2013','dd/mm/rrrr'), 528, 'ONLINE', 14, 1,70747, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (582,TO_DATE('06/06/2013','dd/mm/rrrr'), 538, 'ONLINE', 14, 1,851352, TO_DATE('25/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (583,TO_DATE('07/06/2013','dd/mm/rrrr'), 780, 'ONLINE', 14, 1,70600, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (584,TO_DATE('01/06/2013','dd/mm/rrrr'), 686, 'ONLINE', 14, 1,851342, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (585,TO_DATE('04/06/2013','dd/mm/rrrr'), 561, 'ONLINE', 14, 2,75913, TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (586,TO_DATE('08/06/2013','dd/mm/rrrr'), 921, 'ONLINE', 14,  2,75908,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (587,TO_DATE('01/06/2013','dd/mm/rrrr'), 926, 'ONLINE', 14,  2,75876,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (588,TO_DATE('26/06/2013','dd/mm/rrrr'), 751, 'ONLINE', 14,  2,75872,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (589,TO_DATE('04/06/2013','dd/mm/rrrr'), 941, 'ONLINE', 14,  2,75870,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (590,TO_DATE('30/06/2013','dd/mm/rrrr'), 734, 'ONLINE', 14,  2,75871,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (591,TO_DATE('14/06/2013','dd/mm/rrrr'), 839, 'ONLINE', 14,  2,75899,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (592,TO_DATE('11/06/2013','dd/mm/rrrr'), 707, 'ONLINE', 14,  2,75910,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (593,TO_DATE('19/06/2013','dd/mm/rrrr'), 890, 'ONLINE', 14,  2,75909,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (594,TO_DATE('02/06/2013','dd/mm/rrrr'), 795, 'ONLINE', 14,  2,75873,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (595,TO_DATE('29/06/2013','dd/mm/rrrr'), 783, 'ONLINE', 15, 1,5005117, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (596,TO_DATE('20/06/2013','dd/mm/rrrr'), 745, 'ONLINE', 15, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (597,TO_DATE('09/06/2013','dd/mm/rrrr'), 999, 'ONLINE', 15, 1,851345, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (598,TO_DATE('07/06/2013','dd/mm/rrrr'), 743, 'ONLINE', 15, 1,70756, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (599,TO_DATE('02/06/2013','dd/mm/rrrr'), 570, 'ONLINE', 15, 1,70747, TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (600,TO_DATE('15/06/2013','dd/mm/rrrr'), 559, 'ONLINE', 15, 1,851352, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (601,TO_DATE('28/06/2013','dd/mm/rrrr'), 737, 'ONLINE', 15, 1,70600, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (602,TO_DATE('09/06/2013','dd/mm/rrrr'), 839, 'ONLINE', 15, 1,851342, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (603,TO_DATE('30/06/2013','dd/mm/rrrr'), 938, 'ONLINE', 15, 2,75913, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (604,TO_DATE('29/06/2013','dd/mm/rrrr'), 552, 'ONLINE', 15,  2,75908,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (605,TO_DATE('11/06/2013','dd/mm/rrrr'), 795, 'ONLINE', 15,  2,75876,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (606,TO_DATE('29/06/2013','dd/mm/rrrr'), 783, 'ONLINE', 15,  2,75872,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (607,TO_DATE('16/06/2013','dd/mm/rrrr'), 930, 'ONLINE', 15,  2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (608,TO_DATE('30/06/2013','dd/mm/rrrr'), 633, 'ONLINE', 15,  2,75871,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (609,TO_DATE('26/06/2013','dd/mm/rrrr'), 893, 'ONLINE', 15,  2,75899,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (610,TO_DATE('21/06/2013','dd/mm/rrrr'), 806, 'ONLINE', 15,  2,75910,TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (611,TO_DATE('10/06/2013','dd/mm/rrrr'), 581, 'ONLINE', 15,  2,75909,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (612,TO_DATE('09/06/2013','dd/mm/rrrr'), 902, 'ONLINE', 15,  2,75873,TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (613,TO_DATE('09/06/2013','dd/mm/rrrr'), 825, 'ONLINE', 16, 1,5005117, TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (614,TO_DATE('22/06/2013','dd/mm/rrrr'), 619, 'ONLINE', 16, 1,70751, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (615,TO_DATE('16/06/2013','dd/mm/rrrr'), 876, 'ONLINE', 16, 1,851345, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (616,TO_DATE('02/06/2013','dd/mm/rrrr'), 875, 'ONLINE', 16, 1,70756, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (617,TO_DATE('20/06/2013','dd/mm/rrrr'), 683, 'ONLINE', 16, 1,70747, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (618,TO_DATE('28/06/2013','dd/mm/rrrr'), 755, 'ONLINE', 16, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (619,TO_DATE('17/06/2013','dd/mm/rrrr'), 505, 'ONLINE', 16, 1,70600, TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (620,TO_DATE('19/06/2013','dd/mm/rrrr'), 999, 'ONLINE', 16, 1,851342, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (621,TO_DATE('03/06/2013','dd/mm/rrrr'), 926, 'ONLINE', 16, 2,75913, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (622,TO_DATE('22/06/2013','dd/mm/rrrr'), 898, 'ONLINE', 16,  2,75908,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (623,TO_DATE('28/06/2013','dd/mm/rrrr'), 917, 'ONLINE', 16,  2,75876,TO_DATE('09/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (624,TO_DATE('07/06/2013','dd/mm/rrrr'), 526, 'ONLINE', 16,  2,75872,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (625,TO_DATE('18/06/2013','dd/mm/rrrr'), 714, 'ONLINE', 16,  2,75870,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (626,TO_DATE('17/06/2013','dd/mm/rrrr'), 812, 'ONLINE', 16,  2,75871,TO_DATE('16/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (627,TO_DATE('24/06/2013','dd/mm/rrrr'), 612, 'ONLINE', 16,  2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (628,TO_DATE('22/06/2013','dd/mm/rrrr'), 566, 'ONLINE', 16,  2,75910,TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (629,TO_DATE('09/06/2013','dd/mm/rrrr'), 744, 'ONLINE', 16,  2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (630,TO_DATE('14/06/2013','dd/mm/rrrr'), 629, 'ONLINE', 16,  2,75873,TO_DATE('26/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (631,TO_DATE('28/06/2013','dd/mm/rrrr'), 598, 'ONLINE', 17, 1,5005117, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (632,TO_DATE('08/06/2013','dd/mm/rrrr'), 569, 'ONLINE', 17, 1,70751, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (633,TO_DATE('21/06/2013','dd/mm/rrrr'), 660, 'ONLINE', 17, 1,851345, TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (634,TO_DATE('18/06/2013','dd/mm/rrrr'), 609, 'ONLINE', 17, 1,70756, TO_DATE('30/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (635,TO_DATE('25/06/2013','dd/mm/rrrr'), 686, 'ONLINE', 17, 1,70747, TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (636,TO_DATE('23/06/2013','dd/mm/rrrr'), 517, 'ONLINE', 17, 1,851352, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (637,TO_DATE('21/06/2013','dd/mm/rrrr'), 947, 'ONLINE', 17, 1,70600, TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (638,TO_DATE('29/06/2013','dd/mm/rrrr'), 649, 'ONLINE', 17, 1,851342, TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (639,TO_DATE('29/06/2013','dd/mm/rrrr'), 982, 'ONLINE', 17, 2,75913, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (640,TO_DATE('28/06/2013','dd/mm/rrrr'), 678, 'ONLINE', 17,  2,75908,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (641,TO_DATE('19/06/2013','dd/mm/rrrr'), 717, 'ONLINE', 17,  2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (642,TO_DATE('26/06/2013','dd/mm/rrrr'), 727, 'ONLINE', 17,  2,75872,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (643,TO_DATE('25/06/2013','dd/mm/rrrr'), 557, 'ONLINE', 17,  2,75870,TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (644,TO_DATE('17/06/2013','dd/mm/rrrr'), 958, 'ONLINE', 17,  2,75871,TO_DATE('10/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (645,TO_DATE('03/06/2013','dd/mm/rrrr'), 579, 'ONLINE', 17,  2,75899,TO_DATE('02/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (646,TO_DATE('15/06/2013','dd/mm/rrrr'), 591, 'ONLINE', 17,  2,75910,TO_DATE('19/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (647,TO_DATE('12/06/2013','dd/mm/rrrr'), 556, 'ONLINE', 17,  2,75909,TO_DATE('08/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (648,TO_DATE('13/06/2013','dd/mm/rrrr'), 974, 'ONLINE', 17,  2,75873,TO_DATE('14/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (649,TO_DATE('03/06/2013','dd/mm/rrrr'), 585, 'ONLINE', 18, 1,5005117, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (650,TO_DATE('26/06/2013','dd/mm/rrrr'), 561, 'ONLINE', 18, 1,70751, TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (651,TO_DATE('24/06/2013','dd/mm/rrrr'), 743, 'ONLINE', 18, 1,851345, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (652,TO_DATE('20/06/2013','dd/mm/rrrr'), 896, 'ONLINE', 18, 1,70756, TO_DATE('01/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (653,TO_DATE('02/06/2013','dd/mm/rrrr'), 546, 'ONLINE', 18, 1,70747, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (654,TO_DATE('10/06/2013','dd/mm/rrrr'), 852, 'ONLINE', 18, 1,851352, TO_DATE('13/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (655,TO_DATE('30/06/2013','dd/mm/rrrr'), 641, 'ONLINE', 18, 1,70600, TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (656,TO_DATE('01/06/2013','dd/mm/rrrr'), 605, 'ONLINE', 18, 1,851342, TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (657,TO_DATE('24/06/2013','dd/mm/rrrr'), 874, 'ONLINE', 18, 2,75913, TO_DATE('20/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (658,TO_DATE('21/06/2013','dd/mm/rrrr'), 899, 'ONLINE', 18,  2,75908,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (659,TO_DATE('05/06/2013','dd/mm/rrrr'), 734, 'ONLINE', 18,  2,75876,TO_DATE('29/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (660,TO_DATE('07/06/2013','dd/mm/rrrr'), 989, 'ONLINE', 18,  2,75872,TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (661,TO_DATE('19/06/2013','dd/mm/rrrr'), 963, 'ONLINE', 18,  2,75870,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (662,TO_DATE('25/06/2013','dd/mm/rrrr'), 791, 'ONLINE', 18,  2,75871,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (663,TO_DATE('04/06/2013','dd/mm/rrrr'), 685, 'ONLINE', 18,  2,75899,TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (664,TO_DATE('12/06/2013','dd/mm/rrrr'), 676, 'ONLINE', 18,  2,75910,TO_DATE('23/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (665,TO_DATE('29/06/2013','dd/mm/rrrr'), 906, 'ONLINE', 18,  2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (666,TO_DATE('07/06/2013','dd/mm/rrrr'), 982, 'ONLINE', 18,  2,75873,TO_DATE('24/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (667,TO_DATE('11/06/2013','dd/mm/rrrr'), 657, 'ONLINE', 19, 1,5005117, TO_DATE('15/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (668,TO_DATE('14/06/2013','dd/mm/rrrr'), 759, 'ONLINE', 19, 1,70751, TO_DATE('11/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (669,TO_DATE('13/06/2013','dd/mm/rrrr'), 903, 'ONLINE', 19, 1,851345, TO_DATE('05/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (670,TO_DATE('17/06/2013','dd/mm/rrrr'), 576, 'ONLINE', 19, 1,70756, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (671,TO_DATE('03/06/2013','dd/mm/rrrr'), 944, 'ONLINE', 19, 1,70747, TO_DATE('22/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (672,TO_DATE('25/06/2013','dd/mm/rrrr'), 831, 'ONLINE', 19, 1,851352, TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (673,TO_DATE('12/06/2013','dd/mm/rrrr'), 717, 'ONLINE', 19, 1,70600, TO_DATE('03/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (674,TO_DATE('20/06/2013','dd/mm/rrrr'), 722, 'ONLINE', 19, 1,851342, TO_DATE('12/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (675,TO_DATE('08/06/2013','dd/mm/rrrr'), 927, 'ONLINE', 19, 2,75913, TO_DATE('04/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (676,TO_DATE('10/06/2013','dd/mm/rrrr'), 829, 'ONLINE', 19,  2,75908,TO_DATE('31/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (677,TO_DATE('15/06/2013','dd/mm/rrrr'), 621, 'ONLINE', 19,  2,75876,TO_DATE('07/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (678,TO_DATE('28/06/2013','dd/mm/rrrr'), 635, 'ONLINE', 19,  2,75872,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (679,TO_DATE('08/06/2013','dd/mm/rrrr'), 869, 'ONLINE', 19,  2,75870,TO_DATE('17/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (680,TO_DATE('20/06/2013','dd/mm/rrrr'), 898, 'ONLINE', 19,  2,75871,TO_DATE('18/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (681,TO_DATE('23/06/2013','dd/mm/rrrr'), 835, 'ONLINE', 19,  2,75899,TO_DATE('06/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (682,TO_DATE('30/06/2013','dd/mm/rrrr'), 978, 'ONLINE', 19,  2,75910,TO_DATE('27/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (683,TO_DATE('15/06/2013','dd/mm/rrrr'), 942, 'ONLINE', 19,  2,75909,TO_DATE('28/05/2013','dd/mm/rrrr'));
insert into PRODUCCION_LOTE values (684,TO_DATE('14/06/2013','dd/mm/rrrr'), 788, 'ONLINE', 19,  2,75873,TO_DATE('15/05/2013','dd/mm/rrrr'));

/*DESCUENTO*/
exec INSERTAR_DESCUENTO(1,TO_DATE('04/06/2014','dd/mm/rrrr'),520);
exec INSERTAR_DESCUENTO(2,TO_DATE('04/08/2015','dd/mm/rrrr'),300);
exec INSERTAR_DESCUENTO(3,TO_DATE('04/07/2014','dd/mm/rrrr'),500);
exec INSERTAR_DESCUENTO(4,TO_DATE('04/02/2015','dd/mm/rrrr'),600);
exec INSERTAR_DESCUENTO(5,TO_DATE('04/05/2014','dd/mm/rrrr'),700);
exec INSERTAR_DESCUENTO(6,TO_DATE('04/08/2015','dd/mm/rrrr'),500);
exec INSERTAR_DESCUENTO(7,TO_DATE('04/09/2014','dd/mm/rrrr'),550);
exec INSERTAR_DESCUENTO(8,TO_DATE('04/11/2015','dd/mm/rrrr'),620);
exec INSERTAR_DESCUENTO(9,TO_DATE('04/10/2014','dd/mm/rrrr'),650);
exec INSERTAR_DESCUENTO(10,TO_DATE('04/04/2015','dd/mm/rrrr'),730);

/*FECHAS*/
insert into fechas values (to_date('11/05/2016','dd/mm/rrrr'),
TOUR_DIAS(dias_va(dia(to_date('16:00','HH24:MI'),'Bienvenida',null),dia(to_date('19:00','HH24:MI'),' Encuentro con diseñadores de modelos Lego:','*Conozca su trabajo diario en el Grupo Lego.*Participe en un evento de construcción de un tema Lego.* Discuta su experiencia individual en construcciones Lego.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),'Visite la casa de Ole Kirks','* Conozca sobre la historia del Grupo Lego incluyendo su cultura y valores.* Visite la histórica colección de modelos que datan desde 1932.'),dia(to_date('13:00','HH24:MI'),'Tour a la fábrica “Kornmarken” de Lego','*Camine y vea la planta de moldeado totalmente automatizada y su almacén.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),' Tour LEGOLAND® Billund Backstage','*Vea los secretos detrás de los escenarios del Parque Legoland de Billund.*Visite el parque con los diseñadores.*Vea cómo opera el Parque.*Visite el departamento de luz y sonido* Luego del tour guiado explore el Parque y las atracciones por su cuenta!'),dia(to_date('14:00','HH24:MI'),' Finalmente reciba un regalo exclusivo de Lego!','* No le diremos qué es el regalo pero sí que el dueño del Grupo Lego estuvo involucrado directamente en la elaboración del mismo.'))
        )
,2191);
insert into fechas values (to_date('25/05/2016','dd/mm/rrrr'),
TOUR_DIAS(dias_va(dia(to_date('16:00','HH24:MI'),'Bienvenida',null),dia(to_date('19:00','HH24:MI'),' Encuentro con diseñadores de modelos Lego:','*Conozca su trabajo diario en el Grupo Lego.*Participe en un evento de construcción de un tema Lego.* Discuta su experiencia individual en construcciones Lego.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),'Visite la casa de Ole Kirks','* Conozca sobre la historia del Grupo Lego incluyendo su cultura y valores.* Visite la histórica colección de modelos que datan desde 1932.'),dia(to_date('13:00','HH24:MI'),'Tour a la fábrica “Kornmarken” de Lego','*Camine y vea la planta de moldeado totalmente automatizada y su almacén.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),' Tour LEGOLAND® Billund Backstage','*Vea los secretos detrás de los escenarios del Parque Legoland de Billund.*Visite el parque con los diseñadores.*Vea cómo opera el Parque.*Visite el departamento de luz y sonido* Luego del tour guiado explore el Parque y las atracciones por su cuenta!'),dia(to_date('14:00','HH24:MI'),' Finalmente reciba un regalo exclusivo de Lego!','* No le diremos qué es el regalo pero sí que el dueño del Grupo Lego estuvo involucrado directamente en la elaboración del mismo.'))
        )
,2191);
insert into fechas values (to_date('08/06/2016','dd/mm/rrrr'),
TOUR_DIAS(dias_va(dia(to_date('16:00','HH24:MI'),'Bienvenida',null),dia(to_date('19:00','HH24:MI'),' Encuentro con diseñadores de modelos Lego:','*Conozca su trabajo diario en el Grupo Lego.*Participe en un evento de construcción de un tema Lego.* Discuta su experiencia individual en construcciones Lego.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),'Visite la casa de Ole Kirks','* Conozca sobre la historia del Grupo Lego incluyendo su cultura y valores.* Visite la histórica colección de modelos que datan desde 1932.'),dia(to_date('13:00','HH24:MI'),'Tour a la fábrica “Kornmarken” de Lego','*Camine y vea la planta de moldeado totalmente automatizada y su almacén.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),' Tour LEGOLAND® Billund Backstage','*Vea los secretos detrás de los escenarios del Parque Legoland de Billund.*Visite el parque con los diseñadores.*Vea cómo opera el Parque.*Visite el departamento de luz y sonido* Luego del tour guiado explore el Parque y las atracciones por su cuenta!'),dia(to_date('14:00','HH24:MI'),' Finalmente reciba un regalo exclusivo de Lego!','* No le diremos qué es el regalo pero sí que el dueño del Grupo Lego estuvo involucrado directamente en la elaboración del mismo.'))
        )
,2191);
insert into fechas values (to_date('22/06/2016','dd/mm/rrrr'),
TOUR_DIAS(dias_va(dia(to_date('16:00','HH24:MI'),'Bienvenida',null),dia(to_date('19:00','HH24:MI'),' Encuentro con diseñadores de modelos Lego:','*Conozca su trabajo diario en el Grupo Lego.*Participe en un evento de construcción de un tema Lego.* Discuta su experiencia individual en construcciones Lego.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),'Visite la casa de Ole Kirks','* Conozca sobre la historia del Grupo Lego incluyendo su cultura y valores.* Visite la histórica colección de modelos que datan desde 1932.'),dia(to_date('13:00','HH24:MI'),'Tour a la fábrica “Kornmarken” de Lego','*Camine y vea la planta de moldeado totalmente automatizada y su almacén.'))
         ,dias_va(dia(to_date('09:30','HH24:MI'),' Tour LEGOLAND® Billund Backstage','*Vea los secretos detrás de los escenarios del Parque Legoland de Billund.*Visite el parque con los diseñadores.*Vea cómo opera el Parque.*Visite el departamento de luz y sonido* Luego del tour guiado explore el Parque y las atracciones por su cuenta!'),dia(to_date('14:00','HH24:MI'),' Finalmente reciba un regalo exclusivo de Lego!','* No le diremos qué es el regalo pero sí que el dueño del Grupo Lego estuvo involucrado directamente en la elaboración del mismo.'))
        )
,2191);

/*------	PEDIDO		------*/
insert into PEDIDO values (1, 6, 1, '18/12/2015', '24/12/2015', '25/12/2015', '20/12/2015');
insert into PEDIDO values (2, 7, 2, '31/08/2014', '05/09/2014', null, '02/09/2014');
insert into PEDIDO values (3, 9, 3, '24/03/2016', '26/03/2016',null, null);
insert into PEDIDO values (4, 16, 4, '11/12/2015', '18/12/2015', '14/12/2015', '13/12/2015');
insert into PEDIDO values (5, 9, 5, '11/03/2016', '25/03/2016', null, '13/03/2016');
insert into PEDIDO values (6, 13, 6, '12/02/2014', '26/02/2014',null, null);
insert into PEDIDO values (7, 3, 7, '06/10/2014', '17/10/2014', null, '10/10/2014');
insert into PEDIDO values (8, 5, 8, '02/03/2014', '16/03/2014', '09/03/2014', '04/03/2014');
insert into PEDIDO values (9, 10, 9, '08/09/2015', '12/09/2015', null, '14/09/2015');
insert into PEDIDO values (10, 17, 10, '13/12/2015', '19/12/2015',null, null);
insert into PEDIDO values (11, 4, 11, '12/03/2016', '16/03/2016', null, '14/03/2016');
insert into PEDIDO values (12, 11, 12, '19/01/2016', '21/01/2016', '27/01/2016', '25/01/2016');
insert into PEDIDO values (13, 17, 13, '23/01/2016', '26/01/2016', '03/02/2016', '29/01/2016');
insert into PEDIDO values (14, 8, 14, '06/11/2015', '10/11/2015', '13/11/2015', '09/11/2015');
insert into PEDIDO values (15, 6, 15, '17/02/2016', '23/02/2016', '26/02/2016', '24/02/2016');
insert into PEDIDO values (16, 8, 16, '14/07/2014', '21/07/2014', '20/07/2014', '18/07/2014');
insert into PEDIDO values (17, 4, 17, '10/11/2015', '13/11/2015', '20/11/2015', '16/11/2015');
insert into PEDIDO values (1, 16, 18, '01/04/2015', '03/04/2015',null, null);
insert into PEDIDO values (2, 11, 19, '19/06/2014', '01/07/2014', '23/06/2014', '22/06/2014');
insert into PEDIDO values (1, 15, 20, '29/07/2015', '11/08/2015', null, '05/08/2015');

/*detalle_pedido*/
exec INSERTAR_DETALLE_PEDIDO(1,8,5005117,100,110);
exec INSERTAR_DETALLE_PEDIDO(2,1,5005117,200,100);
exec INSERTAR_DETALLE_PEDIDO(3,3,5005117,100,150);
exec INSERTAR_DETALLE_PEDIDO(4,4,5005117,200,100);
exec INSERTAR_DETALLE_PEDIDO(5,5,5005117,100,120);
exec INSERTAR_DETALLE_PEDIDO(6,5,851345,200,130);
exec INSERTAR_DETALLE_PEDIDO(7,2,851345,100,150);
exec INSERTAR_DETALLE_PEDIDO(8,6,851345,200,500);
exec INSERTAR_DETALLE_PEDIDO(9,9,851345,100,200);
exec INSERTAR_DETALLE_PEDIDO(10,8,851345,200,300);
exec INSERTAR_DETALLE_PEDIDO(11,5,70747,100,200);
exec INSERTAR_DETALLE_PEDIDO(12,4,851345,200,100);
exec INSERTAR_DETALLE_PEDIDO(13,5,70756,100,190);
exec INSERTAR_DETALLE_PEDIDO(14,4,70747,200,250);
exec INSERTAR_DETALLE_PEDIDO(15,1,70747,100,300);
exec INSERTAR_DETALLE_PEDIDO(16,8,70747,200,100);
exec INSERTAR_DETALLE_PEDIDO(17,2,851352,100,150);
exec INSERTAR_DETALLE_PEDIDO(18,7,851352,200,500);
exec INSERTAR_DETALLE_PEDIDO(19,9,851352,100,600);
exec INSERTAR_DETALLE_PEDIDO(20,3,851352,200,100);

/*det_lote*/
exec INSERTAR_DET_LOTE(1,1,1,200);
exec INSERTAR_DET_LOTE(2,2,2,200);
exec INSERTAR_DET_LOTE(3,3,3,200);
exec INSERTAR_DET_LOTE(4,4,4,200);
exec INSERTAR_DET_LOTE(5,5,5,200);
exec INSERTAR_DET_LOTE(6,6,6,200);
exec INSERTAR_DET_LOTE(7,7,7,200);
exec INSERTAR_DET_LOTE(8,8,8,200);
exec INSERTAR_DET_LOTE(9,9,9,200);
exec INSERTAR_DET_LOTE(10,10,10,200);
exec INSERTAR_DET_LOTE(11,11,11,200);
exec INSERTAR_DET_LOTE(12,12,12,200);
exec INSERTAR_DET_LOTE(13,13,13,200);
exec INSERTAR_DET_LOTE(14,14,14,200);
exec INSERTAR_DET_LOTE(15,15,15,200);
exec INSERTAR_DET_LOTE(16,16,16,200);
exec INSERTAR_DET_LOTE(17,17,17,200);
exec INSERTAR_DET_LOTE(18,18,18,200);
exec INSERTAR_DET_LOTE(19,19,19,200);
exec INSERTAR_DET_LOTE(20,20,20,200);
