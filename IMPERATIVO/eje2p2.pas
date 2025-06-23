{2.- Realizar un programa que lea números hasta leer el valor 0 e imprima, para cada número
leído, sus dígitos en el orden en que aparecen en el número. Debe implementarse un módulo
recursivo que reciba el número e imprima lo pedido. Ejemplo si se lee el valor 256, se debe
imprimir 2 5 6}

program lll;




procedure numeros (num :integer);
var 
dig:integer;
begin
dig:=1;
	if  (num <> 0) then begin
		read (num);
		dig:=num mod 10 ;
		write (dig);
		num:= num div 10;
		numeros(num);
	end;
end;

var 
num :integer;
begin
	numeros (num);

end.
