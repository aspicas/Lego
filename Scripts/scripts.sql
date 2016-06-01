/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     5/31/2016 10:03:29 PM                        */
/*==============================================================*/


alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFIC;

alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFIC;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_CIUDAD_ESTADO_C;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_CLIENT_CLIENTE_;

alter table CLIENTE_VISITANTE
   drop constraint FK_CLIENTE__FK_PAIS_C_PAIS;

alter table DESCUENTO
   drop constraint FK_DESCUENT_FK_PRODLO_PRODUCCI;

alter table DETALLE
   drop constraint FK_DETALLE_FK_CLIENT_CLIENTE_;

alter table DETALLE
   drop constraint FK_DETALLE_FK_DISPRO_DISP_PRO;

alter table DETALLE
   drop constraint FK_DETALLE_FK_FACTON_FACTURA_;

alter table DETALLE
   drop constraint FK_DETALLE_FK_PRODLO_PRODUCCI;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_CLIENT_CLIENTE_;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_DETPED_DETALLE_;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__FK_FACTIE_FACTURA_;

alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__FK_DISPRO_DISP_PRO;

alter table DETALLE_PEDIDO
   drop constraint FK_DETALLE__FK_PEDIDO_PEDIDO;

alter table DET_LOTE
   drop constraint FK_DET_LOTE_FK_DETPED_DETALLE_;

alter table DET_LOTE
   drop constraint FK_DET_LOTE_FK_PRODLO_PRODUCCI;

alter table DISP_PROD
   drop constraint FK_DISP_PRO_FK_PAIS_D_PAIS;

alter table DISP_PROD
   drop constraint FK_DISP_PRO_FK_PRODUC_PRODUCTO;

alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_FK_ESTADO_ESTADO_C;

alter table ESTADO_CIUDAD
   drop constraint FK_ESTADO_C_FK_PAIS_E_PAIS;

alter table FABRICA
   drop constraint FK_FABRICA_FK_CIUDAD_ESTADO_C;

alter table FACTURA_ONLINE
   drop constraint FK_FACTURA__FK_CLIENT_CLIENTE_;

alter table FACTURA_PEDIDO
   drop constraint FK_FACTURA__FK_FACTPE_PEDIDO;

alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__FK_CLIENT_CLIENTE_;

alter table FACTURA_TIENDA
   drop constraint FK_FACTURA__FK_TIENDA_TIENDA;

alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_FK_LINEA__LINEA_PR;

alter table HISTORICO_PRODUCTO
   drop constraint FK_HISTORIC_FK_PRODUC_PRODUCTO;

alter table INSTALACION
   drop constraint FK_INSTALAC_FK_CIUDAD_ESTADO_C;

alter table LINEA_PROD
   drop constraint FK_LINEA_PR_FK_FABRIC_FABRICA;

alter table PEDIDO
   drop constraint FK_PEDIDO_FK_FABRIC_FABRICA;

alter table PEDIDO
   drop constraint FK_PEDIDO_FK_FACTPE_FACTURA_;

alter table PEDIDO
   drop constraint FK_PEDIDO_FK_TIENDA_TIENDA;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_FK_CLASIF_CLASIFIC;

alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCTO;

alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCTO;

alter table TIENDA
   drop constraint FK_TIENDA_FK_CIUDAD_ESTADO_C;

alter table TOPE
   drop constraint FK_TOPE_FK_CLIENT_CLIENTE_;

alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTIE_FACTURA_;

alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTON_FACTURA_;

drop table CLASIFICACION cascade constraints;

drop index FK_CLASIFICADO_CCH_FK;

drop index FK_CLASIFICADO_CCP_FK;

drop table CLAS_CLAS cascade constraints;

drop index FK_CIUDAD_CV_FK;

drop index FK_PAIS_CV_FK;

drop index FK_CLIENTE_VISITANTE_FK;

drop table CLIENTE_VISITANTE cascade constraints;

drop table COSTO cascade constraints;

drop index FK_PRODLOTE_DES_FK;

drop table DESCUENTO cascade constraints;

drop index FK_FACTONLINE_DET_FK;

drop index FK_CLIENTE_DET_FK;

drop index FK_PRODLOTE_DET_FK;

drop index FK_DISPROD_DET_FK;

drop table DETALLE cascade constraints;

