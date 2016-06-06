create or replace trigger valoracion_recordatorio
after insert or update on factura_online
for each row
declare
  fecha date;
begin
  fecha := to_date(:new.fo_fecha,'dd/mm/rrrr') + 14;
  INSERT_VAL_ONLINE(:NEW.FO_NUMERO,FECHA);
end;
/