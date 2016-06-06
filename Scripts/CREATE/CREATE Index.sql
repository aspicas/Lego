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

/*==============================================================*/
/* Index: FK_PRODUCTO_PL_FK                                     */
/*==============================================================*/
create index FK_PRODUCTO_PL_FK on PRODUCCION_LOTE(
   PL_FK_PRODUCTO ASC
);