drop index FK_DETPEDIDO_DF_FK;

drop index FK_CLIENTE_DF_FK;

drop index FK_FACTIENDA_DF_FK;

drop table DETALLE_FACTURA cascade constraints;

drop index FK_DISPROD_DP_FK;

drop index FK_PEDIDO_DP_FK;

drop table DETALLE_PEDIDO cascade constraints;

drop index FK_DETPEDIDO_DL_FK;

drop index FK_PRODLOTE_DL_FK;

drop table DET_LOTE cascade constraints;

drop table DIA cascade constraints;

drop table DIRECCION cascade constraints;

drop index FK_PAIS_DP_FK;

drop index FK_PRODUCTO_DP_FK;

drop table DISP_PROD cascade constraints;

drop index FK_ESTADO_CIUDAD_FK;

drop index FK_PAIS_EC_FK;

drop table ESTADO_CIUDAD cascade constraints;

drop index FK_CIUDAD_FA_FK;

drop table FABRICA cascade constraints;

drop index FK_CLIENTE_FO_FK;

drop table FACTURA_ONLINE cascade constraints;

drop index FK_FACTPEDIDO_PD2_FK;

drop table FACTURA_PEDIDO cascade constraints;

drop index FK_CLIENTE_FT_FK;

drop index FK_TIENDA_FT_FK;

drop table FACTURA_TIENDA cascade constraints;

drop index FK_LINEA_HP_FK;

drop index FK_PRODUCTO_HP_FK;

drop table HISTORICO_PRODUCTO cascade constraints;

drop table HORARIO cascade constraints;

drop index FK_CIUDAD_INS_FK;

drop table INSTALACION cascade constraints;

drop index FK_FABRICA_LP_FK;

drop table LINEA_PROD cascade constraints;

drop table MONEDA cascade constraints;

drop table PAIS cascade constraints;

drop index FK_FACTPEDIDO_PD_FK;

drop index FK_TIENDA_PD_FK;

drop index FK_FABRICA_PD_FK;

drop table PEDIDO cascade constraints;

drop table PRODUCCION_LOTE cascade constraints;

drop index FK_CLASIFICACION_PR_FK;

drop table PRODUCTO cascade constraints;

drop index FK_PRODUCTO_PREP_FK;

drop index FK_PRODUCTO_PREH_FK;

drop table PROD_REL cascade constraints;

drop table RANGO cascade constraints;

drop table RESUMEN cascade constraints;

drop table TELEFONO cascade constraints;

drop index FK_CIUDAD_TIE_FK;

drop table TIENDA cascade constraints;

drop index FK_CLIENTE_TOPE_FK;

drop table TOPE cascade constraints;

drop table TOUR_DIAS cascade constraints;

drop index FK_FACTIENDA_VA_FK;

drop index FK_FACTONLINE_VA_FK;

drop table VALORACION cascade constraints;

/*==============================================================*/
/* Table: CLASIFICACION                                         */
/*==============================================================*/
create table CLASIFICACION 
(
   CL_ID                NUMBER(7)            not null,
   CL_NOMBRE            VARCHAR2(50)             not null,
   CL_DESCRIPCION       VARCHAR2(1000)           not null,
   CL_LICENCIA          VARCHAR2(1)              not null,
   CL_TIPO              VARCHAR2(7)              not null,
   CL_IMAGENES          BLOB                 not null,
   constraint PK_CLASIFICACION primary key (CL_ID)
);

/*==============================================================*/
/* Table: CLAS_CLAS                                             */
/*==============================================================*/
create table CLAS_CLAS 
(
   CC_PADRE             NUMBER(7)            not null,
   CC_HIJO              NUMBER(7)            not null,
   constraint PK_CLAS_CLAS primary key (CC_PADRE, CC_HIJO)
);

/*==============================================================*/
/* Index: FK_CLASIFICADO_CCP_FK                                 */
/*==============================================================*/
create index FK_CLASIFICADO_CCP_FK on CLAS_CLAS (
   CC_PADRE ASC
);

/*==============================================================*/
/* Index: FK_CLASIFICADO_CCH_FK                                 */
/*==============================================================*/
create index FK_CLASIFICADO_CCH_FK on CLAS_CLAS (
   CC_HIJO ASC
);

