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
   add constraint FK_FACTURAO_FK_CLIENT_CLIENTE foreign key (FO_FK_CLIENTE)
      references CLIENTE_VISITANTE (CV_ID);

alter table FACTURA_PEDIDO
   add constraint FK_FACTURA__FK_FACTPE_PEDIDO foreign key (PD_ORDEN)
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

