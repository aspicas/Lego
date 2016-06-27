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