/*==============================================================*/
/* Table: CLIENTE_VISITANTE                                     */
/*==============================================================*/
create table CLIENTE_VISITANTE 
(
   CV_ID                NUMBER(7)            not null,
   CV_FK_REPRESEN       NUMBER(7),
   CV_FK_CIUDAD         NUMBER(7)            not null,
   CV_FK_NACIONALIDAD   NUMBER(7)            not null,
   CV_NOMBRE            VARCHAR2(20)             not null,
   CV_NOMBRE_S          VARCHAR2(20),
   CV_APELLIDO          VARCHAR2(20)             not null,
   CV_APELLIDO_S        VARCHAR2(20),
   CV_F_NAC             DATE                 not null,
   CV_GENERO            VARCHAR2(1)              not null,
   CV_EXPERIENCIA       VARCHAR2(10)             not null,
   CV_TIPOCLIENTE       VARCHAR2(20)             not null,
   CV_DIRECCION         DIRECCION            not null,
   constraint PK_CLIENTE_VISITANTE primary key (CV_ID)
);

/*==============================================================*/
/* Index: FK_CLIENTE_VISITANTE_FK                               */
/*==============================================================*/
create index FK_CLIENTE_VISITANTE_FK on CLIENTE_VISITANTE (
   CV_FK_REPRESEN ASC
);

/*==============================================================*/
/* Index: FK_PAIS_CV_FK                                         */
/*==============================================================*/
create index FK_PAIS_CV_FK on CLIENTE_VISITANTE (
   CV_FK_NACIONALIDAD ASC
);

