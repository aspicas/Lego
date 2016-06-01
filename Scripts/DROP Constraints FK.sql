alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI2;

alter table CLAS_CLAS
   drop constraint FK_CLAS_CLA_FK_CLASIF_CLASIFI1;

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
   drop constraint FK_FACTURAO_FK_CLIENT_CLIENTE;

alter table FACTURA_PEDIDO
   drop constraint FK_FACTURA__FK_FACTPE_PEDIDO;

alter table FACTURA_TIENDA
   drop constraint FK_FACTURAT_FK_CLIENT_CLIENTE;

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
   drop constraint FK_PEDIDO_FK_TIENDA_TIENDA;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_FK_CLASIF_CLASIFIC;

alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCT1;

alter table PROD_REL
   drop constraint FK_PROD_REL_FK_PRODUC_PRODUCT2;

alter table TIENDA
   drop constraint FK_TIENDA_FK_CIUDAD_ESTADO_C;

alter table TOPE
   drop constraint FK_TOPE_FK_CLIENT_CLIENTE_;

alter table TOPE
   drop constraint FK_TOPE_FK_FECHAS_FECHAS;

alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTIE_FACTURA_;

alter table VALORACION
   drop constraint FK_VALORACI_FK_FACTON_FACTURA_;