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
   DI_LOCAL             VARCHAR2(5),
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
/* VARRAY: HORARIO                                             */
/*==============================================================*/
create or replace type horarios_va as varray(10) of HORARIO;
/

/*==============================================================*/
/* VARRAY: CATEGORIAS                                           */
/*==============================================================*/
create or replace type categorias_va as varray(10) of varchar2(20);
/

/*==============================================================*/
/* VARRAY: RANGO                                             */
/*==============================================================*/
create or replace type rangos_va as varray(10) of RANGO;
/

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
   CV_EXPERIENCIA       VARCHAR2(10)             not null,
   CV_TIPOCLIENTE       VARCHAR2(20)             not null,
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
   DP_FK_PAIS          NUMBER(7)            not null,
   DP_FK_PRODUCTO      NUMBER(7)            not null,
   DP_LIMITE           NUMBER(3),
   constraint PK_DISP_PROD primary key (DP_FK_PAIS, DP_FK_PRODUCTO)
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
   FE_COSTO             NUMBER(5,2)          not null,
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
   FP_NUMERO            NUMBER(7)            not null,
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
   PR_RGO_EDAD          rangos_nt,
   PR_PRECIO_USD        NUMBER(10,2)         not null,
   PR_CANT_PIEZAS       NUMBER(5)            not null,
   PR_RESUMEN           RESUMEN,
   PR_FOTOS             imagenes_nt,
   PR_FEC_LANZAM        DATE                 not null,
   PR_INSTRUCCIONES     BLOB,
   PR_CATEGORIAS        categorias_va,
   constraint PK_PRODUCTO primary key (PR_CODIGO)
) NESTED TABLE PR_RGO_EDAD STORE AS NT_EDADES_PROD
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
   VA_ARTICULO          VARCHAR2(25)             not null,
   constraint PK_VALORACION primary key (VA_ID)
);

