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
*/
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
/*
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
*/



/*------	PRODUCTO	------*/
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



/*------	FABRICA		------*/
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



/*------	TIENDA		------*/
INSERT INTO TIENDA VALUES (1,19,NULL,NULL,DIRECCION('SOUTH AVENUE','164',55425,'5525',TELEFONOS_VA(TELEFONO(1,952,8588949))));
INSERT INTO TIENDA VALUES (2,20,NULL,NULL,DIRECCION('WESTCHESTER AVE.','125',10601,'',TELEFONOS_VA(TELEFONO(1,914,2598282))));
INSERT INTO TIENDA VALUES (3,21,NULL,NULL,DIRECCION('NORTH MAYFAIR RD.','SPACE 0635',53226,'',TELEFONOS_VA(TELEFONO(1,414,7780280))));
INSERT INTO TIENDA VALUES (4,24,NULL,NULL,DIRECCION('LIMBECKERSTRAßE','25',45127,'',TELEFONOS_VA(TELEFONO(49,201,2698927))));
INSERT INTO TIENDA VALUES (5,25,NULL,NULL,DIRECCION('TAUENTZIENSTRAßE','20',10789,'',TELEFONOS_VA(TELEFONO(49,30,2101622))));
INSERT INTO TIENDA VALUES (6,26,NULL,NULL,DIRECCION('STIFTSTRAßE','MyZeil Einkaufszentrum',60313,'',TELEFONOS_VA(TELEFONO(49,69,2097769))));
INSERT INTO TIENDA VALUES (7,27,NULL,NULL,DIRECCION('Lloyd St.','Arndale Shopping Centre',55425,'M4 3AQ',TELEFONOS_VA(TELEFONO(44,161,8192272))));
INSERT INTO TIENDA VALUES (8,28,NULL,NULL,DIRECCION('Hanover St.','Liverpool ONE Shopping Centre',55426,'L1 8BJ',TELEFONOS_VA(TELEFONO(44,151,7086017))));
INSERT INTO TIENDA VALUES (9,29,NULL,NULL,DIRECCION('Metrocentre','Unit 73',55427,'NE11 9YG',TELEFONOS_VA(TELEFONO(44,191,4609049))));
INSERT INTO TIENDA VALUES (10,30,NULL,NULL,DIRECCION('PORTAGE AVE.','1485',55428,'R3G 0W4',TELEFONOS_VA(TELEFONO(1,204,7741801))));
INSERT INTO TIENDA VALUES (11,31,NULL,NULL,DIRECCION('Sherway Gardens Rd.','25',55429,'#1066',TELEFONOS_VA(TELEFONO(1,416,6952433))));
INSERT INTO TIENDA VALUES (12,32,NULL,NULL,DIRECCION('111 ST NW','5015',55430,'Space #424',TELEFONOS_VA(TELEFONO(1,780,4374567))));
INSERT INTO TIENDA VALUES (13,33,NULL,NULL,DIRECCION('SCS-Straße','',2334,'Unit G103',TELEFONOS_VA()));
INSERT INTO TIENDA VALUES (14,34,NULL,NULL,DIRECCION('Turnhoutsebaan','5',2110,'Space 526',TELEFONOS_VA(TELEFONO(32,03,3537831))));
INSERT INTO TIENDA VALUES (15,35,NULL,NULL,DIRECCION('VIMMELSKAFTET','',1161,'37',TELEFONOS_VA(TELEFONO(45,521,59157))));
INSERT INTO TIENDA VALUES (16,36,NULL,NULL,DIRECCION('Avenue Paul Séramy','DisneyLand Paris',77700,'',TELEFONOS_VA(TELEFONO(33,161,103319))));
INSERT INTO TIENDA VALUES (17,37,NULL,NULL,DIRECCION('Evenemangsgatan','169',16956,'56',TELEFONOS_VA(TELEFONO(46,827,7735))));



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



