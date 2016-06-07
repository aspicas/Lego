/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     5/31/2016 10:03:29 PM                        */
/*==============================================================*/

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
   CL_IMAGENES          imagenes_nt,
   constraint PK_CLASIFICACION primary key (CL_ID)
)NESTED TABLE CL_IMAGENES STORE AS NT_IMAGENES_CLAS;

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
   CV_EXPERIENCIA       VARCHAR2(1)             not null,
   CV_TIPOCLIENTE       VARCHAR2(1)             not null,
   CV_DIRECCION         DIRECCION,
   constraint PK_CLIENTE_VISITANTE primary key (CV_ID)
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
/* Table: DETALLE_PEDIDO                                        */
/*==============================================================*/
create table DETALLE_PEDIDO 
(
   DP_ID                NUMBER(7)            not null,
   DP_FK_PEDIDO         NUMBER(7)            not null,
   DP_FK_PAIS          NUMBER(7)            not null,
   DP_FK_PRODUCTO      NUMBER(7)            not null,
   DP_CANTIDAD          NUMBER(10)           not null,
   DP_SUBTOTAL          NUMBER(20,2)         not null,
   constraint PK_DETALLE_PEDIDO primary key (DP_FK_PEDIDO, DP_ID)
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
/* Table: FABRICA                                               */
/*==============================================================*/
create table FABRICA 
(
   FA_ID                NUMBER(7)            not null,
   FA_FK_CIUDAD         NUMBER(7)            not null,
   FA_NOMBRE            VARCHAR2(100)            not null,
   FA_DIRECCION         DIRECCION,
   constraint PK_FABRICA primary key (FA_ID)
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
/* Table: FACTURA_PEDIDO                                        */
/*==============================================================*/
create table FACTURA_PEDIDO 
(
   FP_NUMERO            NUMBER(7)            not null,
   FP_FK_ORDEN          NUMBER(7)            not null,
   FP_FECHA             DATE                 not null,
   FP_TOTAL             NUMBER(5,2)          not null,
   constraint PK_FACTURA_PEDIDO primary key (FP_NUMERO)
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
/* Table: FECHAS                                                */
/*==============================================================*/
create table FECHAS 
(
   FE_FECHA             DATE                 not null,
   FE_TOUR              TOUR_DIAS,
   FE_COSTO             NUMBER(10,2)          not null,
   constraint PK_FECHAS primary key (FE_FECHA)
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
/* Table: INSTALACION                                           */
/*==============================================================*/
create table INSTALACION 
(
   INS_ID               NUMBER(7)            not null,
   INS_FK_CIUDAD        NUMBER(7)            not null,
   INS_NOMBRE           VARCHAR2(10)             not null,
   INS_TIPO             VARCHAR2(50)             not null,
   INS_DIRECCION        DIRECCION,
   constraint PK_INSTALACION primary key (INS_ID)
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
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS 
(
   PA_ID                NUMBER(7)            not null,
   PA_NOMBRE            VARCHAR2(50)             not null,
   PA_NACIONALIDAD      VARCHAR2(50)             not null,
   PA_CONTINENTE        VARCHAR2(7)              not null,
   PA_MONEDA            MONEDA,
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
/* Table: PRODUCCION_LOTE                                       */
/*==============================================================*/
create table PRODUCCION_LOTE 
(
   PL_ID_LOTE           NUMBER(7)            not null,
   PL_FEHA              DATE                 not null,
   PL_CANTIDAD          NUMBER(5)            not null,
   PL_TIPO              VARCHAR2(6)              not null,
   /*
   PL_FK_HIST_FABRICA   NUMBER(7)   NOT NULL,
   PL_FK_HIST_LINEAPROD NUMBER(7)   NOT NULL,
   PL_FK_HIST_PRODUCTO  NUMBER(7)   NOT NULL,
   PL_FK_HIST_FECHAI    NUMBER(7)   NOT NULL);
   */
   --ESTO ESTÁ EN ALTER Constraints FK
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
   PR_DESC              VARCHAR2(1000)            not null,
   PR_RGO_EDAD          rangos_va,
   PR_PRECIO_USD        NUMBER(10,2)         not null,
   PR_CANT_PIEZAS       NUMBER(5)            not null,
   PR_RESUMEN           RESUMEN,
   PR_FOTOS             imagenes_nt,
   PR_FEC_LANZAM        DATE                 not null,
   PR_INSTRUCCIONES     BLOB,
   PR_CATEGORIAS        categorias_va,
   constraint PK_PRODUCTO primary key (PR_CODIGO)
) --NESTED TABLE PR_RGO_EDAD STORE AS NT_EDADES_PROD
  NESTED TABLE PR_FOTOS STORE AS NT_IMAGENES_PROD;

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
/* Table: TIENDA                                                */
/*==============================================================*/
create table TIENDA 
(
   TI_ID                NUMBER(7)            not null,
   TI_FK_CIUDAD         NUMBER(7)            not null,
   TI_HORARIO           horarios_nt,
   TI_FOTOS             imagenes_nt,
   TI_DIRECCION         DIRECCION,
   constraint PK_TIENDA primary key (TI_ID)
)NESTED TABLE TI_HORARIO STORE AS NT_HORARIO_TIENDA
 NESTED TABLE TI_FOTOS STORE AS NT_IMAGENES_TIENDA;

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
   VA_ARTICULO          NUMBER(7)             not null,
   constraint PK_VALORACION primary key (VA_ID)
);

