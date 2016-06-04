INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'MINNESOTA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'NEW YORK','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'WISCONSIN','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'RENANIA DEL NORTE-WESTFALIA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'BERLIN','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'HESSE','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'GRAN MÁNCHESTER','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'MERSEYSIDE','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'TYNE Y WEAR','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'MANITOBA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'ONTARIO','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'ALBERTA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='AUSTRIA'),'BAJA AUSTRIA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='BELGIUM'),'ANTWERP','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='DENMARK'),'COPENHAGUE','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='FRANCE'),'ISLA DE FRANCIA','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,NULL,(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='SWEDEN'),'PROVINCIA DE ESTOCOLMO','ESTADO');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'MINNESOTA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'BLOOMINGTON','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'NEW YORK'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'WHITE PLAINS','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'WISCONSIN'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='UNITED STATES'),'WAUWATOSA','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'RENANIA DEL NORTE-WESTFALIA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'ESSEN','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'BERLIN'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'BERLIN','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'HESSE'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='GERMANY'),'FRANKFURT','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'GRAN MÁNCHESTER'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'MANCHESTER','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'MERSEYSIDE'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'LIVERPOOL','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'TYNE Y WEAR'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='ENGLAND'),'NEWCASTLE','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'MANITOBA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'WINNIPEG','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'ONTARIO'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'TORONTO','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'ALBERTA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='CANADA'),'EDMONTON','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'BAJA AUSTRIA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='AUSTRIA'),'VÖSENDORF','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'ANTWERP'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='BELGIUM'),'WIJNEGEM','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'COPENHAGUE'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='DENMARK'),'COPENHAGEN','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'ISLA DE FRANCIA'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='FRANCE'),'CHESSY','CIUDAD');
INSERT INTO ESTADO_CIUDAD VALUES (SQ_ESTADO_CIUDAD_ID.NEXTVAL,(SELECT EC_ID FROM ESTADO_CIUDAD WHERE EC_TIPO = 'ESTADO' AND EC_NOMBRE = 'PROVINCIA DE ESTOCOLMO'),(SELECT PA_ID FROM PAIS WHERE PA_NOMBRE='SWEDEN'),'STOCKHOLM','CIUDAD');
