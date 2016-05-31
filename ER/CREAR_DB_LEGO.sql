/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     31/5/2016 1:19:40 a. m.                      */
/*==============================================================*/


alter table CLAS_CLAS
   drop constraint FK_CLAS_CLAS2_TO_CLASIFIC;

alter table CLAS_CLAS
   drop constraint FK_CLAS_CLAS1_TO_CLASIFIC;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__RELATIONS_CLIENTE_;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__RELATIONS_PAIS;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__RELATIONS_ESTADO_C;

alter table DESCUENTO
   drop constraint FK_DESCUENT_RELATIONS_PRODUCCI;

alter table DETALLE
   drop constraint FK_DETALLE_RELATIONS_DISP_PRO;

alter table DETALLE
   drop constraint FK_DETALLE_RELATIONS_PRODUCCI;

alter table DETALLE
   drop constraint FK_DETALLE_RELATIONS_CLIENTE_;

alter table DETALLE
   drop constraint FK_DETALLE_RELATIONS_FACTURA_;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__RELATIONS_FACTURA_;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__RELATIONS_CLIENTE_;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__RELATIONS_DETALLE_;

alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__RELATIONS_PEDIDO;

alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__RELATIONS_DISP_PRO;

alter table DET_LOTE
   drop constraint FK_DET_LOTE_RELATIONS_PRODUCCI;

alter table DET_LOTE
   drop constraint FK_DET_LOTE_RELATIONS_DETALLE_;

alter table DISP_PROD
   drop constraint FK_DISP_PRO_RELATIONS_PRODUCTO;

alter table DISP_PROD
   drop constraint FK_DISP_PRO_RELATIONS_PAIS;

alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_RELATIONS_PAIS;

alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_RELATIONS_ESTADO_C;

alter table FABRICA
   drop constraint FK_FABRICA_RELATIONS_ESTADO_C;

alter table FACTURA_ONLINE
   drop constraint FK_FACTURAO_RELATIONS_CLIENTE_;

alter table FACTURA_PEDIDO
   drop constraint FK_FACTURA__RELATIONS_PEDIDO;

alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__RELATIONS_TIENDA;

alter table FACTURA_TIENDA
   drop constraint FK_FACTURAT_RELATIONS_CLIENTE_;

alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_RELATIONS_PRODUCTO;

alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_RELATIONS_LINEA_PR;

alter table INSTALACION
   drop constraint FK_INSTALAC_RELATIONS_ESTADO_C;

alter table LINEA_PROD
   drop constraint FK_LINEA_PR_RELATIONS_FABRICA;

alter table PEDIDO
   drop constraint FK_PEDIDO_RELATIONS_FABRICA;

alter table PEDIDO
   drop constraint FK_PEDIDO_RELATIONS_TIENDA;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_RELATIONS_CLASIFIC;

alter table PROD_REL
   drop constraint FK_PROD_REL2_TO_PRODUCTO;

alter table PROD_REL
   drop constraint FK_PROD_REL1_TO_PRODUCTO;

alter table TIENDA
   drop constraint FK_TIENDA_RELATIONS_ESTADO_C;

alter table TO_PE
   drop constraint FK_TO_PE_RELATIONS_CLIENTE_;

alter table VALORACION
   drop constraint FK_VALORACI_TO_FACTURAO;

alter table VALORACION
   drop constraint FK_VALORACI_TO_FACTURAT;

drop table CLASIFICACION cascade constraints;

drop index RELATIONSHIP_40_FK;

drop index RELATIONSHIP_39_FK;

drop table CLAS_CLAS cascade constraints;

drop index RELATIONSHIP_53_FK;

drop index RELATIONSHIP_25_FK;

drop index RELATIONSHIP_18_FK;

drop table CLIENTE_VISITANTE cascade constraints;

drop table COSTO cascade constraints;

drop index RELATIONSHIP_46_FK;

drop table DESCUENTO cascade constraints;

drop index RELATIONSHIP_52_FK;

drop index RELATIONSHIP_51_FK;

