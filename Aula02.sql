13/02/2023

set serveroutput on

Exercício do salário

Declare
    v_sal_atual number(10,2) := 1302.00;
    v_sal_reaj number(10,2);
Begin
    v_sal_reaj := v_sal_atual * 1.25;
    dbms_output.put_line('Salário atual - R$: ' || v_sal_atual);
    dbms_output.put_line('Salário reajustado - R$: ' || v_sal_reaj);
end;
/*-------------------------------------------------------------------*/
Declare
    v_dolar number(10,2):= 5.21;
    v_real v_dolar%type := v_dolar*45;
begin
    dbms_output.put_line('cotação dólar 13/02/2023: ' || v_dolar);
    dbms_output.put_line('conversão US$ 45.00 em R$: ' || v_real );
end;
/*-------------------------------------------------------------------*/
Declare 
    v_carro number(10,2) := 50000;
    v_valor_final v_carro%type := (v_carro * 1.03) / 10;
begin 
    dbms_output.put_line('Valor do bem: ' || v_carro);
    dbms_output.put_line('Valor da prestação em 10x: ' || v_valor_final);
end;
/*-------------------------------------------------------------------*/
Exercício 4, prestações com 20% de entrada

Declare
    v_carro number(10,2) := 50000*0.8;
    v_presta v_carro%type;
begin
    v_presta := (v_carro * 1.1) / 6;
    dbms_output.put_line('valor da prestação em 6x: '||v_presta);
    v_presta := (v_carro * 1.15) / 12;
    dbms_output.put_line('valor da prestação em 12x: '||v_presta);
    v_presta := (v_carro * 1.2) / 18;
    dbms_output.put_line('Valor da prestação em 18x: '||v_presta);
end;
/*-------------------------------------------------------------------*/
Declare
    v_n number(2) := 15;
begin
    if mod(v_n,2) = 0 then
        dbms_output.put_line('O número '|| v_n || ' é par');
    else
        dbms_output.put_line('O número '|| v_n || ' é impar');
    end if;
end;
/*-------------------------------------------------------------------*/
Declare
    sexo char(1) := '&sexo';
begin
    if (sexo = 'm' or sexo = 'M' ) then
        dbms_output.put_line('o seu sexo é: masculino');
    elsif (sexo = 'f' or sexo = 'F' ) then
        dbms_output.put_line('o seu sexo é: feminino');
    else
        dbms_output.put_line('o seu sexo é: outros');
    end if;
end;