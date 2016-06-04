create or replace function calcular_edad(d_fecha in date) return number is
n_retorno number := 0;
begin
	select trunc((sysdate - to_date(d_fecha,'dd/mm/rrrr'))/365,0) into n_retorno from dual;
	return n_retorno;
end;
/

SELECT calcular_edad(TO_DATE('04/06/1993','dd/mm/yyyy')) from dual;