drop index RELATIONSHIP_50_FK;

drop index RELATIONSHIP_49_FK;

drop table DETALLE cascade constraints;

drop index RELATIONSHIP_58_FK;

drop index RELATIONSHIP_54_FK;

drop index RELATIONSHIP_17_FK;

drop table DETALLE_FACTURA cascade constraints;

drop index RELATIONSHIP_55_FK;

drop index RELATIONSHIP_34_FK;

drop table DETALLE_PEDIDO cascade constraints;

drop index RELATIONSHIP_45_FK;

drop index RELATIONSHIP_44_FK;

drop table DET_LOTE cascade constraints;

drop table DIA cascade constraints;

drop table DIRECCION cascade constraints;

drop index RELATIONSHIP_12_FK;

drop index RELATIONSHIP_11_FK;

drop table DISP_PROD cascade constraints;

drop index RELATIONSHIP_37_FK;

drop index RELATIONSHIP_36_FK;

drop table ESTADO_CIUDAD cascade constraints;

drop index RELATIONSHIP_59_FK;

drop table FABRICA cascade constraints;

drop index RELATIONSHIP_56_FK;

drop table FACTURA_ONLINE cascade constraints;

drop index RELATIONSHIP_48_FK;

drop table FACTURA_PEDIDO cascade constraints;

drop index RELATIONSHIP_14_FK;

drop index RELATIONSHIP_13_FK;

drop table FACTURA_TIENDA cascade constraints;

drop index RELATIONSHIP_32_FK;

drop index RELATIONSHIP_31_FK;

drop table HISTORICO_PRODUCTO cascade constraints;

drop table HORARIO cascade constraints;

drop index RELATIONSHIP_38_FK;

drop table INSTALACION cascade constraints;

drop index RELATIONSHIP_26_FK;

drop table LINEA_PROD cascade constraints;

drop table MONEDA cascade constraints;

drop table PAIS cascade constraints;

drop index RELATIONSHIP_28_FK;

drop index RELATIONSHIP_27_FK;

drop table PEDIDO cascade constraints;

drop table PRODUCCION_LOTE cascade constraints;

drop index RELATIONSHIP_43_FK;

drop table PRODUCTO cascade constraints;

drop index RELATIONSHIP_33_FK;

drop index RELATIONSHIP_30_FK;

drop table PROD_REL cascade constraints;

drop table RANGO cascade constraints;

drop table RESUMEN cascade constraints;

drop table TELEFONO cascade constraints;

drop index RELATIONSHIP_57_FK;

drop table TIENDA cascade constraints;

drop table TOUR_DIAS cascade constraints;

drop index RELATIONSHIP_22_FK;

drop table TO_PE cascade constraints;

drop index RELATIONSHIP_42_FK;

drop index RELATIONSHIP_41_FK;

drop table VALORACION cascade constraints;

/*==============================================================*/
/* Table: CLASIFICACION                                         */
/*==============================================================*/
create table CLASIFICACION 
(
   CL_ID                NUMBER(7)            not null,
   CL_NOMBRE            CHAR(50)             not null,
   CL_DESCRIPCION       CHAR(1000)           not null,
   CL_LICENCIA          CHAR(1)              not null,
   CL_TIPO              CHAR(7)              not null,
   CL_IMAGENES          BLOB                 not null,
   constraint PK_CLASIFICACION primary key (CL_ID)
);

