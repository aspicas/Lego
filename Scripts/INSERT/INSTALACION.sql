insert into instalacion VALUES (SQ_INSTALACION_ID.NEXTVAL,(select EC_ID from estado_ciudad where ec_tipo = 'CIUDAD' AND EC_NOMBRE = 'SAINT PETERSBURG'),'SERIOUS PLAY','IYD',DIRECCION('1 DALI BLVD',null,33701,'LOCAL',NULL));
insert into instalacion VALUES (SQ_INSTALACION_ID.NEXTVAL,(select EC_ID from estado_ciudad where ec_tipo = 'CIUDAD' AND EC_NOMBRE = 'WINTER HAVEN'),'SERIOUS PLAY','PARQUE',DIRECCION('1 LEGOLAND WAY',null,33884,'LOCAL',telefonos_va(telefono(1,877,3505346,'OFICINA'))));