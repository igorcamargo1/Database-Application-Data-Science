13/02/2023

set serveroutput on

Exerc�cio do sal�rio

Declare
    v_sal_atual number(10,2) := 1302.00;
    v_sal_reaj number(10,2);
Begin
    v_sal_reaj := v_sal_atual * 1.25;
    dbms_output.put_line('Sal�rio atual - R$: ' || v_sal_atual);
    dbms_output.put_line('Sal�rio reajustado - R$: ' || v_sal_reaj);
end;
/*-------------------------------------------------------------------*/
Declare
    v_dolar number(10,2):= 5.21;
    v_real v_dolar%type := v_dolar*45;
begin
    dbms_output.put_line('cota��o d�lar 13/02/2023: ' || v_dolar);
    dbms_output.put_line('convers�o US$ 45.00 em R$: ' || v_real );
end;
/*-------------------------------------------------------------------*/
Declare 
    v_carro number(10,2) := 50000;
    v_valor_final v_carro%type := (v_carro * 1.03) / 10;
begin 
    dbms_output.put_line('Valor do bem: ' || v_carro);
    dbms_output.put_line('Valor da presta��o em 10x: ' || v_valor_final);
end;
/*-------------------------------------------------------------------*/
Exerc�cio 4, presta��es com 20% de entrada

Declare
    v_carro number(10,2) := 50000*0.8;
    v_presta v_carro%type;
begin
    v_presta := (v_carro * 1.1) / 6;
    dbms_output.put_line('valor da presta��o em 6x: '||v_presta);
    v_presta := (v_carro * 1.15) / 12;
    dbms_output.put_line('valor da presta��o em 12x: '||v_presta);
    v_presta := (v_carro * 1.2) / 18;
    dbms_output.put_line('Valor da presta��o em 18x: '||v_presta);
end;
/*-------------------------------------------------------------------*/
Declare
    v_n number(2) := 15;
begin
    if mod(v_n,2) = 0 then
        dbms_output.put_line('O n�mero '|| v_n || ' � par');
    else
        dbms_output.put_line('O n�mero '|| v_n || ' � impar');
    end if;
end;
/*-------------------------------------------------------------------*/
Declare
    sexo char(1) := '&sexo';
begin
    if (sexo = 'm' or sexo = 'M' ) then
        dbms_output.put_line('o seu sexo �: masculino');
    elsif (sexo = 'f' or sexo = 'F' ) then
        dbms_output.put_line('o seu sexo �: feminino');
    else
        dbms_output.put_line('o seu sexo �: outros');
    end if;
end;