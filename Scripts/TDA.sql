/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create or replace type DIRECCION as object
(
   DI_CALLE             VARCHAR2(50)             not null,
   DI_NUMERO_EDIF       VARCHAR2(50)             not null,
   DI_ZONA_POSTAL       NUMBER(7)            not null,
   DI_LOCAL             VARCHAR2(5)              not null,
   DI_TELEFONOS         Fila (TELEFONO)      not null
);