/*==============================================================*/
/* Table: CLAS_CLAS                                             */
/*==============================================================*/
create table CLAS_CLAS 
(
   CL_PADRE             NUMBER(7)            not null,
   CL_HIJO              NUMBER(7)            not null,
   constraint PK_CLAS_CLAS primary key (CL_PADRE, CL_HIJO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_39_FK on CLAS_CLAS (
   CL_PADRE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_40_FK on CLAS_CLAS (
   CL_HIJO ASC
);

/*==============================================================*/
/* Table: CLIENTE_VISITANTE                                     */
/*==============================================================*/
create table CLIENTE_VISITANTE 
(
   CV_ID                NUMBER(7)            not null,
   CV_FK_REPRES         NUMBER(7),
   CV_FK_DIRECCION      NUMBER(7)            not null,
   CV_FK_NACIONALIDAD   NUMBER(7)            not null,
   CV_NOMBRE            CHAR(20)             not null,
   CV_NOMBRE_S          CHAR(20),
   CV_APELLIDO          CHAR(20)             not null,
   CV_APELLIDO_S        CHAR(20),
   CV_F_NAC             DATE                 not null,
   CV_GENERO            CHAR(1)              not null,
   CV_EXPERIENCIA       CHAR(10)             not null,
   CV_TIPOCLIENTE       CHAR(20)             not null,
   CV_DIRECCION         DIRECCION            not null,
   constraint PK_CLIENTE_VISITANTE primary key (CV_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on CLIENTE_VISITANTE (
   CV_FK_REPRES ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on CLIENTE_VISITANTE (
   CV_FK_NACIONALIDAD ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_53_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_53_FK on CLIENTE_VISITANTE (
   CV_FK_DIRECCION ASC
);

/*==============================================================*/
/* Table: COSTO                                                 */
/*==============================================================*/
create table COSTO 
(
   CO_MONTO             NUMBER(1000,2)       not null,
   CO_INCLUIDO          NUMBER               not null
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO 
(
   DES_ID               NUMBER               not null,
   DES_FK_PROD_LOTE     NUMBER               not null,
   DES_FECHA            DATE                 not null,
   DES_CANTIDAD         NUMBER               not null,
   constraint PK_DESCUENTO primary key (DES_ID, DES_FK_PROD_LOTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_46_FK on DESCUENTO (
   DES_FK_PROD_LOTE ASC
);

/*==============================================================*/
/* Table: DETALLE                                               */
/*==============================================================*/
create table DETALLE 
(
   DET_ID               NUMBER(7)            not null,
   DET_FK_PAIS          NUMBER(7)            not null,
   DET_FK_PRODUCTO      NUMBER(7)            not null,
   DET_FK_PROD_LOTE     NUMBER               not null,
   DET_FK_CLIENTE       NUMBER(7),
   DET_FK_FACT_ONLI     NUMBER               not null,
   constraint PK_DETALLE primary key (DET_ID, DET_FK_FACT_ONLI)
);

/*==============================================================*/
/* Index: RELATIONSHIP_49_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_49_FK on DETALLE (
   DET_FK_PAIS ASC,
   DET_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_50_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_50_FK on DETALLE (
   DET_FK_PROD_LOTE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_51_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_51_FK on DETALLE (
   DET_FK_CLIENTE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_52_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_52_FK on DETALLE (
   DET_FK_FACT_ONLI ASC
);

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA 
(
   DF_ID                NUMBER(7)            not null,
   DF_FK_COD_VENTA      NUMBER(7)            not null,
   DF_FK_USUARIO_FINAL  NUMBER(7),
   DF_FK_PEDIDO         NUMBER(7),
   DF_FK_DETPED         NUMBER(7)            not null,
   constraint PK_DETALLE_FACTURA primary key (DF_ID, DF_FK_COD_VENTA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on DETALLE_FACTURA (
   DF_FK_COD_VENTA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_54_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_54_FK on DETALLE_FACTURA (
   DF_FK_USUARIO_FINAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_58_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_58_FK on DETALLE_FACTURA (
   DF_FK_PEDIDO ASC,
   DF_FK_DETPED ASC
);

/*==============================================================*/
/* Table: DETALLE_PEDIDO                                        */
/*==============================================================*/
create table DETALLE_PEDIDO 
(
   DP_ID                NUMBER(7)            not null,
   DP_FK_PEDIDO         NUMBER(7)            not null,
   DP_FK_PAIS           NUMBER(7)            not null,
   DP_FK_PRODUCTO       NUMBER(7)            not null,
   DP_CANTIDAD          NUMBER(10)           not null,
   DP_SUBTOTAL          NUMBER(20,2)         not null,
   constraint PK_DETALLE_PEDIDO primary key (DP_FK_PEDIDO, DP_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on DETALLE_PEDIDO (
   DP_FK_PEDIDO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_55_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_55_FK on DETALLE_PEDIDO (
   DP_FK_PAIS ASC,
   DP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Table: DET_LOTE                                              */
/*==============================================================*/
create table DET_LOTE 
(
   DL_FK_PROD_LOTE      NUMBER               not null,
   DL_FK_PEDIDO         NUMBER(7)            not null,
   DL_FK_DET_PEDIDO     NUMBER(7)            not null,
   DL_CANTIDAD          NUMBER               not null,
   constraint PK_DET_LOTE primary key (DL_FK_PROD_LOTE, DL_FK_PEDIDO, DL_FK_DET_PEDIDO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_44_FK on DET_LOTE (
   DL_FK_PROD_LOTE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_45_FK on DET_LOTE (
   DL_FK_PEDIDO ASC,
   DL_FK_DET_PEDIDO ASC
);

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
create table DIA 
(
   DIA_HORA             DATE                 not null,
   DIA_DESCRIPCION      CHAR(500)            not null
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION 
(
   DI_CALLE             CHAR(50)             not null,
   DI_NUMERO_EDIF       CHAR(50)             not null,
   DI_ZONA_POSTAL       NUMBER(7)            not null,
   DI_LOCAL             CHAR(5)              not null,
   DI_TELEFONOS         Fila (TELEFONO)      not null
);

/*==============================================================*/
/* Table: DISP_PROD                                             */
/*==============================================================*/
create table DISP_PROD 
(
   DP_FK_PAIS           NUMBER(7)            not null,
   DP_FK_PRODUCTO       NUMBER(7)            not null,
   DP_LIMITE            NUMBER(3),
   constraint PK_DISP_PROD primary key (DP_FK_PAIS, DP_FK_PRODUCTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on DISP_PROD (
   DP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on DISP_PROD (
   DP_FK_PAIS ASC
);

/*==============================================================*/
/* Table: ESTADO_CIUDAD                                         */
/*==============================================================*/
create table ESTADO_CIUDAD 
(
   EC_ID                NUMBER(7)            not null,
   EC_FK_ESTADO         NUMBER(7),
   EC_FK_PAIS           NUMBER(7)            not null,
   EC_NOMBRE            CHAR(50)             not null,
   EC_TIPO              CHAR(6)              not null,
   constraint PK_ESTADO_CIUDAD primary key (EC_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_36_FK on ESTADO_CIUDAD (
   EC_FK_PAIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on ESTADO_CIUDAD (
   EC_FK_ESTADO ASC
);

/*==============================================================*/
/* Table: FABRICA                                               */
/*==============================================================*/
create table FABRICA 
(
   FA_ID                NUMBER(7)            not null,
   FA_FK_CIUDAD         NUMBER(7)            not null,
   FA_NOMBRE            CHAR(100)            not null,
   FA_DIRECCION         DIRECCION            not null,
   constraint PK_FABRICA primary key (FA_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_59_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_59_FK on FABRICA (
   FA_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: FACTURA_ONLINE                                        */
/*==============================================================*/
create table FACTURA_ONLINE 
(
   FO_NUMERO            NUMBER               not null,
   FO_FK_CLIENTE        NUMBER(7)            not null,
   FO_FECHA             DATE                 not null,
   FO_TOTAL             NUMBER               not null,
   constraint PK_FACTURA_ONLINE primary key (FO_NUMERO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_56_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_56_FK on FACTURA_ONLINE (
   FO_FK_CLIENTE ASC
);

/*==============================================================*/
/* Table: FACTURA_PEDIDO                                        */
/*==============================================================*/
create table FACTURA_PEDIDO 
(
   FP_NUMERO            NUMBER               not null,
   PD_ORDEN             NUMBER(7)            not null,
   FP_FECHA             DATE                 not null,
   FP_TOTAL             NUMBER               not null,
   constraint PK_FACTURA_PEDIDO primary key (FP_NUMERO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_48_FK on FACTURA_PEDIDO (
   PD_ORDEN ASC
);

/*==============================================================*/
/* Table: FACTURA_TIENDA                                        */
/*==============================================================*/
create table FACTURA_TIENDA 
(
   FT_FK_TIENDA         NUMBER(7)            not null,
   FT_FK_PERSONA        NUMBER(7)            not null,
   FT_CODIGO            NUMBER(7)            not null,
   FT_FECHA             DATE                 not null,
   FT_MONTO_USD         NUMBER(10,2)         not null,
   constraint PK_FACTURA_TIENDA primary key (FT_CODIGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on FACTURA_TIENDA (
   FT_FK_TIENDA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on FACTURA_TIENDA (
   FT_FK_PERSONA ASC
);

/*==============================================================*/
/* Table: HISTORICO_PRODUCTO                                    */
/*==============================================================*/
create table HISTORICO_PRODUCTO 
(
   HP_FK_FABRICA        NUMBER(7)            not null,
   HP_FK_LINEAPROD      NUMBER(7)            not null,
   HP_FK_PRODUCTO       NUMBER(7)            not null,
   HP_FECHAI            DATE                 not null,
   HP_FECHAF            DATE,
   constraint PK_HISTORICO_PRODUCTO primary key (HP_FK_FABRICA, HP_FK_LINEAPROD, HP_FK_PRODUCTO, HP_FECHAI)
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_31_FK on HISTORICO_PRODUCTO (
   HP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_32_FK on HISTORICO_PRODUCTO (
   HP_FK_FABRICA ASC,
   HP_FK_LINEAPROD ASC
);

/*==============================================================*/
/* Table: HORARIO                                               */
/*==============================================================*/
create table HORARIO 
(
   HR_DIA               CHAR(30)             not null,
   HR_INICIO            DATE                 not null,
   HR_FIN               DATE                 not null
);

/*==============================================================*/
/* Table: INSTALACION                                           */
/*==============================================================*/
create table INSTALACION 
(
   INS_ID               NUMBER               not null,
   EC_ID                NUMBER(7)            not null,
   INS_NOMBRE           CHAR(10)             not null,
   INS_TIPO             CHAR(50)             not null,
   INS_DIRECCION        DIRECCION            not null,
   constraint PK_INSTALACION primary key (INS_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_38_FK on INSTALACION (
   EC_ID ASC
);

/*==============================================================*/
/* Table: LINEA_PROD                                            */
/*==============================================================*/
create table LINEA_PROD 
(
   LP_FK_FABRICA        NUMBER(7)            not null,
   LP_ID                NUMBER(7)            not null,
   LP_DESCRIPCION       CHAR(100),
   constraint PK_LINEA_PROD primary key (LP_FK_FABRICA, LP_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on LINEA_PROD (
   LP_FK_FABRICA ASC
);

/*==============================================================*/
/* Table: MONEDA                                                */
/*==============================================================*/
create table MONEDA 
(
   MO_NOMBRE            CHAR(3)              not null,
   MO_CAMBIO            NUMBER(12,4)         not null
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS 
(
   PA_ID                NUMBER(7)            not null,
   PA_NOMBRE            CHAR(50)             not null,
   PA_NACIONALIDAD      CHAR(50)             not null,
   PA_CONTINENTE        CHAR(7)              not null,
   PA_MONEDA            Moneda               not null,
   constraint PK_PAIS primary key (PA_ID)
);

/*==============================================================*/
/* Table: PEDIDO                                                */
/*==============================================================*/
create table PEDIDO 
(
   PD_FK_TIENDA         NUMBER(7)            not null,
   PD_FK_FABRICA        NUMBER(7)            not null,
   PD_ORDEN             NUMBER(7)            not null,
   PD_FEC_PEDIDO        DATE                 not null,
   PD_FEC_OBJETIVO      DATE                 not null,
   PD_FEC_ENVIO         DATE,
   PD_FECHA_COMPLETACION DATE,
   constraint PK_PEDIDO primary key (PD_ORDEN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on PEDIDO (
   PD_FK_FABRICA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on PEDIDO (
   PD_FK_TIENDA ASC
);

/*==============================================================*/
/* Table: PRODUCCION_LOTE                                       */
/*==============================================================*/
create table PRODUCCION_LOTE 
(
   PL_ID_LOTE           NUMBER               not null,
   PL_FEHA              DATE                 not null,
   PL_CANTIDAD          NUMBER               not null,
   PL_TIPO              CLOB                 not null,
   constraint PK_PRODUCCION_LOTE primary key (PL_ID_LOTE)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO 
(
   PR_CODIGO            NUMBER(7)            not null,
   PR_FK_TEMA           NUMBER(7)            not null,
   PR_NOMBRE            CHAR(50)             not null,
   PR_DESC              CHAR(300)            not null,
   PR_RGO_EDAD          fila(RANGO)          not null,
   PR_PRECIO_USD        NUMBER(10,2)         not null,
   PR_CANT_PIEZAS       NUMBER(5)            not null,
   PR_RESUMEN           RESUMEN              not null,
   PR_FOTOS             BLOB                 not null,
   PR_FEC_LANZAM        DATE                 not null,
   PR_INSTRUCCIONES     RAW(999)             not null,
   PR_CATEGORIAS        conj(Char)           not null,
   constraint PK_PRODUCTO primary key (PR_CODIGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_43_FK on PRODUCTO (
   PR_FK_TEMA ASC
);

/*==============================================================*/
/* Table: PROD_REL                                              */
/*==============================================================*/
create table PROD_REL 
(
   PR_PADRE             NUMBER(7)            not null,
   PR_HIJO              NUMBER(7)            not null,
   constraint PK_PROD_REL primary key (PR_PADRE, PR_HIJO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on PROD_REL (
   PR_PADRE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_33_FK on PROD_REL (
   PR_HIJO ASC
);

/*==============================================================*/
/* Table: RANGO                                                 */
/*==============================================================*/
create table RANGO 
(
   RA_VALORI            NUMBER               not null,
   RA_VALORF            NUMBER               not null
);

/*==============================================================*/
/* Table: RESUMEN                                               */
/*==============================================================*/
create table RESUMEN 
(
   RE_ALTO              NUMBER               not null,
   RE_ANCHO             NUMBER               not null,
   RE_PROFUNDO          NUMBER               not null,
   RE_IDIOMAS           Conj(char)           not null,
   RE_DESCRIPCION       CHAR(200)            not null
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO 
(
   TELE_COD_INT         NUMBER               not null,
   TELE_COD_AREA        NUMBER               not null,
   TELE_NUMERO          NUMBER               not null,
   TELE_TIPO            CHAR(10)             not null
);

/*==============================================================*/
/* Table: TIENDA                                                */
/*==============================================================*/
create table TIENDA 
(
   TI_ID                NUMBER(7)            not null,
   TI_FK_CIUDAD         NUMBER(7)            not null,
   TI_HORARIO           Fila(Horario)        not null,
   TI_FOTOS             BLOB                 not null,
   TI_DIRECCION         DIRECCION            not null,
   constraint PK_TIENDA primary key (TI_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_57_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_57_FK on TIENDA (
   TI_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: TOUR_DIAS                                             */
/*==============================================================*/
create table TOUR_DIAS 
(
   TD_DIA1              fila(DIA),
   TD_DIA2              fila(DIA),
   TD_DIA3              fila(DIA)
);

/*==============================================================*/
/* Table: TO_PE                                                 */
/*==============================================================*/
create table TO_PE 
(
   TOPE_FECHA           DATE                 not null,
   TOPE_PERSONA         NUMBER(7)            not null,
   constraint PK_TO_PE primary key (TOPE_FECHA, TOPE_PERSONA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on TO_PE (
   TOPE_PERSONA ASC
);

/*==============================================================*/
/* Table: VALORACION                                            */
/*==============================================================*/
create table VALORACION 
(
   VA_ID                NUMBER(7)            not null,
   VA_FK_FAC_ONLI       NUMBER,
   VA_FK_FAC_TIENDA     NUMBER(7),
   VA_FECHA             DATE                 not null,
   VA_EXPERIENCIA       NUMBER(1)            not null,
   VA_CALIDAD_PR        NUMBER(1)            not null,
   VA_DIFICULTAD        CHAR(10)             not null,
   VA_IMPRESIONES       CHAR(1200),
   VA_ARTICULO          CHAR(25)             not null,
   constraint PK_VALORACION primary key (VA_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_41_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_41_FK on VALORACION (
   VA_FK_FAC_ONLI ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_42_FK on VALORACION (
   VA_FK_FAC_TIENDA ASC
);

alter table CLAS_CLAS
   add constraint FK_CLAS_CLAS2_TO_CLASIFIC foreign key (CL_PADRE)
      references CLASIFICACION (CL_ID);

alter table CLAS_CLAS
   add constraint FK_CLAS_CLAS1_TO_CLASIFIC foreign key (CL_HIJO)
      references CLASIFICACION (CL_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__RELATIONS_CLIENTE_ foreign key (CV_FK_REPRES)
      references CLIENTE_VISITANTE (CV_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__RELATIONS_PAIS foreign key (CV_FK_NACIONALIDAD)
      references PAIS (PA_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__RELATIONS_ESTADO_C foreign key (CV_FK_DIRECCION)
      references ESTADO_CIUDAD (EC_ID);

alter table DESCUENTO
   add constraint FK_DESCUENT_RELATIONS_PRODUCCI foreign key (DES_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DETALLE
   add constraint FK_DETALLE_RELATIONS_DISP_PRO foreign key (DET_FK_PAIS, DET_FK_PRODUCTO)
      references DISP_PROD (DP_FK_PAIS, DP_FK_PRODUCTO);

alter table DETALLE
   add constraint FK_DETALLE_RELATIONS_PRODUCCI foreign key (DET_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DETALLE
   add constraint FK_DETALLE_RELATIONS_CLIENTE_ foreign key (DET_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table DETALLE
   add constraint FK_DETALLE_RELATIONS_FACTURA_ foreign key (DET_FK_FACT_ONLI)
      references FACTURA_ONLINE (FO_NUMERO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__RELATIONS_FACTURA_ foreign key (DF_FK_COD_VENTA)
      references FACTURA_TIENDA (FT_CODIGO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__RELATIONS_CLIENTE_ foreign key (DF_FK_USUARIO_FINAL)
      references CLIENTE_VISITANTE (CV_ID);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__RELATIONS_DETALLE_ foreign key (DF_FK_PEDIDO, DF_FK_DETPED)
      references DETALLE_PEDIDO (DP_FK_PEDIDO, DP_ID);

alter table DETALLE_PEDIDO
   add constraint FK_DETALLE__RELATIONS_PEDIDO foreign key (DP_FK_PEDIDO)
      references PEDIDO (PD_ORDEN);

alter table DETALLE_PEDIDO
   add constraint FK_DETALLE__RELATIONS_DISP_PRO foreign key (DP_FK_PAIS, DP_FK_PRODUCTO)
      references DISP_PROD (DP_FK_PAIS, DP_FK_PRODUCTO);

alter table DET_LOTE
   add constraint FK_DET_LOTE_RELATIONS_PRODUCCI foreign key (DL_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DET_LOTE
   add constraint FK_DET_LOTE_RELATIONS_DETALLE_ foreign key (DL_FK_PEDIDO, DL_FK_DET_PEDIDO)
      references DETALLE_PEDIDO (DP_FK_PEDIDO, DP_ID);

alter table DISP_PROD
   add constraint FK_DISP_PRO_RELATIONS_PRODUCTO foreign key (DP_FK_PRODUCTO)
      references PRODUCTO (PR_CODIGO);

alter table DISP_PROD
   add constraint FK_DISP_PRO_RELATIONS_PAIS foreign key (DP_FK_PAIS)
      references PAIS (PA_ID);

alter table ESTADO_CIUDAD
   add constraint FK_ESTADO_C_RELATIONS_PAIS foreign key (EC_FK_PAIS)
      references PAIS (PA_ID);

alter table ESTADO_CIUDAD
   add constraint FK_ESTADO_C_RELATIONS_ESTADO_C foreign key (EC_FK_ESTADO)
      references ESTADO_CIUDAD (EC_ID);

alter table FABRICA
   add constraint FK_FABRICA_RELATIONS_ESTADO_C foreign key (FA_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table FACTURA_ONLINE
   add constraint FK_FACTURAO_RELATIONS_CLIENTE_ foreign key (FO_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table FACTURA_PEDIDO
   add constraint FK_FACTURA__RELATIONS_PEDIDO foreign key (PD_ORDEN)
      references PEDIDO (PD_ORDEN);

alter table FACTURA_TIENDA
   add constraint FK_FACTURA__RELATIONS_TIENDA foreign key (FT_FK_TIENDA)
      references TIENDA (TI_ID);

alter table FACTURA_TIENDA
   add constraint FK_FACTURAT_RELATIONS_CLIENTE_ foreign key (FT_FK_PERSONA)
      references CLIENTE_VISITANTE (CV_ID);

alter table HISTORICO_PRODUCTO
   add constraint FK_HISTORIC_RELATIONS_PRODUCTO foreign key (HP_FK_PRODUCTO)
      references PRODUCTO (PR_CODIGO);

alter table HISTORICO_PRODUCTO
   add constraint FK_HISTORIC_RELATIONS_LINEA_PR foreign key (HP_FK_FABRICA, HP_FK_LINEAPROD)
      references LINEA_PROD (LP_FK_FABRICA, LP_ID);

alter table INSTALACION
   add constraint FK_INSTALAC_RELATIONS_ESTADO_C foreign key (EC_ID)
      references ESTADO_CIUDAD (EC_ID);

alter table LINEA_PROD
   add constraint FK_LINEA_PR_RELATIONS_FABRICA foreign key (LP_FK_FABRICA)
      references FABRICA (FA_ID);

alter table PEDIDO
   add constraint FK_PEDIDO_RELATIONS_FABRICA foreign key (PD_FK_FABRICA)
      references FABRICA (FA_ID);

alter table PEDIDO
   add constraint FK_PEDIDO_RELATIONS_TIENDA foreign key (PD_FK_TIENDA)
      references TIENDA (TI_ID);

alter table PRODUCTO
   add constraint FK_PRODUCTO_RELATIONS_CLASIFIC foreign key (PR_FK_TEMA)
      references CLASIFICACION (CL_ID);

alter table PROD_REL
   add constraint FK_PROD_REL2_TO_PRODUCTO foreign key (PR_PADRE)
      references PRODUCTO (PR_CODIGO);

alter table PROD_REL
   add constraint FK_PROD_REL1_TO_PRODUCTO foreign key (PR_HIJO)
      references PRODUCTO (PR_CODIGO);

alter table TIENDA
   add constraint FK_TIENDA_RELATIONS_ESTADO_C foreign key (TI_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table TO_PE
   add constraint FK_TO_PE_RELATIONS_CLIENTE_ foreign key (TOPE_PERSONA)
      references CLIENTE_VISITANTE (CV_ID);

alter table VALORACION
   add constraint FK_VALORACI_TO_FACTURAO foreign key (VA_FK_FAC_ONLI)
      references FACTURA_ONLINE (FO_NUMERO);

alter table VALORACION
   add constraint FK_VALORACI_TO_FACTURAT foreign key (VA_FK_FAC_TIENDA)
      references FACTURA_TIENDA (FT_CODIGO);