/*------	HISTORICO_PRODUCTO		------*/
insert into HISTORICO_PRODUCTO values (1, 1, 1,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 2,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 3,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 4,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 5,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 6,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 7,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 1, 8,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2, 9,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,10,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,11,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,12,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,13,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,14,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,15,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,16,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,17,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (1, 2,18,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 1,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 2,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 3,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 4,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 5,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 6,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 7,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 1, 8,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2, 9,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,10,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,11,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,12,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,13,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,14,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,15,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,16,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,17,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (2, 2,18,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 1,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 2,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 3,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 4,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 5,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 6,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 7,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 1, 8,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2, 9,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,10,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,11,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,12,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,13,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,14,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,15,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,16,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,17,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (3, 2,18,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 1,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 2,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 3,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 4,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 5,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 6,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 7,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 1, 8,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2, 9,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,10,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,11,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,12,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,13,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,14,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,15,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,16,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,17,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (4, 2,18,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 1,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 2,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 3,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 4,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 5,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 6,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 7,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 1, 8,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2, 9,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,10,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,11,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,12,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,13,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,14,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,15,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,16,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,17,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (5, 2,18,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 1,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 2,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 3,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 4,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 5,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 6,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 7,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 1, 8,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2, 9,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,10,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,11,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,12,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,13,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,14,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,15,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,16,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,17,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (6, 2,18,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 1,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 2,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 3,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 4,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 5,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 6,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 7,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 1, 8,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2, 9,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,10,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,11,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,12,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,13,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,14,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,15,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,16,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,17,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (7, 2,18,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 1,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 2,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 3,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 4,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 5,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 6,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 7,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 1, 8,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2, 9,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,10,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,11,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,12,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,13,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,14,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,15,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,16,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,17,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (8, 2,18,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 1,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 2,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 3,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 4,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 5,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 6,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 7,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 1, 8,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2, 9,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,10,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,11,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,12,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,13,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,14,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,15,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,16,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,17,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (9, 2,18,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 1,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 2,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 3,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 4,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 5,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 6,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 7,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,1, 8,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2, 9,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,10,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,11,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,12,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,13,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,14,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,15,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,16,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,17,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (10,2,18,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 1,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 2,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 3,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 4,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 5,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 6,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 7,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,1, 8,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2, 9,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,10,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,11,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,12,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,13,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,14,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,15,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,16,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,17,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (11,2,18,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 1,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 2,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 3,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 4,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 5,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 6,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 7,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,1, 8,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2, 9,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,10,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,11,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,12,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,13,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,14,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,15,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,16,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,17,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (12,2,18,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 1,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 2,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 3,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 4,TO_DATE('21/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 5,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 6,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 7,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,1, 8,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2, 9,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,10,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,11,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,12,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,13,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,14,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,15,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,16,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,17,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (13,2,18,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 1,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 2,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 3,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 4,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 5,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 6,TO_DATE('25/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 7,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,1, 8,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2, 9,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,10,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,11,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,12,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,13,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,14,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,15,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,16,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,17,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (14,2,18,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 1,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 2,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 3,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 4,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 5,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 6,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 7,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,1, 8,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2, 9,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,10,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,11,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,12,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,13,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,14,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,15,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,16,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,17,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (15,2,18,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 1,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 2,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 3,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 4,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 5,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 6,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 7,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,1, 8,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2, 9,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,10,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,11,TO_DATE('09/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,12,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,13,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,14,TO_DATE('16/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,15,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,16,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,17,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (16,2,18,TO_DATE('26/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 1,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 2,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 3,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 4,TO_DATE('30/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 5,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 6,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 7,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,1, 8,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2, 9,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,10,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,11,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,12,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,13,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,14,TO_DATE('10/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,15,TO_DATE('02/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,16,TO_DATE('19/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,17,TO_DATE('08/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (17,2,18,TO_DATE('14/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 1,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 2,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 3,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 4,TO_DATE('01/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 5,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 6,TO_DATE('13/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 7,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,1, 8,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2, 9,TO_DATE('20/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,10,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,11,TO_DATE('29/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,12,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,13,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,14,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,15,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,16,TO_DATE('23/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,17,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (18,2,18,TO_DATE('24/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 1,TO_DATE('15/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 2,TO_DATE('11/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 3,TO_DATE('05/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 4,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 5,TO_DATE('22/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 6,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 7,TO_DATE('03/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,1, 8,TO_DATE('12/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2, 9,TO_DATE('04/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,10,TO_DATE('31/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,11,TO_DATE('07/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,12,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,13,TO_DATE('17/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,14,TO_DATE('18/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,15,TO_DATE('06/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,16,TO_DATE('27/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,17,TO_DATE('28/05/2013','dd/mm/rrrr'), null);
insert into HISTORICO_PRODUCTO values (19,2,18,TO_DATE('15/05/2013','dd/mm/rrrr'), null); 



/*------	PRODUCCION_LOTE		------*/
insert into PRODUCCION_LOTE values (1, '11/06/2013', 750, 'TIENDA', 1, 1, 1, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (2, '09/06/2013', 966, 'TIENDA', 1, 1, 2, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (3, '22/06/2013', 796, 'TIENDA', 1, 1, 3, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (4, '29/06/2013', 732, 'TIENDA', 1, 1, 4, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (5, '30/06/2013', 730, 'TIENDA', 1, 1, 5, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (6, '27/06/2013', 795, 'TIENDA', 1, 1, 6, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (7, '25/06/2013', 772, 'TIENDA', 1, 1, 7, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (8, '25/06/2013', 944, 'TIENDA', 1, 1, 8, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (9, '18/06/2013', 926, 'TIENDA', 1, 2, 9, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (10, '12/06/2013', 874, 'TIENDA', 1,  2,10,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (11, '05/06/2013', 983, 'TIENDA', 1,  2,11,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (12, '26/06/2013', 842, 'TIENDA', 1,  2,12,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (13, '03/06/2013', 611, 'TIENDA', 1,  2,13,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (14, '04/06/2013', 632, 'TIENDA', 1,  2,14,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (15, '10/06/2013', 595, 'TIENDA', 1,  2,15,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (16, '10/06/2013', 770, 'TIENDA', 1,  2,16,TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (17, '11/06/2013', 995, 'TIENDA', 1,  2,17,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (18, '27/06/2013', 945, 'TIENDA', 1,  2,18,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (19, '19/06/2013', 857, 'TIENDA', 2, 1, 1, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (20, '19/06/2013', 514, 'TIENDA', 2, 1, 2, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (21, '08/06/2013', 887, 'TIENDA', 2, 1, 3, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (22, '30/06/2013', 630, 'TIENDA', 2, 1, 4, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (23, '09/06/2013', 750, 'TIENDA', 2, 1, 5, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (24, '14/06/2013', 684, 'TIENDA', 2, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (25, '03/06/2013', 572, 'TIENDA', 2, 1, 7, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (26, '24/06/2013', 958, 'TIENDA', 2, 1, 8, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (27, '29/06/2013', 689, 'TIENDA', 2, 2, 9, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (28, '07/06/2013', 649, 'TIENDA', 2,  2,10,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (29, '02/06/2013', 549, 'TIENDA', 2,  2,11,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (30, '04/06/2013', 634, 'TIENDA', 2,  2,12,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (31, '02/06/2013', 857, 'TIENDA', 2,  2,13,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (32, '22/06/2013', 719, 'TIENDA', 2,  2,14,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (33, '16/06/2013', 525, 'TIENDA', 2,  2,15,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (34, '20/06/2013', 892, 'TIENDA', 2,  2,16,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (35, '14/06/2013', 780, 'TIENDA', 2,  2,17,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (36, '08/06/2013', 620, 'TIENDA', 2,  2,18,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (37, '09/06/2013', 650, 'TIENDA', 3, 1, 1, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (38, '02/06/2013', 686, 'TIENDA', 3, 1, 2, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (39, '11/06/2013', 787, 'TIENDA', 3, 1, 3, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (40, '25/06/2013', 749, 'TIENDA', 3, 1, 4, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (41, '24/06/2013', 821, 'TIENDA', 3, 1, 5, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (42, '10/06/2013', 890, 'TIENDA', 3, 1, 6, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (43, '09/06/2013', 616, 'TIENDA', 3, 1, 7, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (44, '28/06/2013', 759, 'TIENDA', 3, 1, 8, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (45, '09/06/2013', 966, 'TIENDA', 3, 2, 9, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (46, '13/06/2013', 958, 'TIENDA', 3,  2,10,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (47, '26/06/2013', 700, 'TIENDA', 3,  2,11,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (48, '25/06/2013', 681, 'TIENDA', 3,  2,12,TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (49, '23/06/2013', 826, 'TIENDA', 3,  2,13,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (50, '26/06/2013', 783, 'TIENDA', 3,  2,14,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (51, '08/06/2013', 811, 'TIENDA', 3,  2,15,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (52, '30/06/2013', 612, 'TIENDA', 3,  2,16,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (53, '05/06/2013', 676, 'TIENDA', 3,  2,17,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (54, '28/06/2013', 909, 'TIENDA', 3,  2,18,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (55, '10/06/2013', 517, 'TIENDA', 4, 1, 1, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (56, '06/06/2013', 971, 'TIENDA', 4, 1, 2, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (57, '05/06/2013', 754, 'TIENDA', 4, 1, 3, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (58, '25/06/2013', 708, 'TIENDA', 4, 1, 4, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (59, '15/06/2013', 849, 'TIENDA', 4, 1, 5, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (60, '28/06/2013', 741, 'TIENDA', 4, 1, 6, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (61, '23/06/2013', 526, 'TIENDA', 4, 1, 7, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (62, '28/06/2013', 836, 'TIENDA', 4, 1, 8, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (63, '20/06/2013', 613, 'TIENDA', 4, 2, 9, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (64, '26/06/2013', 501, 'TIENDA', 4,  2,10,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (65, '11/06/2013', 793, 'TIENDA', 4,  2,11,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (66, '06/06/2013', 569, 'TIENDA', 4,  2,12,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (67, '21/06/2013', 812, 'TIENDA', 4,  2,13,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (68, '18/06/2013', 620, 'TIENDA', 4,  2,14,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (69, '04/06/2013', 933, 'TIENDA', 4,  2,15,TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (70, '17/06/2013', 977, 'TIENDA', 4,  2,16,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (71, '05/06/2013', 591, 'TIENDA', 4,  2,17,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (72, '24/06/2013', 630, 'TIENDA', 4,  2,18,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (73, '15/06/2013', 934, 'TIENDA', 5, 1, 1, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (74, '15/06/2013', 914, 'TIENDA', 5, 1, 2, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (75, '05/06/2013', 812, 'TIENDA', 5, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (76, '01/06/2013', 718, 'TIENDA', 5, 1, 4, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (77, '06/06/2013', 521, 'TIENDA', 5, 1, 5, TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (78, '27/06/2013', 686, 'TIENDA', 5, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (79, '11/06/2013', 516, 'TIENDA', 5, 1, 7, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (80, '10/06/2013', 511, 'TIENDA', 5, 1, 8, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (81, '02/06/2013', 543, 'TIENDA', 5, 2, 9, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (82, '24/06/2013', 537, 'TIENDA', 5,  2,10,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (83, '29/06/2013', 549, 'TIENDA', 5,  2,11,TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (84, '29/06/2013', 980, 'TIENDA', 5,  2,12,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (85, '08/06/2013', 588, 'TIENDA', 5,  2,13,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (86, '22/06/2013', 592, 'TIENDA', 5,  2,14,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (87, '04/06/2013', 569, 'TIENDA', 5,  2,15,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (88, '15/06/2013', 542, 'TIENDA', 5,  2,16,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (89, '09/06/2013', 997, 'TIENDA', 5,  2,17,TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (90, '19/06/2013', 861, 'TIENDA', 5,  2,18,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (91, '30/06/2013', 844, 'TIENDA', 6, 1, 1, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (92, '30/06/2013', 909, 'TIENDA', 6, 1, 2, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (93, '22/06/2013', 524, 'TIENDA', 6, 1, 3, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (94, '05/06/2013', 893, 'TIENDA', 6, 1, 4, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (95, '04/06/2013', 978, 'TIENDA', 6, 1, 5, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (96, '26/06/2013', 806, 'TIENDA', 6, 1, 6, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (97, '15/06/2013', 724, 'TIENDA', 6, 1, 7, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (98, '05/06/2013', 822, 'TIENDA', 6, 1, 8, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (99, '26/06/2013', 885, 'TIENDA', 6, 2, 9, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (100, '01/06/2013', 779, 'TIENDA', 6,  2,10,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (101, '19/06/2013', 968, 'TIENDA', 6,  2,11,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (102, '18/06/2013', 675, 'TIENDA', 6,  2,12,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (103, '12/06/2013', 957, 'TIENDA', 6,  2,13,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (104, '26/06/2013', 960, 'TIENDA', 6,  2,14,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (105, '26/06/2013', 871, 'TIENDA', 6,  2,15,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (106, '26/06/2013', 954, 'TIENDA', 6,  2,16,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (107, '28/06/2013', 799, 'TIENDA', 6,  2,17,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (108, '17/06/2013', 640, 'TIENDA', 6,  2,18,TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (109, '17/06/2013', 840, 'TIENDA', 7, 1, 1, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (110, '23/06/2013', 591, 'TIENDA', 7, 1, 2, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (111, '26/06/2013', 830, 'TIENDA', 7, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (112, '17/06/2013', 715, 'TIENDA', 7, 1, 4, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (113, '08/06/2013', 918, 'TIENDA', 7, 1, 5, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (114, '09/06/2013', 853, 'TIENDA', 7, 1, 6, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (115, '18/06/2013', 693, 'TIENDA', 7, 1, 7, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (116, '25/06/2013', 518, 'TIENDA', 7, 1, 8, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (117, '22/06/2013', 507, 'TIENDA', 7, 2, 9, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (118, '15/06/2013', 617, 'TIENDA', 7,  2,10,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (119, '28/06/2013', 873, 'TIENDA', 7,  2,11,TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (120, '06/06/2013', 640, 'TIENDA', 7,  2,12,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (121, '25/06/2013', 772, 'TIENDA', 7,  2,13,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (122, '30/06/2013', 849, 'TIENDA', 7,  2,14,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (123, '25/06/2013', 692, 'TIENDA', 7,  2,15,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (124, '29/06/2013', 581, 'TIENDA', 7,  2,16,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (125, '30/06/2013', 725, 'TIENDA', 7,  2,17,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (126, '08/06/2013', 565, 'TIENDA', 7,  2,18,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (127, '29/06/2013', 783, 'TIENDA', 8, 1, 1, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (128, '02/06/2013', 919, 'TIENDA', 8, 1, 2, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (129, '23/06/2013', 976, 'TIENDA', 8, 1, 3, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (130, '01/06/2013', 669, 'TIENDA', 8, 1, 4, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (131, '14/06/2013', 911, 'TIENDA', 8, 1, 5, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (132, '27/06/2013', 976, 'TIENDA', 8, 1, 6, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (133, '28/06/2013', 520, 'TIENDA', 8, 1, 7, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (134, '07/06/2013', 993, 'TIENDA', 8, 1, 8, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (135, '22/06/2013', 933, 'TIENDA', 8, 2, 9, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (136, '16/06/2013', 915, 'TIENDA', 8,  2,10,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (137, '06/06/2013', 832, 'TIENDA', 8,  2,11,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (138, '16/06/2013', 957, 'TIENDA', 8,  2,12,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (139, '23/06/2013', 748, 'TIENDA', 8,  2,13,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (140, '18/06/2013', 695, 'TIENDA', 8,  2,14,TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (141, '28/06/2013', 839, 'TIENDA', 8,  2,15,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (142, '22/06/2013', 694, 'TIENDA', 8,  2,16,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (143, '19/06/2013', 723, 'TIENDA', 8,  2,17,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (144, '30/06/2013', 834, 'TIENDA', 8,  2,18,TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (145, '16/06/2013', 901, 'TIENDA', 9, 1, 1, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (146, '09/06/2013', 771, 'TIENDA', 9, 1, 2, TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (147, '16/06/2013', 704, 'TIENDA', 9, 1, 3, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (148, '23/06/2013', 755, 'TIENDA', 9, 1, 4, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (149, '29/06/2013', 903, 'TIENDA', 9, 1, 5, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (150, '17/06/2013', 589, 'TIENDA', 9, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (151, '25/06/2013', 682, 'TIENDA', 9, 1, 7, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (152, '09/06/2013', 861, 'TIENDA', 9, 1, 8, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (153, '05/06/2013', 842, 'TIENDA', 9, 2, 9, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (154, '28/06/2013', 636, 'TIENDA', 9,  2,10,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (155, '20/06/2013', 652, 'TIENDA', 9,  2,11,TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (156, '10/06/2013', 550, 'TIENDA', 9,  2,12,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (157, '21/06/2013', 607, 'TIENDA', 9,  2,13,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (158, '09/06/2013', 811, 'TIENDA', 9,  2,14,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (159, '23/06/2013', 999, 'TIENDA', 9,  2,15,TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (160, '03/06/2013', 603, 'TIENDA', 9,  2,16,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (161, '12/06/2013', 887, 'TIENDA', 9,  2,17,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (162, '22/06/2013', 853, 'TIENDA', 9,  2,18,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (163, '19/06/2013', 775, 'TIENDA', 10, 1, 1,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (164, '20/06/2013', 846, 'TIENDA', 10, 1, 2,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (165, '27/06/2013', 864, 'TIENDA', 10, 1, 3,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (166, '09/06/2013', 594, 'TIENDA', 10, 1, 4,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (167, '12/06/2013', 600, 'TIENDA', 10, 1, 5,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (168, '20/06/2013', 570, 'TIENDA', 10, 1, 6,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (169, '03/06/2013', 622, 'TIENDA', 10, 1, 7,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (170, '13/06/2013', 779, 'TIENDA', 10, 1, 8,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (171, '04/06/2013', 960, 'TIENDA', 10, 2, 9,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (172, '01/06/2013', 789, 'TIENDA', 10,  2,10, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (173, '30/06/2013', 694, 'TIENDA', 10,  2,11, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (174, '11/06/2013', 998, 'TIENDA', 10,  2,12, TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (175, '30/06/2013', 732, 'TIENDA', 10,  2,13, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (176, '27/06/2013', 805, 'TIENDA', 10,  2,14, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (177, '21/06/2013', 567, 'TIENDA', 10,  2,15, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (178, '04/06/2013', 596, 'TIENDA', 10,  2,16, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (179, '18/06/2013', 991, 'TIENDA', 10,  2,17, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (180, '25/06/2013', 811, 'TIENDA', 10,  2,18, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (181, '05/06/2013', 959, 'TIENDA', 11, 1, 1, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (182, '21/06/2013', 638, 'TIENDA', 11, 1, 2, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (183, '06/06/2013', 966, 'TIENDA', 11, 1, 3, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (184, '24/06/2013', 983, 'TIENDA', 11, 1, 4, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (185, '24/06/2013', 571, 'TIENDA', 11, 1, 5, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (186, '01/06/2013', 741, 'TIENDA', 11, 1, 6, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (187, '06/06/2013', 825, 'TIENDA', 11, 1, 7, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (188, '25/06/2013', 656, 'TIENDA', 11, 1, 8, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (189, '16/06/2013', 733, 'TIENDA', 11, 2, 9, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (190, '18/06/2013', 839, 'TIENDA', 11,  2,10, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (191, '15/06/2013', 719, 'TIENDA', 11,  2,11, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (192, '05/06/2013', 989, 'TIENDA', 11,  2,12, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (193, '26/06/2013', 921, 'TIENDA', 11,  2,13, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (194, '07/06/2013', 538, 'TIENDA', 11,  2,14, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (195, '23/06/2013', 972, 'TIENDA', 11,  2,15, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (196, '01/06/2013', 649, 'TIENDA', 11,  2,16, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (197, '10/06/2013', 595, 'TIENDA', 11,  2,17, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (198, '25/06/2013', 900, 'TIENDA', 11,  2,18, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (199, '09/06/2013', 598, 'TIENDA', 12, 1, 1, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (200, '11/06/2013', 524, 'TIENDA', 12, 1, 2, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (201, '21/06/2013', 568, 'TIENDA', 12, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (202, '22/06/2013', 611, 'TIENDA', 12, 1, 4, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (203, '11/06/2013', 923, 'TIENDA', 12, 1, 5, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (204, '26/06/2013', 657, 'TIENDA', 12, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (205, '25/06/2013', 849, 'TIENDA', 12, 1, 7, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (206, '29/06/2013', 640, 'TIENDA', 12, 1, 8, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (207, '13/06/2013', 862, 'TIENDA', 12, 2, 9, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (208, '10/06/2013', 646, 'TIENDA', 12,  2,10,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (209, '25/06/2013', 614, 'TIENDA', 12,  2,11,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (210, '28/06/2013', 555, 'TIENDA', 12,  2,12,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (211, '01/06/2013', 653, 'TIENDA', 12,  2,13,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (212, '10/06/2013', 711, 'TIENDA', 12,  2,14,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (213, '18/06/2013', 750, 'TIENDA', 12,  2,15,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (214, '23/06/2013', 999, 'TIENDA', 12,  2,16,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (215, '19/06/2013', 686, 'TIENDA', 12,  2,17,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (216, '30/06/2013', 784, 'TIENDA', 12,  2,18,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (217, '04/06/2013', 512, 'TIENDA', 13, 1, 1, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (218, '27/06/2013', 524, 'TIENDA', 13, 1, 2, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (219, '16/06/2013', 718, 'TIENDA', 13, 1, 3, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (220, '10/06/2013', 608, 'TIENDA', 13, 1, 4, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (221, '25/06/2013', 959, 'TIENDA', 13, 1, 5, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (222, '21/06/2013', 759, 'TIENDA', 13, 1, 6, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (223, '09/06/2013', 670, 'TIENDA', 13, 1, 7, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (224, '13/06/2013', 563, 'TIENDA', 13, 1, 8, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (225, '10/06/2013', 975, 'TIENDA', 13, 2, 9, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (226, '21/06/2013', 755, 'TIENDA', 13,  2,10,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (227, '10/06/2013', 528, 'TIENDA', 13,  2,11,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (228, '12/06/2013', 968, 'TIENDA', 13,  2,12,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (229, '15/06/2013', 982, 'TIENDA', 13,  2,13,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (230, '16/06/2013', 933, 'TIENDA', 13,  2,14,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (231, '03/06/2013', 857, 'TIENDA', 13,  2,15,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (232, '25/06/2013', 568, 'TIENDA', 13,  2,16,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (233, '17/06/2013', 868, 'TIENDA', 13,  2,17,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (234, '01/06/2013', 791, 'TIENDA', 13,  2,18,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (235, '28/06/2013', 777, 'TIENDA', 14, 1, 1, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (236, '29/06/2013', 586, 'TIENDA', 14, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (237, '26/06/2013', 664, 'TIENDA', 14, 1, 3, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (238, '12/06/2013', 556, 'TIENDA', 14, 1, 4, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (239, '01/06/2013', 756, 'TIENDA', 14, 1, 5, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (240, '30/06/2013', 802, 'TIENDA', 14, 1, 6, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (241, '18/06/2013', 638, 'TIENDA', 14, 1, 7, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (242, '06/06/2013', 956, 'TIENDA', 14, 1, 8, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (243, '11/06/2013', 977, 'TIENDA', 14, 2, 9, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (244, '26/06/2013', 936, 'TIENDA', 14,  2,10,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (245, '12/06/2013', 986, 'TIENDA', 14,  2,11,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (246, '07/06/2013', 736, 'TIENDA', 14,  2,12,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (247, '12/06/2013', 658, 'TIENDA', 14,  2,13,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (248, '09/06/2013', 805, 'TIENDA', 14,  2,14,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (249, '19/06/2013', 646, 'TIENDA', 14,  2,15,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (250, '26/06/2013', 570, 'TIENDA', 14,  2,16,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (251, '13/06/2013', 534, 'TIENDA', 14,  2,17,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (252, '07/06/2013', 817, 'TIENDA', 14,  2,18,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (253, '04/06/2013', 600, 'TIENDA', 15, 1, 1, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (254, '11/06/2013', 755, 'TIENDA', 15, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (255, '13/06/2013', 658, 'TIENDA', 15, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (256, '27/06/2013', 805, 'TIENDA', 15, 1, 4, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (257, '14/06/2013', 993, 'TIENDA', 15, 1, 5, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (258, '09/06/2013', 755, 'TIENDA', 15, 1, 6, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (259, '06/06/2013', 632, 'TIENDA', 15, 1, 7, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (260, '09/06/2013', 756, 'TIENDA', 15, 1, 8, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (261, '27/06/2013', 532, 'TIENDA', 15, 2, 9, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (262, '24/06/2013', 946, 'TIENDA', 15,  2,10,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (263, '03/06/2013', 556, 'TIENDA', 15,  2,11,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (264, '05/06/2013', 897, 'TIENDA', 15,  2,12,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (265, '02/06/2013', 693, 'TIENDA', 15,  2,13,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (266, '03/06/2013', 864, 'TIENDA', 15,  2,14,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (267, '16/06/2013', 987, 'TIENDA', 15,  2,15,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (268, '27/06/2013', 933, 'TIENDA', 15,  2,16,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (269, '28/06/2013', 765, 'TIENDA', 15,  2,17,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (270, '27/06/2013', 557, 'TIENDA', 15,  2,18,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (271, '17/06/2013', 784, 'TIENDA', 16, 1, 1, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (272, '30/06/2013', 780, 'TIENDA', 16, 1, 2, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (273, '26/06/2013', 644, 'TIENDA', 16, 1, 3, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (274, '22/06/2013', 870, 'TIENDA', 16, 1, 4, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (275, '10/06/2013', 747, 'TIENDA', 16, 1, 5, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (276, '05/06/2013', 789, 'TIENDA', 16, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (277, '20/06/2013', 711, 'TIENDA', 16, 1, 7, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (278, '22/06/2013', 702, 'TIENDA', 16, 1, 8, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (279, '20/06/2013', 968, 'TIENDA', 16, 2, 9, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (280, '02/06/2013', 632, 'TIENDA', 16,  2,10,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (281, '26/06/2013', 772, 'TIENDA', 16,  2,11,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (282, '06/06/2013', 733, 'TIENDA', 16,  2,12,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (283, '19/06/2013', 922, 'TIENDA', 16,  2,13,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (284, '08/06/2013', 618, 'TIENDA', 16,  2,14,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (285, '19/06/2013', 653, 'TIENDA', 16,  2,15,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (286, '28/06/2013', 641, 'TIENDA', 16,  2,16,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (287, '08/06/2013', 536, 'TIENDA', 16,  2,17,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (288, '27/06/2013', 877, 'TIENDA', 16,  2,18,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (289, '06/06/2013', 758, 'TIENDA', 17, 1, 1, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (290, '24/06/2013', 625, 'TIENDA', 17, 1, 2, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (291, '27/06/2013', 612, 'TIENDA', 17, 1, 3, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (292, '28/06/2013', 726, 'TIENDA', 17, 1, 4, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (293, '03/06/2013', 668, 'TIENDA', 17, 1, 5, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (294, '02/06/2013', 704, 'TIENDA', 17, 1, 6, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (295, '29/06/2013', 539, 'TIENDA', 17, 1, 7, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (296, '08/06/2013', 503, 'TIENDA', 17, 1, 8, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (297, '10/06/2013', 993, 'TIENDA', 17, 2, 9, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (298, '02/06/2013', 648, 'TIENDA', 17,  2,10,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (299, '01/06/2013', 627, 'TIENDA', 17,  2,11,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (300, '06/06/2013', 907, 'TIENDA', 17,  2,12,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (301, '25/06/2013', 802, 'TIENDA', 17,  2,13,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (302, '03/06/2013', 772, 'TIENDA', 17,  2,14,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (303, '20/06/2013', 887, 'TIENDA', 17,  2,15,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (304, '05/06/2013', 925, 'TIENDA', 17,  2,16,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (305, '04/06/2013', 948, 'TIENDA', 17,  2,17,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (306, '30/06/2013', 823, 'TIENDA', 17,  2,18,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (307, '08/06/2013', 884, 'TIENDA', 18, 1, 1, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (308, '09/06/2013', 836, 'TIENDA', 18, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (309, '02/06/2013', 939, 'TIENDA', 18, 1, 3, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (310, '18/06/2013', 922, 'TIENDA', 18, 1, 4, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (311, '24/06/2013', 907, 'TIENDA', 18, 1, 5, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (312, '13/06/2013', 795, 'TIENDA', 18, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (313, '27/06/2013', 642, 'TIENDA', 18, 1, 7, TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (314, '09/06/2013', 560, 'TIENDA', 18, 1, 8, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (315, '03/06/2013', 619, 'TIENDA', 18, 2, 9, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (316, '07/06/2013', 758, 'TIENDA', 18,  2,10,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (317, '13/06/2013', 522, 'TIENDA', 18,  2,11,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (318, '06/06/2013', 513, 'TIENDA', 18,  2,12,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (319, '12/06/2013', 516, 'TIENDA', 18,  2,13,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (320, '25/06/2013', 824, 'TIENDA', 18,  2,14,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (321, '05/06/2013', 515, 'TIENDA', 18,  2,15,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (322, '22/06/2013', 998, 'TIENDA', 18,  2,16,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (323, '07/06/2013', 960, 'TIENDA', 18,  2,17,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (324, '03/06/2013', 888, 'TIENDA', 18,  2,18,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (325, '27/06/2013', 740, 'TIENDA', 19, 1, 1, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (326, '04/06/2013', 882, 'TIENDA', 19, 1, 2, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (327, '03/06/2013', 727, 'TIENDA', 19, 1, 3, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (328, '27/06/2013', 505, 'TIENDA', 19, 1, 4, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (329, '30/06/2013', 988, 'TIENDA', 19, 1, 5, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (330, '18/06/2013', 716, 'TIENDA', 19, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (331, '04/06/2013', 786, 'TIENDA', 19, 1, 7, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (332, '23/06/2013', 503, 'TIENDA', 19, 1, 8, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (333, '05/06/2013', 971, 'TIENDA', 19, 2, 9, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (334, '22/06/2013', 672, 'TIENDA', 19,  2,10,TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (335, '13/06/2013', 704, 'TIENDA', 19,  2,11,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (336, '08/06/2013', 820, 'TIENDA', 19,  2,12,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (337, '08/06/2013', 889, 'TIENDA', 19,  2,13,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (338, '24/06/2013', 744, 'TIENDA', 19,  2,14,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (339, '22/06/2013', 536, 'TIENDA', 19,  2,15,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (340, '25/06/2013', 839, 'TIENDA', 19,  2,16,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (341, '07/06/2013', 752, 'TIENDA', 19,  2,17,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (342, '07/06/2013', 879, 'TIENDA', 19,  2,18,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (343, '17/06/2013', 911, 'ONLINE', 1, 1, 1,  TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (344, '21/06/2013', 649, 'ONLINE', 1, 1, 2,  TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (345, '28/06/2013', 978, 'ONLINE', 1, 1, 3,  TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (346, '28/06/2013', 897, 'ONLINE', 1, 1, 4,  TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (347, '20/06/2013', 875, 'ONLINE', 1, 1, 5,  TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (348, '23/06/2013', 736, 'ONLINE', 1, 1, 6,  TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (349, '14/06/2013', 894, 'ONLINE', 1, 1, 7,  TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (350, '07/06/2013', 846, 'ONLINE', 1, 1, 8,  TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (351, '26/06/2013', 820, 'ONLINE', 1, 2, 9,  TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (352, '07/06/2013', 792, 'ONLINE', 1,  2,10, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (353, '04/06/2013', 918, 'ONLINE', 1,  2,11, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (354, '16/06/2013', 678, 'ONLINE', 1,  2,12, TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (355, '21/06/2013', 607, 'ONLINE', 1,  2,13, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (356, '30/06/2013', 857, 'ONLINE', 1,  2,14, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (357, '24/06/2013', 667, 'ONLINE', 1,  2,15, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (358, '06/06/2013', 638, 'ONLINE', 1,  2,16, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (359, '19/06/2013', 705, 'ONLINE', 1,  2,17, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (360, '25/06/2013', 599, 'ONLINE', 1,  2,18, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (361, '26/06/2013', 728, 'ONLINE', 2, 1, 1,  TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (362, '11/06/2013', 516, 'ONLINE', 2, 1, 2,  TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (363, '07/06/2013', 505, 'ONLINE', 2, 1, 3,  TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (364, '06/06/2013', 767, 'ONLINE', 2, 1, 4,  TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (365, '19/06/2013', 521, 'ONLINE', 2, 1, 5,  TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (366, '06/06/2013', 689, 'ONLINE', 2, 1, 6,  TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (367, '17/06/2013', 808, 'ONLINE', 2, 1, 7,  TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (368, '24/06/2013', 976, 'ONLINE', 2, 1, 8,  TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (369, '05/06/2013', 603, 'ONLINE', 2, 2, 9,  TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (370, '02/06/2013', 975, 'ONLINE', 2,  2,10,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (371, '12/06/2013', 861, 'ONLINE', 2,  2,11,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (372, '29/06/2013', 843, 'ONLINE', 2,  2,12,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (373, '03/06/2013', 615, 'ONLINE', 2,  2,13,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (374, '27/06/2013', 713, 'ONLINE', 2,  2,14,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (375, '23/06/2013', 695, 'ONLINE', 2,  2,15,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (376, '18/06/2013', 929, 'ONLINE', 2,  2,16,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (377, '11/06/2013', 796, 'ONLINE', 2,  2,17,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (378, '03/06/2013', 767, 'ONLINE', 2,  2,18,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (379, '11/06/2013', 618, 'ONLINE', 3, 1, 1, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (380, '29/06/2013', 893, 'ONLINE', 3, 1, 2, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (381, '21/06/2013', 889, 'ONLINE', 3, 1, 3, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (382, '04/06/2013', 643, 'ONLINE', 3, 1, 4, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (383, '23/06/2013', 622, 'ONLINE', 3, 1, 5, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (384, '18/06/2013', 867, 'ONLINE', 3, 1, 6, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (385, '13/06/2013', 609, 'ONLINE', 3, 1, 7, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (386, '16/06/2013', 910, 'ONLINE', 3, 1, 8, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (387, '03/06/2013', 953, 'ONLINE', 3, 2, 9, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (388, '30/06/2013', 513, 'ONLINE', 3,  2,10,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (389, '14/06/2013', 895, 'ONLINE', 3,  2,11,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (390, '01/06/2013', 591, 'ONLINE', 3,  2,12,TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (391, '27/06/2013', 572, 'ONLINE', 3,  2,13,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (392, '14/06/2013', 626, 'ONLINE', 3,  2,14,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (393, '09/06/2013', 981, 'ONLINE', 3,  2,15,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (394, '14/06/2013', 625, 'ONLINE', 3,  2,16,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (395, '06/06/2013', 829, 'ONLINE', 3,  2,17,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (396, '15/06/2013', 602, 'ONLINE', 3,  2,18,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (397, '22/06/2013', 696, 'ONLINE', 4, 1, 1, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (398, '10/06/2013', 529, 'ONLINE', 4, 1, 2, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (399, '04/06/2013', 787, 'ONLINE', 4, 1, 3, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (400, '28/06/2013', 848, 'ONLINE', 4, 1, 4, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (401, '05/06/2013', 990, 'ONLINE', 4, 1, 5, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (402, '04/06/2013', 628, 'ONLINE', 4, 1, 6, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (403, '05/06/2013', 958, 'ONLINE', 4, 1, 7, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (404, '01/06/2013', 998, 'ONLINE', 4, 1, 8, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (405, '15/06/2013', 588, 'ONLINE', 4, 2, 9, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (406, '14/06/2013', 974, 'ONLINE', 4,  2,10,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (407, '26/06/2013', 608, 'ONLINE', 4,  2,11,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (408, '20/06/2013', 720, 'ONLINE', 4,  2,12,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (409, '18/06/2013', 565, 'ONLINE', 4,  2,13,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (410, '17/06/2013', 767, 'ONLINE', 4,  2,14,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (411, '21/06/2013', 554, 'ONLINE', 4,  2,15,TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (412, '15/06/2013', 846, 'ONLINE', 4,  2,16,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (413, '29/06/2013', 502, 'ONLINE', 4,  2,17,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (414, '28/06/2013', 588, 'ONLINE', 4,  2,18,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (415, '12/06/2013', 518, 'ONLINE', 5, 1, 1, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (416, '17/06/2013', 748, 'ONLINE', 5, 1, 2, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (417, '27/06/2013', 548, 'ONLINE', 5, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (418, '28/06/2013', 787, 'ONLINE', 5, 1, 4, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (419, '15/06/2013', 961, 'ONLINE', 5, 1, 5, TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (420, '23/06/2013', 768, 'ONLINE', 5, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (421, '27/06/2013', 542, 'ONLINE', 5, 1, 7, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (422, '18/06/2013', 953, 'ONLINE', 5, 1, 8, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (423, '11/06/2013', 510, 'ONLINE', 5, 2, 9, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (424, '05/06/2013', 841, 'ONLINE', 5,  2,10, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (425, '29/06/2013', 596, 'ONLINE', 5,  2,11, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (426, '23/06/2013', 949, 'ONLINE', 5,  2,12, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (427, '07/06/2013', 918, 'ONLINE', 5,  2,13, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (428, '18/06/2013', 651, 'ONLINE', 5,  2,14, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (429, '23/06/2013', 929, 'ONLINE', 5,  2,15, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (430, '21/06/2013', 934, 'ONLINE', 5,  2,16, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (431, '12/06/2013', 885, 'ONLINE', 5,  2,17, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (432, '13/06/2013', 974, 'ONLINE', 5,  2,18, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (433, '13/06/2013', 614, 'ONLINE', 6, 1, 1, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (434, '23/06/2013', 868, 'ONLINE', 6, 1, 2, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (435, '24/06/2013', 999, 'ONLINE', 6, 1, 3, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (436, '13/06/2013', 753, 'ONLINE', 6, 1, 4, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (437, '04/06/2013', 605, 'ONLINE', 6, 1, 5, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (438, '18/06/2013', 951, 'ONLINE', 6, 1, 6, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (439, '30/06/2013', 718, 'ONLINE', 6, 1, 7, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (440, '07/06/2013', 689, 'ONLINE', 6, 1, 8, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (441, '26/06/2013', 720, 'ONLINE', 6, 2, 9, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (442, '18/06/2013', 726, 'ONLINE', 6,  2,10, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (443, '23/06/2013', 611, 'ONLINE', 6,  2,11, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (444, '05/06/2013', 833, 'ONLINE', 6,  2,12, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (445, '30/06/2013', 642, 'ONLINE', 6,  2,13, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (446, '26/06/2013', 741, 'ONLINE', 6,  2,14, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (447, '14/06/2013', 863, 'ONLINE', 6,  2,15, TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (448, '26/06/2013', 848, 'ONLINE', 6,  2,16, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (449, '07/06/2013', 966, 'ONLINE', 6,  2,17, TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (450, '22/06/2013', 852, 'ONLINE', 6,  2,18, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (451, '09/06/2013', 926, 'ONLINE', 7, 1, 1, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (452, '23/06/2013', 926, 'ONLINE', 7, 1, 2, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (453, '14/06/2013', 844, 'ONLINE', 7, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (454, '22/06/2013', 561, 'ONLINE', 7, 1, 4, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (455, '21/06/2013', 554, 'ONLINE', 7, 1, 5, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (456, '25/06/2013', 845, 'ONLINE', 7, 1, 6, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (457, '21/06/2013', 817, 'ONLINE', 7, 1, 7, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (458, '10/06/2013', 510, 'ONLINE', 7, 1, 8, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (459, '03/06/2013', 643, 'ONLINE', 7, 2, 9, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (460, '17/06/2013', 940, 'ONLINE', 7,  2,10, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (461, '07/06/2013', 519, 'ONLINE', 7,  2,11, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (462, '24/06/2013', 536, 'ONLINE', 7,  2,12, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (463, '09/06/2013', 908, 'ONLINE', 7,  2,13, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (464, '15/06/2013', 546, 'ONLINE', 7,  2,14, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (465, '02/06/2013', 905, 'ONLINE', 7,  2,15, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (466, '06/06/2013', 909, 'ONLINE', 7,  2,16, TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (467, '23/06/2013', 616, 'ONLINE', 7,  2,17, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (468, '16/06/2013', 814, 'ONLINE', 7,  2,18, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (469, '02/06/2013', 993, 'ONLINE', 8, 1, 1, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (470, '08/06/2013', 816, 'ONLINE', 8, 1, 2, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (471, '04/06/2013', 582, 'ONLINE', 8, 1, 3, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (472, '16/06/2013', 755, 'ONLINE', 8, 1, 4, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (473, '28/06/2013', 746, 'ONLINE', 8, 1, 5, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (474, '02/06/2013', 717, 'ONLINE', 8, 1, 6, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (475, '17/06/2013', 966, 'ONLINE', 8, 1, 7, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (476, '06/06/2013', 571, 'ONLINE', 8, 1, 8, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (477, '08/06/2013', 566, 'ONLINE', 8, 2, 9, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (478, '01/06/2013', 663, 'ONLINE', 8,  2,10, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (479, '10/06/2013', 800, 'ONLINE', 8,  2,11, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (480, '28/06/2013', 538, 'ONLINE', 8,  2,12, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (481, '01/06/2013', 858, 'ONLINE', 8,  2,13, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (482, '30/06/2013', 732, 'ONLINE', 8,  2,14, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (483, '12/06/2013', 575, 'ONLINE', 8,  2,15, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (484, '15/06/2013', 841, 'ONLINE', 8,  2,16, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (485, '18/06/2013', 537, 'ONLINE', 8,  2,17, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (486, '30/06/2013', 584, 'ONLINE', 8,  2,18, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (487, '25/06/2013', 708, 'ONLINE', 9, 1, 1, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (488, '26/06/2013', 545, 'ONLINE', 9, 1, 2, TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (489, '09/06/2013', 558, 'ONLINE', 9, 1, 3, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (490, '24/06/2013', 997, 'ONLINE', 9, 1, 4, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (491, '24/06/2013', 637, 'ONLINE', 9, 1, 5, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (492, '17/06/2013', 650, 'ONLINE', 9, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (493, '13/06/2013', 746, 'ONLINE', 9, 1, 7, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (494, '11/06/2013', 943, 'ONLINE', 9, 1, 8, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (495, '30/06/2013', 799, 'ONLINE', 9, 2, 9, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (496, '13/06/2013', 635, 'ONLINE', 9,  2,10, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (497, '26/06/2013', 783, 'ONLINE', 9,  2,11, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (498, '19/06/2013', 723, 'ONLINE', 9,  2,12, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (499, '13/06/2013', 713, 'ONLINE', 9,  2,13, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (500, '29/06/2013', 804, 'ONLINE', 9,  2,14, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (501, '17/06/2013', 547, 'ONLINE', 9,  2,15, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (502, '07/06/2013', 910, 'ONLINE', 9,  2,16, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (503, '30/06/2013', 772, 'ONLINE', 9,  2,17, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (504, '07/06/2013', 760, 'ONLINE', 9,  2,18, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (505, '30/06/2013', 742, 'ONLINE', 10, 1, 1, TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (506, '24/06/2013', 829, 'ONLINE', 10, 1, 2, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (507, '05/06/2013', 554, 'ONLINE', 10, 1, 3, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (508, '19/06/2013', 731, 'ONLINE', 10, 1, 4, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (509, '07/06/2013', 506, 'ONLINE', 10, 1, 5, TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (510, '05/06/2013', 795, 'ONLINE', 10, 1, 6, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (511, '02/06/2013', 991, 'ONLINE', 10, 1, 7, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (512, '12/06/2013', 627, 'ONLINE', 10, 1, 8, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (513, '25/06/2013', 527, 'ONLINE', 10, 2, 9, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (514, '27/06/2013', 773, 'ONLINE', 10,  2,10,TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (515, '22/06/2013', 577, 'ONLINE', 10,  2,11,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (516, '17/06/2013', 655, 'ONLINE', 10,  2,12,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (517, '07/06/2013', 822, 'ONLINE', 10,  2,13,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (518, '15/06/2013', 986, 'ONLINE', 10,  2,14,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (519, '10/06/2013', 735, 'ONLINE', 10,  2,15,TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (520, '05/06/2013', 775, 'ONLINE', 10,  2,16,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (521, '08/06/2013', 531, 'ONLINE', 10,  2,17,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (522, '08/06/2013', 940, 'ONLINE', 10,  2,18,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (523, '29/06/2013', 656, 'ONLINE', 11, 1, 1, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (524, '20/06/2013', 581, 'ONLINE', 11, 1, 2, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (525, '18/06/2013', 908, 'ONLINE', 11, 1, 3, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (526, '06/06/2013', 767, 'ONLINE', 11, 1, 4, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (527, '05/06/2013', 996, 'ONLINE', 11, 1, 5, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (528, '11/06/2013', 964, 'ONLINE', 11, 1, 6, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (529, '22/06/2013', 912, 'ONLINE', 11, 1, 7, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (530, '01/06/2013', 880, 'ONLINE', 11, 1, 8, TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (531, '01/06/2013', 931, 'ONLINE', 11, 2, 9, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (532, '07/06/2013', 749, 'ONLINE', 11,  2,10,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (533, '02/06/2013', 526, 'ONLINE', 11,  2,11,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (534, '02/06/2013', 661, 'ONLINE', 11,  2,12,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (535, '29/06/2013', 699, 'ONLINE', 11,  2,13,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (536, '16/06/2013', 942, 'ONLINE', 11,  2,14,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (537, '15/06/2013', 973, 'ONLINE', 11,  2,15,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (538, '16/06/2013', 574, 'ONLINE', 11,  2,16,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (539, '03/06/2013', 808, 'ONLINE', 11,  2,17,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (540, '24/06/2013', 988, 'ONLINE', 11,  2,18,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (541, '04/06/2013', 944, 'ONLINE', 12, 1, 1, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (542, '23/06/2013', 977, 'ONLINE', 12, 1, 2, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (543, '10/06/2013', 546, 'ONLINE', 12, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (544, '09/06/2013', 766, 'ONLINE', 12, 1, 4, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (545, '20/06/2013', 752, 'ONLINE', 12, 1, 5, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (546, '06/06/2013', 779, 'ONLINE', 12, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (547, '26/06/2013', 799, 'ONLINE', 12, 1, 7, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (548, '03/06/2013', 876, 'ONLINE', 12, 1, 8, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (549, '30/06/2013', 986, 'ONLINE', 12, 2, 9, TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (550, '21/06/2013', 922, 'ONLINE', 12,  2,10,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (551, '12/06/2013', 975, 'ONLINE', 12,  2,11,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (552, '11/06/2013', 783, 'ONLINE', 12,  2,12,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (553, '19/06/2013', 667, 'ONLINE', 12,  2,13,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (554, '18/06/2013', 807, 'ONLINE', 12,  2,14,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (555, '08/06/2013', 566, 'ONLINE', 12,  2,15,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (556, '12/06/2013', 595, 'ONLINE', 12,  2,16,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (557, '13/06/2013', 553, 'ONLINE', 12,  2,17,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (558, '27/06/2013', 865, 'ONLINE', 12,  2,18,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (559, '09/06/2013', 615, 'ONLINE', 13, 1, 1, TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (560, '01/06/2013', 666, 'ONLINE', 13, 1, 2, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (561, '16/06/2013', 684, 'ONLINE', 13, 1, 3, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (562, '13/06/2013', 656, 'ONLINE', 13, 1, 4, TO_DATE('21/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (563, '07/06/2013', 888, 'ONLINE', 13, 1, 5, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (564, '01/06/2013', 502, 'ONLINE', 13, 1, 6, TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (565, '30/06/2013', 810, 'ONLINE', 13, 1, 7, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (566, '20/06/2013', 602, 'ONLINE', 13, 1, 8, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (567, '20/06/2013', 993, 'ONLINE', 13, 2, 9, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (568, '15/06/2013', 665, 'ONLINE', 13,  2,10,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (569, '21/06/2013', 940, 'ONLINE', 13,  2,11,TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (570, '05/06/2013', 510, 'ONLINE', 13,  2,12,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (571, '29/06/2013', 973, 'ONLINE', 13,  2,13,TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (572, '15/06/2013', 845, 'ONLINE', 13,  2,14,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (573, '03/06/2013', 648, 'ONLINE', 13,  2,15,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (574, '05/06/2013', 951, 'ONLINE', 13,  2,16,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (575, '11/06/2013', 744, 'ONLINE', 13,  2,17,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (576, '08/06/2013', 518, 'ONLINE', 13,  2,18,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (577, '17/06/2013', 805, 'ONLINE', 14, 1, 1, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (578, '28/06/2013', 871, 'ONLINE', 14, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (579, '26/06/2013', 974, 'ONLINE', 14, 1, 3, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (580, '13/06/2013', 602, 'ONLINE', 14, 1, 4, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (581, '15/06/2013', 528, 'ONLINE', 14, 1, 5, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (582, '06/06/2013', 538, 'ONLINE', 14, 1, 6, TO_DATE('25/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (583, '07/06/2013', 780, 'ONLINE', 14, 1, 7, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (584, '01/06/2013', 686, 'ONLINE', 14, 1, 8, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (585, '04/06/2013', 561, 'ONLINE', 14, 2, 9, TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (586, '08/06/2013', 921, 'ONLINE', 14,  2,10,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (587, '01/06/2013', 926, 'ONLINE', 14,  2,11,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (588, '26/06/2013', 751, 'ONLINE', 14,  2,12,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (589, '04/06/2013', 941, 'ONLINE', 14,  2,13,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (590, '30/06/2013', 734, 'ONLINE', 14,  2,14,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (591, '14/06/2013', 839, 'ONLINE', 14,  2,15,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (592, '11/06/2013', 707, 'ONLINE', 14,  2,16,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (593, '19/06/2013', 890, 'ONLINE', 14,  2,17,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (594, '02/06/2013', 795, 'ONLINE', 14,  2,18,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (595, '29/06/2013', 783, 'ONLINE', 15, 1, 1, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (596, '20/06/2013', 745, 'ONLINE', 15, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (597, '09/06/2013', 999, 'ONLINE', 15, 1, 3, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (598, '07/06/2013', 743, 'ONLINE', 15, 1, 4, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (599, '02/06/2013', 570, 'ONLINE', 15, 1, 5, TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (600, '15/06/2013', 559, 'ONLINE', 15, 1, 6, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (601, '28/06/2013', 737, 'ONLINE', 15, 1, 7, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (602, '09/06/2013', 839, 'ONLINE', 15, 1, 8, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (603, '30/06/2013', 938, 'ONLINE', 15, 2, 9, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (604, '29/06/2013', 552, 'ONLINE', 15,  2,10,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (605, '11/06/2013', 795, 'ONLINE', 15,  2,11,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (606, '29/06/2013', 783, 'ONLINE', 15,  2,12,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (607, '16/06/2013', 930, 'ONLINE', 15,  2,13,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (608, '30/06/2013', 633, 'ONLINE', 15,  2,14,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (609, '26/06/2013', 893, 'ONLINE', 15,  2,15,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (610, '21/06/2013', 806, 'ONLINE', 15,  2,16,TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (611, '10/06/2013', 581, 'ONLINE', 15,  2,17,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (612, '09/06/2013', 902, 'ONLINE', 15,  2,18,TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (613, '09/06/2013', 825, 'ONLINE', 16, 1, 1, TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (614, '22/06/2013', 619, 'ONLINE', 16, 1, 2, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (615, '16/06/2013', 876, 'ONLINE', 16, 1, 3, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (616, '02/06/2013', 875, 'ONLINE', 16, 1, 4, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (617, '20/06/2013', 683, 'ONLINE', 16, 1, 5, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (618, '28/06/2013', 755, 'ONLINE', 16, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (619, '17/06/2013', 505, 'ONLINE', 16, 1, 7, TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (620, '19/06/2013', 999, 'ONLINE', 16, 1, 8, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (621, '03/06/2013', 926, 'ONLINE', 16, 2, 9, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (622, '22/06/2013', 898, 'ONLINE', 16,  2,10,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (623, '28/06/2013', 917, 'ONLINE', 16,  2,11,TO_DATE('09/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (624, '07/06/2013', 526, 'ONLINE', 16,  2,12,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (625, '18/06/2013', 714, 'ONLINE', 16,  2,13,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (626, '17/06/2013', 812, 'ONLINE', 16,  2,14,TO_DATE('16/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (627, '24/06/2013', 612, 'ONLINE', 16,  2,15,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (628, '22/06/2013', 566, 'ONLINE', 16,  2,16,TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (629, '09/06/2013', 744, 'ONLINE', 16,  2,17,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (630, '14/06/2013', 629, 'ONLINE', 16,  2,18,TO_DATE('26/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (631, '28/06/2013', 598, 'ONLINE', 17, 1, 1, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (632, '08/06/2013', 569, 'ONLINE', 17, 1, 2, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (633, '21/06/2013', 660, 'ONLINE', 17, 1, 3, TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (634, '18/06/2013', 609, 'ONLINE', 17, 1, 4, TO_DATE('30/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (635, '25/06/2013', 686, 'ONLINE', 17, 1, 5, TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (636, '23/06/2013', 517, 'ONLINE', 17, 1, 6, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (637, '21/06/2013', 947, 'ONLINE', 17, 1, 7, TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (638, '29/06/2013', 649, 'ONLINE', 17, 1, 8, TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (639, '29/06/2013', 982, 'ONLINE', 17, 2, 9, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (640, '28/06/2013', 678, 'ONLINE', 17,  2,10,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (641, '19/06/2013', 717, 'ONLINE', 17,  2,11,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (642, '26/06/2013', 727, 'ONLINE', 17,  2,12,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (643, '25/06/2013', 557, 'ONLINE', 17,  2,13,TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (644, '17/06/2013', 958, 'ONLINE', 17,  2,14,TO_DATE('10/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (645, '03/06/2013', 579, 'ONLINE', 17,  2,15,TO_DATE('02/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (646, '15/06/2013', 591, 'ONLINE', 17,  2,16,TO_DATE('19/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (647, '12/06/2013', 556, 'ONLINE', 17,  2,17,TO_DATE('08/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (648, '13/06/2013', 974, 'ONLINE', 17,  2,18,TO_DATE('14/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (649, '03/06/2013', 585, 'ONLINE', 18, 1, 1, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (650, '26/06/2013', 561, 'ONLINE', 18, 1, 2, TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (651, '24/06/2013', 743, 'ONLINE', 18, 1, 3, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (652, '20/06/2013', 896, 'ONLINE', 18, 1, 4, TO_DATE('01/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (653, '02/06/2013', 546, 'ONLINE', 18, 1, 5, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (654, '10/06/2013', 852, 'ONLINE', 18, 1, 6, TO_DATE('13/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (655, '30/06/2013', 641, 'ONLINE', 18, 1, 7, TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (656, '01/06/2013', 605, 'ONLINE', 18, 1, 8, TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (657, '24/06/2013', 874, 'ONLINE', 18, 2, 9, TO_DATE('20/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (658, '21/06/2013', 899, 'ONLINE', 18,  2,10,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (659, '05/06/2013', 734, 'ONLINE', 18,  2,11,TO_DATE('29/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (660, '07/06/2013', 989, 'ONLINE', 18,  2,12,TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (661, '19/06/2013', 963, 'ONLINE', 18,  2,13,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (662, '25/06/2013', 791, 'ONLINE', 18,  2,14,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (663, '04/06/2013', 685, 'ONLINE', 18,  2,15,TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (664, '12/06/2013', 676, 'ONLINE', 18,  2,16,TO_DATE('23/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (665, '29/06/2013', 906, 'ONLINE', 18,  2,17,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (666, '07/06/2013', 982, 'ONLINE', 18,  2,18,TO_DATE('24/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (667, '11/06/2013', 657, 'ONLINE', 19, 1, 1, TO_DATE('15/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (668, '14/06/2013', 759, 'ONLINE', 19, 1, 2, TO_DATE('11/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (669, '13/06/2013', 903, 'ONLINE', 19, 1, 3, TO_DATE('05/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (670, '17/06/2013', 576, 'ONLINE', 19, 1, 4, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (671, '03/06/2013', 944, 'ONLINE', 19, 1, 5, TO_DATE('22/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (672, '25/06/2013', 831, 'ONLINE', 19, 1, 6, TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (673, '12/06/2013', 717, 'ONLINE', 19, 1, 7, TO_DATE('03/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (674, '20/06/2013', 722, 'ONLINE', 19, 1, 8, TO_DATE('12/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (675, '08/06/2013', 927, 'ONLINE', 19, 2, 9, TO_DATE('04/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (676, '10/06/2013', 829, 'ONLINE', 19,  2,10,TO_DATE('31/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (677, '15/06/2013', 621, 'ONLINE', 19,  2,11,TO_DATE('07/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (678, '28/06/2013', 635, 'ONLINE', 19,  2,12,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (679, '08/06/2013', 869, 'ONLINE', 19,  2,13,TO_DATE('17/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (680, '20/06/2013', 898, 'ONLINE', 19,  2,14,TO_DATE('18/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (681, '23/06/2013', 835, 'ONLINE', 19,  2,15,TO_DATE('06/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (682, '30/06/2013', 978, 'ONLINE', 19,  2,16,TO_DATE('27/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (683, '15/06/2013', 942, 'ONLINE', 19,  2,17,TO_DATE('28/05/2013','dd/mm/rrrr');
insert into PRODUCCION_LOTE values (684, '14/06/2013', 788, 'ONLINE', 19,  2,18,TO_DATE('15/05/2013','dd/mm/rrrr');



/*------	PEDIDO		------*/
/*Tienda 1*/
--INSERT INTO PEDIDO VALUES (1,1,1,)