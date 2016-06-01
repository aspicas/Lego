/*==============================================================*/
/* VARRAY: IDIOMAS                                             */
/*==============================================================*/
create or replace type idiomas as varray(10) of VARCHAR2(20);

/*==============================================================*/
/* TDA: RESUMEN                                               */
/*==============================================================*/
create or replace type RESUMEN as object
(
   RE_ALTO              NUMBER(5,2)          not null,
   RE_ANCHO             NUMBER(5,2)          not null,
   RE_PROFUNDO          NUMBER(5,2)          not null,
   RE_IDIOMAS           idiomas           not null,
   RE_DESCRIPCION       VARCHAR2(200)            not null
);

/*==============================================================*/
/* TDA: DIA                                                   */
/*==============================================================*/
create or replace type DIA as object
(
   DIA_HORA             DATE                 not null,
   DIA_DESCRIPCION      VARCHAR2(500)            not null
);

/*==============================================================*/
/* TDA: MONEDA                                                */
/*==============================================================*/
create or replace type MONEDA as object
(
   MO_NOMBRE            VARCHAR2(3)              not null,
   MO_CAMBIO            NUMBER(12,4)         not null
);

/*==============================================================*/
/* TDA: HORARIO                                               */
/*==============================================================*/
create or replace type HORARIO as object
(
   HR_DIA               VARCHAR2(30)             not null,
   HR_INICIO            DATE                 not null,
   HR_FIN               DATE                 not null
);

/*==============================================================*/
/* TDA: TELEFONO                                              */
/*==============================================================*/
create or replace type TELEFONO as object
(
   TELE_COD_INT         NUMBER(2)            not null,
   TELE_COD_AREA        NUMBER(4)            not null,
   TELE_NUMERO          NUMBER(7)            not null,
   TELE_TIPO            VARCHAR2(10)             not null
);

/*==============================================================*/
/* TDA: COSTO                                                 */
/*==============================================================*/
create or replace type COSTO as object
(
   CO_MONTO             NUMBER(5,2)          not null,
   CO_INCLUIDO          NUMBER(5,2)          not null
);

/*==============================================================*/
/* TDA: RANGO                                                 */
/*==============================================================*/
create or replace type RANGO as object
(
   RA_VALORI            NUMBER(3)            not null,
   RA_VALORF            NUMBER(3)            not null
);

/*==============================================================*/
/* NESTED: TELEFONO                                             */
/*==============================================================*/
create or replace type telefonos as table of telefono;

/*==============================================================*/
/* NESTED: DIA                                             */
/*==============================================================*/
create or replace type dias as table of dia;

/*==============================================================*/
/* TDA: DIRECCION                                             */
/*==============================================================*/
create or replace type DIRECCION as object
(
   DI_CALLE             VARCHAR2(50)             not null,
   DI_NUMERO_EDIF       VARCHAR2(50)             not null,
   DI_ZONA_POSTAL       NUMBER(7)            not null,
   DI_LOCAL             VARCHAR2(5)              not null,
   DI_TELEFONOS         telefonos      not null
);

/*==============================================================*/
/* TDA: TOUR_DIAS                                             */
/*==============================================================*/
create or replace type TOUR_DIAS as object
(
   TD_DIA1              dias            not null,
   TD_DIA2              dias            not null,
   TD_DIA3              dias            not null
);