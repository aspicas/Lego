/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     6/26/2016 4:47:00 PM                         */
/*==============================================================*/


DROP SEQUENCE SQ_FABRICA_E;
DROP SEQUENCE SQ_CLIENTE_T;
DROP SEQUENCE SQ_PAIS_P;

DROP MATERIALIZED VIEW MV_PEDIDOSANTES5DIAS;
DROP MATERIALIZED VIEW MV_ENVIOTARDE;
DROP MATERIALIZED VIEW MV_TOUR;
DROP MATERIALIZED VIEW MV_TOP2TEMAS;


alter table EFICIENCIA
   drop constraint FK_EFICIENC_RELATIONS_TIEMPO_E;

alter table EFICIENCIA
   drop constraint FK_EFICIENC_RELATIONS_FABRICA_;

alter table PREFERENCIA
   drop constraint FK_PREFEREN_RELATIONS_RANGO_ED;

alter table PREFERENCIA
   drop constraint FK_PREFEREN_____PAIS_P;

alter table PREFERENCIA
   drop constraint FK_PREFEREN______CLIENTE_;

alter table PREFERENCIA
   drop constraint FK_PREFEREN________TIEMPO_P;

alter table TOUR
   drop constraint FK_TOUR_RELATIONS_TIEMPO_T;

alter table TOUR
   drop constraint FK_TOUR_RELATIONS_CLIENTE_;

alter table VENTA
   drop constraint FK_VENTA___TIEMPO_V;

alter table VENTA
   drop constraint FK_VENTA____TIENDA_V;

drop table CLIENTE_P cascade constraints;

drop table CLIENTE_T cascade constraints;

drop index RELATIONSHIP_9_FK;

drop index RELATIONSHIP_8_FK;

drop table EFICIENCIA cascade constraints;

drop table FABRICA_E cascade constraints;

drop table PAIS_P cascade constraints;

drop index RELATIONSHIP_10_FK;

drop index PREF_TIEM_MES_FK;

drop index PREF_CLIE_ID_FK;

drop index PR;

drop table PREFERENCIA cascade constraints;

drop table RANGO_EDAD_P cascade constraints;

drop table TIEMPO_E cascade constraints;

drop table TIEMPO_P cascade constraints;

drop table TIEMPO_T cascade constraints;

drop table TIEMPO_V cascade constraints;

drop table TIENDA_V cascade constraints;

drop index RELATIONSHIP_7_FK;

drop index RELATIONSHIP_6_FK;

drop table TOUR cascade constraints;

drop index VENTA_TIEN_ID_FK;

drop index VENTA_TIEM_ANO_FK;

drop table VENTA cascade constraints;

/*==============================================================*/
/* Table: CLIENTE_P                                             */
/*==============================================================*/
create table CLIENTE_P 
(
   CLIE_ID              NUMBER(2)            not null,
   CLIE_GENERO          CHAR(1)              not null,
   FECHA_CARGA          DATE                 not null,
   constraint PK_CLIENTE_P primary key (CLIE_ID)
);

/*==============================================================*/
/* Table: CLIENTE_T                                             */
/*==============================================================*/
create table CLIENTE_T 
(
   CLIE_ID              NUMBER(2)            not null,
   CLIE_NACIONALIDAD    CHAR(20)             not null,
   FECHA_CARGA          CHAR(10)             not null,
   constraint PK_CLIENTE_T primary key (CLIE_ID)
);

