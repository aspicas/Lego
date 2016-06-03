/*CHECKS*/
ALTER TABLE PRODUCCION_LOTE ADD CONSTRAINT CH_PL_TIPO CHECK (PL_TIPO IN ('ONLINE','TIENDA'));
ALTER TABLE ESTADO_CIUDAD ADD CONSTRAINT CH_EC_TIPO CHECK (EC_TIPO IN ('ESTADO','CIUDAD'));
ALTER TABLE INSTALACION ADD CONSTRAINT CH_INS_TIPO CHECK (INS_TIPO IN ('OFICINA','PARQUE','IYD'));
ALTER TABLE CLASIFICACION ADD CONSTRAINT CH_CL_TIPO CHECK (CL_TIPO IN ('AREA','TEMA','SUBTEMA','SERIE'));
ALTER TABLE CLASIFICACION ADD CONSTRAINT CH_CL_LICENCIA CHECK (CL_LICENCIA IN ('S','N'));
ALTER TABLE CLIENTE_VISITANTE ADD CONSTRAINT CH_CV_GENERO CHECK (CV_GENERO IN ('H','M'));
ALTER TABLE CLIENTE_VISITANTE ADD CONSTRAINT CH_CV_EXPERIENCIA CHECK (CV_EXPERIENCIA IN ('N','I','A','E'));
ALTER TABLE CLIENTE_VISITANTE ADD CONSTRAINT CH_CV_TIPOCLIENTE CHECK (CV_TIPOCLIENTE IN ('F','P','A','D','O'));
ALTER TABLE VALORACION ADD CONSTRAINT CH_VA_EXPERIENCIA CHECK (VA_EXPERIENCIA > 0 AND VA_EXPERIENCIA <=5);
ALTER TABLE VALORACION ADD CONSTRAINT CH_VA_CALIDAD_PR CHECK (VA_CALIDAD_PR > 0 AND VA_CALIDAD_PR <=5);
ALTER TABLE VALORACION ADD CONSTRAINT CH_VA_DIFICULTAD CHECK (VA_DIFICULTAD IN ('F','I','D'));

/*UNIQUE*/
ALTER TABLE CLASIFICACION ADD CONSTRAINT UN_CL_NOMBRE UNIQUE (CL_NOMBRE);
ALTER TABLE PAIS ADD CONSTRAINT UN_PA_NOMBRE UNIQUE (PA_NOMBRE);
ALTER TABLE PAIS ADD CONSTRAINT UN_PA_NACIONALIDAD UNIQUE (PA_NACIONALIDAD);
ALTER TABLE PRODUCTO ADD CONSTRAINT UN_PR_NOMBRE UNIQUE (PR_NOMBRE);