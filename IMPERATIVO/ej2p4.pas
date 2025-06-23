program untitled;



type
//----------ARBOL1-------
prestamo=record 
	isbn:integer;
	socio:integer;
	dia_mes:integer;
	cant:integer;
end;

arbol=^nodo;
nodo=record
	dato:prestamo;
	hi:arbol;
	hd:arbol;
end;
//--------------------






//------------ARBOL2---------
informacion=record
	socio:integer;
	dia_mes:integer;
	cant:integer;
end;

lista=^nodo2;
nodo2=record
	dato:informacion;
	sig:lista;
end;

prestamo2=record
	isbn:integer;
	info:informacion;
end;

arbol2=^nodo3;
nodo3=record
	dato:prestamo2;
	hi:arbol2;
	hd:arbol2;
end;

//-----------------------

procedure leer (var p:prestamo);
begin
	read(p.isbn);
	if (p.isbn <> -1)then begin
		read(p.socio);
		read(p.dia_mes);
		read (p.cant);
	end;
end;


procedure cargar (var a:arbol; p:prestamo);
begin
	if (a= nil) then begin
		new(a);
		a^.dato:=p;
		a^.hi:=nil;
		a^.hd:=nil;
	end else begin
		if (p.isbn >= a^.dato.isbn) then
			cargar (a^.hd, p)
		else 
			cargar(a^.hi,p);
	end;
end;


//---------------------arbol1CARGADO

function encontrar (a:arbol2; num :integer):BOOLEAN	;
begin
	if (a <> nil) then begin
		if (num = a^.dato.isbn) then begin
			encontrar:=true;
			a:=nil;
		end;
	encontrar:= encontrar (a, num);
	encontrar:= encontrar (a, num);
	encontrar:=false;
	end;
	
end;

procedure crearlista (l:lista; i:informacion);
var
aux:lista;
begin
	new (aux);
	aux^.dato:=i;
	aux^.sig:=l;
	l:=aux;
end;

procedure cargar222 (a:arbol2; p:prestamo2;i:informacion);
var 
l:lista;
begin
	if (a= nil) then begin
		new(a);
		a^.dato:=p;
		a^.hi:=nil;
		a^.hd:=nil;
	end else begin
		if (encontrar(a, a^.dato.isbn))then 
			crearlista (l,i)
		else
		if (p.isbn >= a^.dato.isbn) then
			cargar222 (a^.hd, p,i)
		else 
			cargar222(a^.hi,p,i);
		
		end;
end;

procedure leerycargar1Y2 (var a:arbol;var a2:arbol2; p:prestamo;p2:prestamo2;i:informacion);

begin
leer (p);
	if (p.isbn <> -1) then begin
		cargar (a,p);
		IF ENCONTRAR (A, a^.dato.isbn) then 
			crearlista(l);
		cargar222 (a2,p2);
		leer(p);
	end;
end;



procedure informarTODO (a:arbol);
begin
	if (a <> nil) then begin
	writeln (isbn);
	informartodo (a^.hd);
	informartodo (a^.hi);
	end;
end;







var
a:arbol;
p:prestamo;
a2:arbol2;
p2:prestamo2;
i:informacion;
BEGIN
leerycargar1y2(a,a2,p,p2,i);

informarTODO(a);

END.