/*==============================================================*/
/* Table: EFICIENCIA                                            */
/*==============================================================*/
create table EFICIENCIA 
(
   TIEM_ANO             NUMBER(4)            not null,
   FABR_ID              NUMBER(5)            not null,
   PEDIDOANTES5DIAS     NUMBER(5),
   PEDIDOSTARDE         NUMBER(5),
   PORC_EFICIENCIA      NUMBER(3,2),
   FABRICAMASEFICIENTE  CHAR(50),
   constraint PK_EFICIENCIA primary key (TIEM_ANO, FABR_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on EFICIENCIA (
   TIEM_ANO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on EFICIENCIA (
   FABR_ID ASC
);

/*==============================================================*/
/* Table: FABRICA_E                                             */
/*==============================================================*/
create table FABRICA_E 
(
   FABR_ID              NUMBER(5)            not null,
   FABR_NOMBRE          CHAR(50)             not null,
   FECHA_CARGA          CHAR(10)             not null,
   constraint PK_FABRICA_E primary key (FABR_ID)
);

/*==============================================================*/
/* Table: PAIS_P                                                */
/*==============================================================*/
create table PAIS_P 
(
   PAIS_ID              NUMBER(10)           not null,
   PAIS_NOMBRE          CHAR(15)             not null,
   PAIS_NACIONALIDAD    CHAR(50)             not null,
   FECHA_CARGA          DATE                 not null,
   constraint PK_PAIS_P primary key (PAIS_ID)
);

/*==============================================================*/
/* Table: PREFERENCIA                                           */
/*==============================================================*/
create table PREFERENCIA 
(
   PAIS_ID              NUMBER(10),
   CLIE_ID              NUMBER(2) ,
   TIEM_MES             NUMBER(4) ,
   RANG_ID              NUMBER(10),
   TEMAPREFERIDO_G      CHAR(50),
   TOP2_TEMAPREFERIDO   CHAR(1000),
   DISTTEMAPAIS         CHAR(10)
);


CREATE SEQUENCE SQ_FABRICA_E INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_CLIENTE_T INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PAIS_P INCREMENT BY 1 START WITH 1;


/*==============================================================*/
/* Index: PR                                                */
/*==============================================================*/
create index PR on PREFERENCIA (
   PAIS_ID ASC
);

/*==============================================================*/
/* Index: PREF_CLIE_ID_FK                                               */
/*==============================================================*/
create index PREF_CLIE_ID_FK on PREFERENCIA (
   CLIE_ID ASC
);

/*==============================================================*/
/* Index: PREF_TIEM_MES_FK                                             */
/*==============================================================*/
create index PREF_TIEM_MES_FK on PREFERENCIA (
   TIEM_MES ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on PREFERENCIA (
   RANG_ID ASC
);

/*==============================================================*/
/* Table: RANGO_EDAD_P                                          */
/*==============================================================*/
create table RANGO_EDAD_P 
(
   RANG_ID              NUMBER(10)           not null,
   RANG_INICIO          NUMBER(2)            not null,
   RANG_FIN             NUMBER(2)            not null,
   FECHA_CARGA          DATE                 not null,
   constraint PK_RANGO_EDAD_P primary key (RANG_ID)
);

/*==============================================================*/
/* Table: TIEMPO_E                                              */
/*==============================================================*/
create table TIEMPO_E 
(
   TIEM_ANO             NUMBER(4)            not null,
   FECHA_CARGA          CHAR(10)             not null,
   constraint PK_TIEMPO_E primary key (TIEM_ANO)
);

/*==============================================================*/
/* Table: TIEMPO_P                                              */
/*==============================================================*/
create table TIEMPO_P 
(
   TIEM_MES             NUMBER(4)            not null,
   FECHA_CARGA          CHAR(10)             not null,
   constraint PK_TIEMPO_P primary key (TIEM_MES)
);

/*==============================================================*/
/* Table: TIEMPO_T                                              */
/*==============================================================*/
create table TIEMPO_T 
(
   TIEM_ANO             NUMBER(4)            not null,
   FECHA_CARGA          CHAR(10)             not null,
   constraint PK_TIEMPO_T primary key (TIEM_ANO)
);

/*==============================================================*/
/* Table: TIEMPO_V                                              */
/*==============================================================*/
create table TIEMPO_V 
(
   TIEM_ANO             NUMBER(4)            not null,
   FECHA_CARGA          DATE                 not null,
   constraint PK_TIEMPO_V primary key (TIEM_ANO)
);

/*==============================================================*/
/* Table: TIENDA_V                                              */
/*==============================================================*/
create table TIENDA_V 
(
   TIEN_ID              NUMBER(5)            not null,
   FECHA_CARGA          DATE                 not null,
   constraint PK_TIENDA_V primary key (TIEN_ID)
);

/*==============================================================*/
/* Table: TOUR                                                  */
/*==============================================================*/
create table TOUR 
(
   TIEM_ANO             NUMBER(4)            not null,
   CLIE_ID              NUMBER(2)            not null,
   TOUR_PORCENTAJE_VISITANTES NUMBER(10,2),
   constraint PK_TOUR primary key (TIEM_ANO, CLIE_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on TOUR (
   TIEM_ANO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on TOUR (
   CLIE_ID ASC
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA 
(
   TIEM_ANO             NUMBER(4)            not null,
   TIEN_ID              NUMBER(5)            not null,
   CANTIDAD_VENTAS      NUMBER(10),
   TOTAL_VENTAS         NUMBER(5,2),
   MAYORGANANCIA        NUMBER(5),
   constraint PK_VENTA primary key (TIEM_ANO, TIEN_ID)
);

/*==============================================================*/
/* Index: VENTA_TIEM_ANO_FK                                                  */
/*==============================================================*/
create index VENTA_TIEM_ANO_FK on VENTA (
   TIEM_ANO ASC
);

/*==============================================================*/
/* Index: VENTA_TIEN_ID_FK                                                 */
/*==============================================================*/
create index VENTA_TIEN_ID_FK on VENTA (
   TIEN_ID ASC
);

alter table EFICIENCIA
   add constraint FK_EFICIENC_RELATIONS_TIEMPO_E foreign key (TIEM_ANO)
      references TIEMPO_E (TIEM_ANO);

alter table EFICIENCIA
   add constraint FK_EFICIENC_RELATIONS_FABRICA_ foreign key (FABR_ID)
      references FABRICA_E (FABR_ID);

alter table PREFERENCIA
   add constraint FK_PREFEREN_RELATIONS_RANGO_ED foreign key (RANG_ID)
      references RANGO_EDAD_P (RANG_ID);

alter table PREFERENCIA
   add constraint FK_PREFEREN_____PAIS_P foreign key (PAIS_ID)
      references PAIS_P (PAIS_ID);

alter table PREFERENCIA
   add constraint FK_PREFEREN______CLIENTE_ foreign key (CLIE_ID)
      references CLIENTE_P (CLIE_ID);

alter table PREFERENCIA
   add constraint FK_PREFEREN________TIEMPO_P foreign key (TIEM_MES)
      references TIEMPO_P (TIEM_MES);

alter table TOUR
   add constraint FK_TOUR_RELATIONS_TIEMPO_T foreign key (TIEM_ANO)
      references TIEMPO_T (TIEM_ANO);

alter table TOUR
   add constraint FK_TOUR_RELATIONS_CLIENTE_ foreign key (CLIE_ID)
      references CLIENTE_T (CLIE_ID);

alter table VENTA
   add constraint FK_VENTA___TIEMPO_V foreign key (TIEM_ANO)
      references TIEMPO_V (TIEM_ANO);

alter table VENTA
   add constraint FK_VENTA____TIENDA_V foreign key (TIEN_ID)
      references TIENDA_V (TIEN_ID);

