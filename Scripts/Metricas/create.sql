/**TABLE**/

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
   PAIS_ID              NUMBER(10)           not null,
   CLIE_ID              NUMBER(2)            not null,
   TIEM_MES             NUMBER(4)            not null,
   RANG_ID              NUMBER(10)           not null,
   TEMAPREFERIDO_G      CHAR(50),
   TOP2_TEMAPREFERIDO   CHAR(200),
   DISTTEMAPAIS         CHAR(10),
   constraint PK_PREFERENCIA primary key (PAIS_ID, CLIE_ID, TIEM_MES, RANG_ID)
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
   TOUR_PORCENTAJE_VISITANTES NUMBER(4,2),
   constraint PK_TOUR primary key (TIEM_ANO, CLIE_ID)
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

/**INDEX**/
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
/* Index: FK1                                                */
/*==============================================================*/
create index FK1 on PREFERENCIA (
   PAIS_ID ASC
);

/*==============================================================*/
/* Index: FK2                                               */
/*==============================================================*/
create index FK2 on PREFERENCIA (
   CLIE_ID ASC
);

/*==============================================================*/
/* Index: FK3                                             */
/*==============================================================*/
create index FK3 on PREFERENCIA (
   TIEM_MES ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on PREFERENCIA (
   RANG_ID ASC
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
/* Index: FK4                                                  */
/*==============================================================*/
create index FK4 on VENTA (
   TIEM_ANO ASC
);

/*==============================================================*/
/* Index: FK5                                                 */
/*==============================================================*/
create index FK5 on VENTA (
   TIEN_ID ASC
);

CREATE SEQUENCE SQ_FABRICA_E INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_CLIENTE_T INCREMENT BY 1 START WITH 1;