CREATE SEQUENCE SQ_PAIS_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_ESTADO_CIUDAD_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_INSTALACION_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_FECHAS_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_FABRICA_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_TOPE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_TIENDA_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_FACTURA_PEDIDO_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_CLIENTE_VISITANTE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_FACTURA_ONLINE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_FACTURA_TIENDA_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PEDIDO_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DETALLE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_VALORACION_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DETALLE_FACTURA_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_LINEA_PROD_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_CLAS_CLAS_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_CLASIFICACION_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DISP_PROD_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PRODUCTO_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PROD_REL_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DETALLE_PEDIDO_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_HISTORICO_PRODUCTO_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DET_LOTE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PRODUCCION_LOTE_ID INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_DESCUENTO_ID INCREMENT BY 1 START WITH 1;

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
/* Index: FK_PRODLOTE_DES_FK                                    */
/*==============================================================*/
create index FK_PRODLOTE_DES_FK on DESCUENTO (
   DES_FK_PROD_LOTE ASC
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
/* Index: FK_PEDIDO_DP_FK                                       */
/*==============================================================*/
create index FK_PEDIDO_DP_FK on DETALLE_PEDIDO (
   DP_FK_PEDIDO ASC
);

/*==============================================================*/
/* Index: FK_DISPROD_DP_FK                                      */
/*==============================================================*/
create index FK_DISPROD_DP_FK on DETALLE_PEDIDO (
   DP_FK_PAIS ASC,
   DP_FK_PRODUCTO ASC
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
/* Index: FK_PRODUCTO_DP_FK                                     */
/*==============================================================*/
create index FK_PRODUCTO_DP_FK on DISP_PROD (
   DP_FK_PRODUCTO ASC
);

/*==============================================================*/
/* Index: FK_PAIS_DP_FK                                         */
/*==============================================================*/
create index FK_PAIS_DP_FK on DISP_PROD (
   DP_FK_PAIS ASC
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
/* Index: FK_CIUDAD_FA_FK                                       */
/*==============================================================*/
create index FK_CIUDAD_FA_FK on FABRICA (
   FA_FK_CIUDAD ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_FON_FK                                     */
/*==============================================================*/
create index FK_CLIENTE_FON_FK on FACTURA_ONLINE (
   FO_FK_CLIENTE ASC
);

/*==============================================================*/
/* Index: FK_FACTPEDIDO_PEDIDO2_FK                              */
/*==============================================================*/
create index FK_FACTPEDIDO_PEDIDO2_FK on FACTURA_PEDIDO (
   FP_FK_ORDEN ASC
);

/*==============================================================*/
/* Index: FK_TIENDA_FT_FK                                       */
/*==============================================================*/
create index FK_TIENDA_FT_FK on FACTURA_TIENDA (
   FT_FK_TIENDA ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_FTIE_FK                                    */
/*==============================================================*/
create index FK_CLIENTE_FTIE_FK on FACTURA_TIENDA (
   FT_FK_CLIENTE ASC
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
/* Index: FK_CIUDAD_INS_FK                                      */
/*==============================================================*/
create index FK_CIUDAD_INS_FK on INSTALACION (
   INS_FK_CIUDAD ASC
);

/*==============================================================*/
/* Index: FK_FABRICA_LP_FK                                      */
/*==============================================================*/
create index FK_FABRICA_LP_FK on LINEA_PROD (
   LP_FK_FABRICA ASC
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
/* Index: FK_CLASIFICACION_PR_FK                                */
/*==============================================================*/
create index FK_CLASIFICACION_PR_FK on PRODUCTO (
   PR_FK_CLASIFICACION ASC
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
/* Index: FK_CIUDAD_TIE_FK                                      */
/*==============================================================*/
create index FK_CIUDAD_TIE_FK on TIENDA (
   TI_FK_CIUDAD ASC
);

/*==============================================================*/
/* Index: FK_CLIENTE_TOPE_FK                                    */
/*==============================================================*/
create index FK_CLIENTE_TOPE_FK on TOPE (
   TOPE_CLIENTE ASC
);

/*==============================================================*/
/* Index: FK_FECHAS_TOPE_FK                                     */
/*==============================================================*/
create index FK_FECHAS_TOPE_FK on TOPE (
   TOPE_FECHA ASC
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

alter table CLAS_CLAS
   add constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI2 foreign key (CC_HIJO)
      references CLASIFICACION (CL_ID);

alter table CLAS_CLAS
   add constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI1 foreign key (CC_PADRE)
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
      references DISP_PROD (DP_FK_PAIS, DP_FK_PRODUCTO);

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
   add constraint FK_DETALLE__FK_DISPRO_DISP_PRO foreign key (DP_FK_PAIS, DP_FK_PRODUCTO)
      references DISP_PROD (DP_FK_PAIS, DP_FK_PRODUCTO);

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
   add constraint FK_DISP_PRO_FK_PAIS_D_PAIS foreign key (DP_FK_PAIS)
      references PAIS (PA_ID);

alter table DISP_PROD
   add constraint FK_DISP_PRO_FK_PRODUC_PRODUCTO foreign key (DP_FK_PRODUCTO)
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
   add constraint FK_FACTURAO_FK_CLIENT_CLIENTE foreign key (FO_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table FACTURA_PEDIDO
   add constraint FK_FACTURA__FK_FACTPE_PEDIDO foreign key (FP_FK_ORDEN)
      references PEDIDO (PD_ORDEN);

alter table FACTURA_TIENDA
   add constraint FK_FACTURAT_FK_CLIENT_CLIENTE foreign key (FT_FK_CLIENTE)
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
   add constraint FK_PEDIDO_FK_TIENDA_TIENDA foreign key (PD_FK_TIENDA)
      references TIENDA (TI_ID);

alter table PRODUCTO
   add constraint FK_PRODUCTO_FK_CLASIF_CLASIFIC foreign key (PR_FK_CLASIFICACION)
      references CLASIFICACION (CL_ID);

alter table PROD_REL
   add constraint FK_PROD_REL_FK_PRODUC_PRODUCT1 foreign key (PRE_PADRE)
      references PRODUCTO (PR_CODIGO);

alter table PROD_REL
   add constraint FK_PROD_REL_FK_PRODUC_PRODUCT2 foreign key (PRE_HIJO)
      references PRODUCTO (PR_CODIGO);

alter table TIENDA
   add constraint FK_TIENDA_FK_CIUDAD_ESTADO_C foreign key (TI_FK_CIUDAD)
      references ESTADO_CIUDAD (EC_ID);

alter table TOPE
   add constraint FK_TOPE_FK_CLIENT_CLIENTE_ foreign key (TOPE_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table TOPE
   add constraint FK_TOPE_FK_FECHAS_FECHAS foreign key (TOPE_FECHA)
      references FECHAS (FE_FECHA);

alter table VALORACION
   add constraint FK_VALORACI_FK_FACTIE_FACTURA_ foreign key (VA_FK_FAC_TIENDA)
      references FACTURA_TIENDA (FT_CODIGO);

alter table VALORACION
   add constraint FK_VALORACI_FK_FACTON_FACTURA_ foreign key (VA_FK_FAC_ONLI)
      references FACTURA_ONLINE (FO_NUMERO);

