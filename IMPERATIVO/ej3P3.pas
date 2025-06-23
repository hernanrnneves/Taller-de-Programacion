
program untitled;


type

lista=^nodo;
nodo=record
	dato:integer;
	sig:lista;
end;

alumno=record
	lega:integer;
	dni:integer;
	ano:integer;
	cod:integer;
	notas:lista;
end;





arbol=^nodo2;
nodo2=record
	dato:alumno;
	hi:arbol;
	hd:arbol;
end;


procedure leer (var a:alumno; var l:lista);
var
aux:lista; x:integer;
begin
write('legajo:  ');	read(a.lega);
	if (a.lega <> 0) then begin
write ('ingresar dni: ');		read (a.dni);
write ('ingresar ano: ');		read (a.ano);
write ('ingresar codigo: ');		read (a.cod);
write('ingresar nota:  ');		read (x);
			while (x <> -1) do begin
				new(aux);
				aux^.dato:=x;
				aux^.sig:=l;
				aux:=l;
				write ('ingresar nota:  ');				read (x);
			end;
	end;
end;

procedure cargarAr(var ar:arbol; a:alumno);

begin
	if (ar= nil) then begin
		new(ar);
		ar^.dato:=a;
		ar^.hi:=nil;
		ar^.hd:=nil
	end else begin
		if (a.lega >= ar^.dato.lega) then
			cargarAr(ar^.hd,a)
		else
			cargarar(ar^.hi,a);
	end;
	

end;
procedure imprimir (l:lista);
begin
	while (l<> nil) do begin
		write('sus notas son: ',l^.dato);
		l:=l^.sig;
	end;
end;
procedure mostrar (a:arbol);
begin
	if (a<> nil) then begin
		write ('el legajo es ', a^.dato.lega);
		write ('el ano de ingreso es: ', a^.dato.ano);
		write ('el cod es ', a^.dato.cod);
		write ('el dni es: ', a^.dato.dni);
			imprimir  (a^.dato.notas);
		mostrar (a^.hd);
		mostrar (a^.hi);
	end;
end;

procedure retornar (ar:arbol; jj:integer);
begin
	IF (ar<> nil) then begin
		if (jj > ar^.dato.lega)then begin
			writeln ('su numero de dni es: ', ar^.dato.dni,'ano de ingreso fue: ',ar^.dato.ano);
		end;
	retornar (ar^.hi,jj);
	retornar (ar^.hd,jj);
	end;
end;

function mayor (ar:arbol):integer;
begin
	if (ar^.hd = nil) then begin
		mayor:=ar^.dato.lega;
	end
	else
		mayor:=mayor(ar^.hd);
	end;

function legaimp (a:arbol):integer;
var
dig:integer; cont:integer;
begin	
	if (a<> nil) then begin
		dig:=a^.dato.lega mod 2;
			if (dig = 1) then
				cont:=cont+1;
		legaimp:=legaimp(a^.hd);
		legaimp:=legaimp(a^.hi);
	end;
	legaimp:=cont;
end;

procedure promedio(ar:arbol; var max:real);
var
cont:integer;
mat:integer;
aux:lista;
legamax:integer;
begin
	if (ar <> nil) then begin
		cont:=0;mat:=0;
		aux:=ar^.dato.notas;
		while (aux <> nil) do begin
			cont:=cont+ ar^.dato.notas;
			mat:=mat+1;
			aux:=aux^.sig;
		end;
		if (max < cont/mat) then begin
			max:=cont/mat;
			legaMAX:=ar^.dato.lega;
		end;
		promedio (ar^.hi, max);
		promedio (ar^.hd, max);
	end
	ELSE 
		writeln (legamax, max);

end;

procedure promedio_2(ar:arbol; var max:real);
var
cont:integer;
mat:integer;
l:lista;
begin
	if (ar <> nil) then begin
		cont:=0;mat:=0;
		l:=ar^.dato.notas;
		while (l <> nil) do begin
			cont:=cont+ ar^.dato.notas;
			mat:=mat+1;
			l:=l^.sig;
		end;
		if (max < cont/mat) then begin
			write (cont/mat);
			write(ar^.dato. lega);
		end;
		promedio (ar^.hi, max);
		promedio (ar^.hd, max);
	end;

end;





var 
a:alumno;
l:lista;
ar:arbol;
jj:integer;
max:real;
BEGIN
	leer (a,l);
	while (a.lega <> 0) do begin
		cargarAr(ar,a);
		leer(a,l);
	end;
{read (jj);
retornar(ar,jj);}
{writeln (mayor(ar));
max:= -999;
promedio(ar, max);
read (max );
promedio_2 (ar,max);}
mostrar (ar);




END.

