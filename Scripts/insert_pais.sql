insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'UNITED STATES','AMERICAN','AMERICA',moneda('USD',1));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'GERMAN','GERMAN','EUROPE',moneda('EUR',1.11465));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'ENGLAND','ENGLISH','EUROPE',moneda('EUR',1.11465));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'CANADA','CANADIAN','AMERICA',moneda('CAD',0.763097));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'AUSTRIA','AUSTRALIAN','OCEANIA',moneda('AUD',0.72259));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'BELGIUM','BELGIAN','EUROPE',moneda('EUR',1.11465));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'DENMARK','DANISH','EUROPE',moneda('EUR',1.11465));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'FRANCE','FRENCH','EUROPE',moneda('EUR',1.11465));
insert into pais VALUES (SQ_PAIS_ID.NEXTVAL,'SWEDEN','SWEDISH','EUROPE',moneda('EUR',1.11465));

select treat(pa_moneda as moneda).mo_nombre, treat(pa_moneda as moneda).mo_cambio from pais where PA_NOMBRE='ENGLAND';
