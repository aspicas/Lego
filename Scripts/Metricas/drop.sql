/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     6/26/2016 4:47:00 PM                         */
/*==============================================================*/

drop table CLIENTE_P cascade constraints;

drop table CLIENTE_T cascade constraints;

drop table EFICIENCIA cascade constraints;

drop table FABRICA_E cascade constraints;

drop table PAIS_P cascade constraints;

drop table PREFERENCIA cascade constraints;

drop table RANGO_EDAD_P cascade constraints;

drop table TIEMPO_E cascade constraints;

drop table TIEMPO_P cascade constraints;

drop table TIEMPO_T cascade constraints;

drop table TIEMPO_V cascade constraints;

drop table TIENDA_V cascade constraints;

drop table TOUR cascade constraints;

drop table VENTA cascade constraints;

DROP SEQUENCE SQ_FABRICA_E;
DROP SEQUENCE SQ_CLIENTE_T;

DROP MATERIALIZED VIEW MV_PEDIDOSANTES5DIAS;
DROP MATERIALIZED VIEW MV_ENVIOTARDE;
DROP MATERIALIZED VIEW MV_TOUR;