/*==============================================================*/
/* Index: FK_CIUDAD_CV_FK                                       */
/*==============================================================*/
create index FK_CIUDAD_CV_FK on CLIENTE_VISITANTE (
   CV_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO 
(
   DES_ID               NUMBER(7)            not null,
   DES_FK_PROD_LOTE     NUMBER(7)            not null,
   DES_FECHA            DATE                 not null,
   DES_CANTIDAD         NUMBER(5)            not null,
   constraint PK_DESCUENTO primary key (DES_ID, DES_FK_PROD_LOTE)
);

/*==============================================================*/
/* Index: FK_PRODLOTE_DES_FK                                    */
/*==============================================================*/
create index FK_PRODLOTE_DES_FK on DESCUENTO (
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
   DET_FK_PROD_LOTE     NUMBER(7)            not null,
   DET_FK_CLIENTE       NUMBER(7),
   DET_FK_FACT_ONLI     NUMBER(7)            not null,
   constraint PK_DETALLE primary key (DET_ID, DET_FK_FACT_ONLI)
);

/*==============================================================*/
/* Index: FK_DISPROD_DET_FK                                     */
/*==============================================================*/
create index FK_DISPROD_DET_FK on DETALLE (
   DET_FK_PAIS ASC,
   DET_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: FK_PRODLOTE_DET_FK                                    */
/*==============================================================*/
create index FK_PRODLOTE_DET_FK on DETALLE (
   DET_FK_PROD_LOTE ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_DET_FK                                     */
/*==============================================================*/
create index FK_CLIENTE_DET_FK on DETALLE (
   DET_FK_CLIENTE ASC
);

/*==============================================================*/
/* Index: FK_FACTONLINE_DET_FK                                  */
/*==============================================================*/
create index FK_FACTONLINE_DET_FK on DETALLE (
   DET_FK_FACT_ONLI ASC
);

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA 
(
   DF_ID                NUMBER(7)            not null,
   DF_FK_FACT_T         NUMBER(7)            not null,
   DF_FK_CLIENTE        NUMBER(7),
   DF_FK_PEDIDO         NUMBER(7)            not null,
   DF_FK_DETPED         NUMBER(7)            not null,
   constraint PK_DETALLE_FACTURA primary key (DF_ID, DF_FK_FACT_T)
);

/*==============================================================*/
/* Index: FK_FACTIENDA_DF_FK                                    */
/*==============================================================*/
create index FK_FACTIENDA_DF_FK on DETALLE_FACTURA (
   DF_FK_FACT_T ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_DF_FK                                      */
/*==============================================================*/
create index FK_CLIENTE_DF_FK on DETALLE_FACTURA (
   DF_FK_CLIENTE ASC
);

/*==============================================================*/
/* Index: FK_DETPEDIDO_DF_FK                                    */
/*==============================================================*/
create index FK_DETPEDIDO_DF_FK on DETALLE_FACTURA (
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
   DIP_FK_PAIS          NUMBER(7)            not null,
   DIP_FK_PRODUCTO      NUMBER(7)            not null,
   DP_CANTIDAD          NUMBER(10)           not null,
   DP_SUBTOTAL          NUMBER(20,2)         not null,
   constraint PK_DETALLE_PEDIDO primary key (DP_FK_PEDIDO, DP_ID)
);

/*==============================================================*/
/* Index: FK_PEDIDO_DP_FK                                       */
/*==============================================================*/
create index FK_PEDIDO_DP_FK on DETALLE_PEDIDO (
   DP_FK_PEDIDO ASC
);

/*==============================================================*/
/* Index: FK_DISPROD_DP_FK                                      */
/*==============================================================*/
create index FK_DISPROD_DP_FK on DETALLE_PEDIDO (
   DIP_FK_PAIS ASC,
   DIP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Table: DET_LOTE                                              */
/*==============================================================*/
create table DET_LOTE 
(
   DL_FK_PROD_LOTE      NUMBER(7)            not null,
   DL_FK_PEDIDO         NUMBER(7)            not null,
   DL_FK_DET_PEDIDO     NUMBER(7)            not null,
   DL_CANTIDAD          NUMBER(7)            not null,
   constraint PK_DET_LOTE primary key (DL_FK_PROD_LOTE, DL_FK_PEDIDO, DL_FK_DET_PEDIDO)
);

/*==============================================================*/
/* Index: FK_PRODLOTE_DL_FK                                     */
/*==============================================================*/
create index FK_PRODLOTE_DL_FK on DET_LOTE (
   DL_FK_PROD_LOTE ASC
);

/*==============================================================*/
/* Index: FK_DETPEDIDO_DL_FK                                    */
/*==============================================================*/
create index FK_DETPEDIDO_DL_FK on DET_LOTE (
   DL_FK_PEDIDO ASC,
   DL_FK_DET_PEDIDO ASC
);

/*==============================================================*/
/* Table: DISP_PROD                                             */
/*==============================================================*/
create table DISP_PROD 
(
   DIP_FK_PAIS          NUMBER(7)            not null,
   DIP_FK_PRODUCTO      NUMBER(7)            not null,
   DIP_LIMITE           NUMBER(3),
   constraint PK_DISP_PROD primary key (DIP_FK_PAIS, DIP_FK_PRODUCTO)
);

/*==============================================================*/
/* Index: FK_PRODUCTO_DP_FK                                     */
/*==============================================================*/
create index FK_PRODUCTO_DP_FK on DISP_PROD (
   DIP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: FK_PAIS_DP_FK                                         */
/*==============================================================*/
create index FK_PAIS_DP_FK on DISP_PROD (
   DIP_FK_PAIS ASC
);

/*==============================================================*/
/* Table: ESTADO_CIUDAD                                         */
/*==============================================================*/
create table ESTADO_CIUDAD 
(
   EC_ID                NUMBER(7)            not null,
   EC_FK_ESTADO         NUMBER(7),
   EC_FK_PAIS           NUMBER(7)            not null,
   EC_NOMBRE            VARCHAR2(50)             not null,
   EC_TIPO              VARCHAR2(6)              not null,
   constraint PK_ESTADO_CIUDAD primary key (EC_ID)
);

/*==============================================================*/
/* Index: FK_PAIS_EC_FK                                         */
/*==============================================================*/
create index FK_PAIS_EC_FK on ESTADO_CIUDAD (
   EC_FK_PAIS ASC
);

/*==============================================================*/
/* Index: FK_ESTADO_CIUDAD_FK                                   */
/*==============================================================*/
create index FK_ESTADO_CIUDAD_FK on ESTADO_CIUDAD (
   EC_FK_ESTADO ASC
);

/*==============================================================*/
/* Table: FABRICA                                               */
/*==============================================================*/
create table FABRICA 
(
   FA_ID                NUMBER(7)            not null,
   FA_FK_CIUDAD         NUMBER(7)            not null,
   FA_NOMBRE            VARCHAR2(100)            not null,
   FA_DIRECCION         DIRECCION            not null,
   constraint PK_FABRICA primary key (FA_ID)
);

/*==============================================================*/
/* Index: FK_CIUDAD_FA_FK                                       */
/*==============================================================*/
create index FK_CIUDAD_FA_FK on FABRICA (
   FA_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: FACTURA_ONLINE                                        */
/*==============================================================*/
create table FACTURA_ONLINE 
(
   FO_NUMERO            NUMBER(7)            not null,
   FO_FK_CLIENTE        NUMBER(7)            not null,
   FO_FECHA             DATE                 not null,
   FO_TOTAL             NUMBER(5,2)          not null,
   constraint PK_FACTURA_ONLINE primary key (FO_NUMERO)
);

/*==============================================================*/
/* Index: FK_CLIENTE_FO_FK                                      */
/*==============================================================*/
create index FK_CLIENTE_FO_FK on FACTURA_ONLINE (
   FO_FK_CLIENTE ASC
);

/*==============================================================*/
/* Table: FACTURA_PEDIDO                                        */
/*==============================================================*/
create table FACTURA_PEDIDO 
(
   FP_NUMERO            NUMBER(7)            not null,
   PD_ORDEN             NUMBER(7)            not null,
   FP_FECHA             DATE                 not null,
   FP_TOTAL             NUMBER(5,2)          not null,
   constraint PK_FACTURA_PEDIDO primary key (FP_NUMERO)
);

/*==============================================================*/
/* Index: FK_FACTPEDIDO_PD2_FK                                  */
/*==============================================================*/
create index FK_FACTPEDIDO_PD2_FK on FACTURA_PEDIDO (
   PD_ORDEN ASC
);

/*==============================================================*/
/* Table: FACTURA_TIENDA                                        */
/*==============================================================*/
create table FACTURA_TIENDA 
(
   FT_FK_TIENDA         NUMBER(7)            not null,
   FT_FK_CLIENTE        NUMBER(7)            not null,
   FT_CODIGO            NUMBER(7)            not null,
   FT_FECHA             DATE                 not null,
   FT_MONTO_USD         NUMBER(10,2)         not null,
   constraint PK_FACTURA_TIENDA primary key (FT_CODIGO)
);

/*==============================================================*/
/* Index: FK_TIENDA_FT_FK                                       */
/*==============================================================*/
create index FK_TIENDA_FT_FK on FACTURA_TIENDA (
   FT_FK_TIENDA ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_FT_FK                                      */
/*==============================================================*/
create index FK_CLIENTE_FT_FK on FACTURA_TIENDA (
   FT_FK_CLIENTE ASC
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
/* Index: FK_PRODUCTO_HP_FK                                     */
/*==============================================================*/
create index FK_PRODUCTO_HP_FK on HISTORICO_PRODUCTO (
   HP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: FK_LINEA_HP_FK                                        */
/*==============================================================*/
create index FK_LINEA_HP_FK on HISTORICO_PRODUCTO (
   HP_FK_FABRICA ASC,
   HP_FK_LINEAPROD ASC
);

/*==============================================================*/
/* Table: INSTALACION                                           */
/*==============================================================*/
create table INSTALACION 
(
   INS_ID               NUMBER(7)            not null,
   INS_FK_CIUDAD        NUMBER(7)            not null,
   INS_NOMBRE           VARCHAR2(10)             not null,
   INS_TIPO             VARCHAR2(50)             not null,
   INS_DIRECCION        DIRECCION            not null,
   constraint PK_INSTALACION primary key (INS_ID)
);

/*==============================================================*/
/* Index: FK_CIUDAD_INS_FK                                      */
/*==============================================================*/
create index FK_CIUDAD_INS_FK on INSTALACION (
   INS_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: LINEA_PROD                                            */
/*==============================================================*/
create table LINEA_PROD 
(
   LP_FK_FABRICA        NUMBER(7)            not null,
   LP_ID                NUMBER(7)            not null,
   LP_DESCRIPCION       VARCHAR2(100),
   constraint PK_LINEA_PROD primary key (LP_FK_FABRICA, LP_ID)
);

/*==============================================================*/
/* Index: FK_FABRICA_LP_FK                                      */
/*==============================================================*/
create index FK_FABRICA_LP_FK on LINEA_PROD (
   LP_FK_FABRICA ASC
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS 
(
   PA_ID                NUMBER(7)            not null,
   PA_NOMBRE            VARCHAR2(50)             not null,
   PA_NACIONALIDAD      VARCHAR2(50)             not null,
   PA_CONTINENTE        VARCHAR2(7)              not null,
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
   FP_NUMERO            NUMBER(7)            not null,
   PD_FEC_PEDIDO        DATE                 not null,
   PD_FEC_OBJETIVO      DATE                 not null,
   PD_FEC_ENVIO         DATE,
   PD_FECHA_COMPLETACION DATE,
   constraint PK_PEDIDO primary key (PD_ORDEN)
);

/*==============================================================*/
/* Index: FK_FABRICA_PD_FK                                      */
/*==============================================================*/
create index FK_FABRICA_PD_FK on PEDIDO (
   PD_FK_FABRICA ASC
);

/*==============================================================*/
/* Index: FK_TIENDA_PD_FK                                       */
/*==============================================================*/
create index FK_TIENDA_PD_FK on PEDIDO (
   PD_FK_TIENDA ASC
);

/*==============================================================*/
/* Index: FK_FACTPEDIDO_PD_FK                                   */
/*==============================================================*/
create index FK_FACTPEDIDO_PD_FK on PEDIDO (
   FP_NUMERO ASC
);

/*==============================================================*/
/* Table: PRODUCCION_LOTE                                       */
/*==============================================================*/
create table PRODUCCION_LOTE 
(
   PL_ID_LOTE           NUMBER(7)            not null,
   PL_FEHA              DATE                 not null,
   PL_CANTIDAD          NUMBER(5)            not null,
   PL_TIPO              VARCHAR2(6)              not null,
   constraint PK_PRODUCCION_LOTE primary key (PL_ID_LOTE)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO 
(
   PR_CODIGO            NUMBER(7)            not null,
   PR_FK_CLASIFICACION  NUMBER(7)            not null,
   PR_NOMBRE            VARCHAR2(50)             not null,
   PR_DESC              VARCHAR2(300)            not null,
   PR_RGO_EDAD          fila(RANGO)          not null,
   PR_PRECIO_USD        NUMBER(10,2)         not null,
   PR_CANT_PIEZAS       NUMBER(5)            not null,
   PR_RESUMEN           RESUMEN              not null,
   PR_FOTOS             BLOB                 not null,
   PR_FEC_LANZAM        DATE                 not null,
   PR_INSTRUCCIONES     BFILE                not null,
   PR_CATEGORIAS        conj(Char)           not null,
   constraint PK_PRODUCTO primary key (PR_CODIGO)
);

/*==============================================================*/
/* Index: FK_CLASIFICACION_PR_FK                                */
/*==============================================================*/
create index FK_CLASIFICACION_PR_FK on PRODUCTO (
   PR_FK_CLASIFICACION ASC
);

/*==============================================================*/
/* Table: PROD_REL                                              */
/*==============================================================*/
create table PROD_REL 
(
   PRE_PADRE            NUMBER(7)            not null,
   PRE_HIJO             NUMBER(7)            not null,
   constraint PK_PROD_REL primary key (PRE_PADRE, PRE_HIJO)
);

/*==============================================================*/
/* Index: FK_PRODUCTO_PREH_FK                                   */
/*==============================================================*/
create index FK_PRODUCTO_PREH_FK on PROD_REL (
   PRE_PADRE ASC
);

/*==============================================================*/
/* Index: FK_PRODUCTO_PREP_FK                                   */
/*==============================================================*/
create index FK_PRODUCTO_PREP_FK on PROD_REL (
   PRE_HIJO ASC
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
/* Index: FK_CIUDAD_TIE_FK                                      */
/*==============================================================*/
create index FK_CIUDAD_TIE_FK on TIENDA (
   TI_FK_CIUDAD ASC
);

/*==============================================================*/
/* Table: TOPE                                                  */
/*==============================================================*/
create table TOPE 
(
   TOPE_FECHA           DATE                 not null,
   TOPE_CLIENTE         NUMBER(7)            not null,
   constraint PK_TOPE primary key (TOPE_FECHA, TOPE_CLIENTE)
);

/*==============================================================*/
/* Index: FK_CLIENTE_TOPE_FK                                    */
/*==============================================================*/
create index FK_CLIENTE_TOPE_FK on TOPE (
   TOPE_CLIENTE ASC
);

/*==============================================================*/
/* Table: VALORACION                                            */
/*==============================================================*/
create table VALORACION 
(
   VA_ID                NUMBER(7)            not null,
   VA_FK_FAC_ONLI       NUMBER(7),
   VA_FK_FAC_TIENDA     NUMBER(7),
   VA_FECHA             DATE                 not null,
   VA_EXPERIENCIA       NUMBER(1)            not null,
   VA_CALIDAD_PR        NUMBER(1)            not null,
   VA_DIFICULTAD        VARCHAR2(10)             not null,
   VA_IMPRESIONES       VARCHAR2(1200),
   VA_ARTICULO          VARCHAR2(25)             not null,
   constraint PK_VALORACION primary key (VA_ID)
);

/*==============================================================*/
/* Index: FK_FACTONLINE_VA_FK                                   */
/*==============================================================*/
create index FK_FACTONLINE_VA_FK on VALORACION (
   VA_FK_FAC_ONLI ASC
);

/*==============================================================*/
/* Index: FK_FACTIENDA_VA_FK                                    */
/*==============================================================*/
create index FK_FACTIENDA_VA_FK on VALORACION (
   VA_FK_FAC_TIENDA ASC
);

alter table CLAS_CLAS
   add constraint FK_CLAS_CLA_FK_CLASIF_CLASIFIC foreign key (CC_HIJO)
      references CLASIFICACION (CL_ID);

alter table CLAS_CLAS
   add constraint FK_CLAS_CLA_FK_CLASIF_CLASIFIC foreign key (CC_PADRE)
      references CLASIFICACION (CL_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__FK_CIUDAD_ESTADO_C foreign key (CV_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__FK_CLIENT_CLIENTE_ foreign key (CV_FK_REPRESEN)
      references CLIENTE_VISITANTE (CV_ID);

alter table CLIENTE_VISITANTE
   add constraint FK_CLIENTE__FK_PAIS_C_PAIS foreign key (CV_FK_NACIONALIDAD)
      references PAIS (PA_ID);

alter table DESCUENTO
   add constraint FK_DESCUENT_FK_PRODLO_PRODUCCI foreign key (DES_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DETALLE
   add constraint FK_DETALLE_FK_CLIENT_CLIENTE_ foreign key (DET_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table DETALLE
   add constraint FK_DETALLE_FK_DISPRO_DISP_PRO foreign key (DET_FK_PAIS, DET_FK_PRODUCTO)
      references DISP_PROD (DIP_FK_PAIS, DIP_FK_PRODUCTO);

alter table DETALLE
   add constraint FK_DETALLE_FK_FACTON_FACTURA_ foreign key (DET_FK_FACT_ONLI)
      references FACTURA_ONLINE (FO_NUMERO);

alter table DETALLE
   add constraint FK_DETALLE_FK_PRODLO_PRODUCCI foreign key (DET_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__FK_CLIENT_CLIENTE_ foreign key (DF_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__FK_DETPED_DETALLE_ foreign key (DF_FK_PEDIDO, DF_FK_DETPED)
      references DETALLE_PEDIDO (DP_FK_PEDIDO, DP_ID);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__FK_FACTIE_FACTURA_ foreign key (DF_FK_FACT_T)
      references FACTURA_TIENDA (FT_CODIGO);

alter table DETALLE_PEDIDO
   add constraint FK_DETALLE__FK_DISPRO_DISP_PRO foreign key (DIP_FK_PAIS, DIP_FK_PRODUCTO)
      references DISP_PROD (DIP_FK_PAIS, DIP_FK_PRODUCTO);

alter table DETALLE_PEDIDO
   add constraint FK_DETALLE__FK_PEDIDO_PEDIDO foreign key (DP_FK_PEDIDO)
      references PEDIDO (PD_ORDEN);

alter table DET_LOTE
   add constraint FK_DET_LOTE_FK_DETPED_DETALLE_ foreign key (DL_FK_PEDIDO, DL_FK_DET_PEDIDO)
      references DETALLE_PEDIDO (DP_FK_PEDIDO, DP_ID);

alter table DET_LOTE
   add constraint FK_DET_LOTE_FK_PRODLO_PRODUCCI foreign key (DL_FK_PROD_LOTE)
      references PRODUCCION_LOTE (PL_ID_LOTE);

alter table DISP_PROD
   add constraint FK_DISP_PRO_FK_PAIS_D_PAIS foreign key (DIP_FK_PAIS)
      references PAIS (PA_ID);

alter table DISP_PROD
   add constraint FK_DISP_PRO_FK_PRODUC_PRODUCTO foreign key (DIP_FK_PRODUCTO)
      references PRODUCTO (PR_CODIGO);

alter table ESTADO_CIUDAD
   add constraint FK_ESTADO_C_FK_ESTADO_ESTADO_C foreign key (EC_FK_ESTADO)
      references ESTADO_CIUDAD (EC_ID);

alter table ESTADO_CIUDAD
   add constraint FK_ESTADO_C_FK_PAIS_E_PAIS foreign key (EC_FK_PAIS)
      references PAIS (PA_ID);

alter table FABRICA
   add constraint FK_FABRICA_FK_CIUDAD_ESTADO_C foreign key (FA_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table FACTURA_ONLINE
   add constraint FK_FACTURA__FK_CLIENT_CLIENTE_ foreign key (FO_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table FACTURA_PEDIDO
   add constraint FK_FACTURA__FK_FACTPE_PEDIDO foreign key (PD_ORDEN)
      references PEDIDO (PD_ORDEN);

alter table FACTURA_TIENDA
   add constraint FK_FACTURA__FK_CLIENT_CLIENTE_ foreign key (FT_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table FACTURA_TIENDA
   add constraint FK_FACTURA__FK_TIENDA_TIENDA foreign key (FT_FK_TIENDA)
      references TIENDA (TI_ID);

alter table HISTORICO_PRODUCTO
   add constraint FK_HISTORIC_FK_LINEA__LINEA_PR foreign key (HP_FK_FABRICA, HP_FK_LINEAPROD)
      references LINEA_PROD (LP_FK_FABRICA, LP_ID);

alter table HISTORICO_PRODUCTO
   add constraint FK_HISTORIC_FK_PRODUC_PRODUCTO foreign key (HP_FK_PRODUCTO)
      references PRODUCTO (PR_CODIGO);

alter table INSTALACION
   add constraint FK_INSTALAC_FK_CIUDAD_ESTADO_C foreign key (INS_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table LINEA_PROD
   add constraint FK_LINEA_PR_FK_FABRIC_FABRICA foreign key (LP_FK_FABRICA)
      references FABRICA (FA_ID);

alter table PEDIDO
   add constraint FK_PEDIDO_FK_FABRIC_FABRICA foreign key (PD_FK_FABRICA)
      references FABRICA (FA_ID);

alter table PEDIDO
   add constraint FK_PEDIDO_FK_FACTPE_FACTURA_ foreign key (FP_NUMERO)
      references FACTURA_PEDIDO (FP_NUMERO);

alter table PEDIDO
   add constraint FK_PEDIDO_FK_TIENDA_TIENDA foreign key (PD_FK_TIENDA)
      references TIENDA (TI_ID);

alter table PRODUCTO
   add constraint FK_PRODUCTO_FK_CLASIF_CLASIFIC foreign key (PR_FK_CLASIFICACION)
      references CLASIFICACION (CL_ID);

alter table PROD_REL
   add constraint FK_PROD_REL_FK_PRODUC_PRODUCTO foreign key (PRE_PADRE)
      references PRODUCTO (PR_CODIGO);

alter table PROD_REL
   add constraint FK_PROD_REL_FK_PRODUC_PRODUCTO foreign key (PRE_HIJO)
      references PRODUCTO (PR_CODIGO);

alter table TIENDA
   add constraint FK_TIENDA_FK_CIUDAD_ESTADO_C foreign key (TI_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table TOPE
   add constraint FK_TOPE_FK_CLIENT_CLIENTE_ foreign key (TOPE_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table VALORACION
   add constraint FK_VALORACI_FK_FACTIE_FACTURA_ foreign key (VA_FK_FAC_TIENDA)
      references FACTURA_TIENDA (FT_CODIGO);

alter table VALORACION
   add constraint FK_VALORACI_FK_FACTON_FACTURA_ foreign key (VA_FK_FAC_ONLI)
      references FACTURA_ONLINE (FO_NUMERO);

