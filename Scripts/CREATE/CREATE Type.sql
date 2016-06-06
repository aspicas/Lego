/*==============================================================*/
/* VARRAY: IDIOMAS                                             */
/*==============================================================*/
create or replace type idiomas_va as varray(10) of VARCHAR2(20);
/

/*==============================================================*/
/* TDA: RESUMEN                                               */
/*==============================================================*/
create or replace type RESUMEN as object
(
   RE_ALTO              NUMBER(5,2),
   RE_ANCHO             NUMBER(5,2),
   RE_PROFUNDO          NUMBER(5,2),
   RE_IDIOMAS           idiomas_va,
   RE_DESCRIPCION       VARCHAR2(200)
);
/

/*==============================================================*/
/* TDA: DIA                                                   */
/*==============================================================*/
create or replace type DIA as object
(
   DIA_HORA             DATE,
   DIA_PROGRAMACION     VARCHAR2(50),
   DIA_DESCRIPCION      VARCHAR2(500)
);
/

/*==============================================================*/
/* TDA: MONEDA                                                */
/*==============================================================*/
create or replace type MONEDA as object
(
   MO_NOMBRE            VARCHAR2(3),
   MO_CAMBIO            NUMBER(12,5)
);
/

/*==============================================================*/
/* TDA: HORARIO                                               */
/*==============================================================*/
create or replace type HORARIO as object
(
   HR_DIA               VARCHAR2(30),
   HR_INICIO            DATE,
   HR_FIN               DATE       
);
/

/*==============================================================*/
/* TDA: TELEFONO                                              */
/*==============================================================*/
create or replace type TELEFONO as object
(
   TELE_COD_INT         NUMBER(2),
   TELE_COD_AREA        NUMBER(4),
   TELE_NUMERO          NUMBER(7),
   TELE_TIPO            VARCHAR2(10)
);
/

/*==============================================================*/
/* TDA: COSTO                                                 */
/*==============================================================*/
create or replace type COSTO as object
(
   CO_MONTO             NUMBER(5,2),
   CO_INCLUIDO          NUMBER(5,2)
);
/

/*==============================================================*/
/* TDA: RANGO                                                 */
/*==============================================================*/
create or replace type RANGO as object
(
   RA_VALORI            NUMBER(3),
   RA_VALORF            NUMBER(3)  
);
/

/*==============================================================*/
/* VARRAY: TELEFONO                                             */
/*==============================================================*/
create or replace type telefonos_va as varray(3) of telefono;
/

/*==============================================================*/
/* VARRAY: DIA                                             */
/*==============================================================*/
create or replace type dias_va as varray(2) of dia;
/

/*==============================================================*/
/* TDA: DIRECCION                                             */
/*==============================================================*/
create or replace type DIRECCION as object
(
   DI_CALLE             VARCHAR2(50),
   DI_NUMERO_EDIF       VARCHAR2(50),
   DI_ZONA_POSTAL       NUMBER(7),
   DI_LOCAL             VARCHAR2(10),
   DI_TELEFONOS         telefonos_va
);
/

/*==============================================================*/
/* TDA: TOUR_DIAS                                             */
/*==============================================================*/
create or replace type TOUR_DIAS as object
(
   TD_DIA1              dias_va,
   TD_DIA2              dias_va,
   TD_DIA3              dias_va  
);
/

/*==============================================================*/
/* TDA: IMAGEN                                             */
/*==============================================================*/
create or replace type IMAGEN as object
(
    IM_NOMBRE  VARCHAR2(20),
    IM_IMAGEN  BLOB
);
/

/*==============================================================*/
/* NESTED: IMAGENES                                           */
/*==============================================================*/
create or replace type imagenes_nt as table of IMAGEN;
/

/*==============================================================*/
/* NESTED: HORARIO                                             */
/*==============================================================*/
create or replace type horarios_nt as table of HORARIO;
/

/*==============================================================*/
/* VARRAY: CATEGORIAS                                           */
/*==============================================================*/
create or replace type categorias_va as varray(10) of varchar2(50);
/

/*==============================================================*/
/* VARRAY: RANGO                                             */
/*==============================================================*/
create or replace type rangos_va as varray(10) of RANGO;
/
