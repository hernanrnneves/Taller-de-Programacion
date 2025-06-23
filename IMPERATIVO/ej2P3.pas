program untitled;
type
venta =record
	cod:integer;
	fecha:integer;
	CANT:INTEGER;
end;
arbol=^nodo;
nodo=record
	dato:venta;
	hi:arbol;
	hd:arbol;
end;

procedure cargar(var a:arbol; v:venta );
begin
	if (a = nil) then begin
		new (a);
		a^.dato:=v;
		a^.hi:=nil;
		a^.hd:=nil;
	end else begin
		if (v.cod <= a^.dato.cod) then begin
			cargar(a^.hi,v)
		end else
			cargar (a^.hd,v);
		end;
	end;
procedure leerycargar (var a:arbol);
var 
v:venta;
begin
	read(v.cod);
	if (v.cod <> 0) then begin
		read (v.fecha);
		read (v.cant);
		cargar(a,v);
		leerycargar(a);
	end;
end;

procedure cargarA2 (a:arbol;var  a2:arbol);
var 
v:venta;
begin
	if a<> nil then begin
		if (a2^.dato.cod = a^.dato.cod) then
			a2^.dato.cant:=a2^.dato.cant+a^.dato.cant;
			cargar (a2,v);
	cargarA2(a^.hi,a2);
	cargarA2(a^.hd,a2);
	end;
end;
procedure mostar(a2:arbol);
begin
	if (a2<> nil) then begin
		write ('el codigo es: ',a2^.dato.cod);
		writeln ('la fehca es: ',a2^.dato.fecha);
		writeln ('el total es de:  ', a2^.dato.cant);
		mostar (a2^.hi);
		mostar(a2^.hd);
	end;
end;

VAR
a:arbol;a2:arbol;
BEGIN
	leerycargar(a);
	cargarA2(a,a2);
	mostar(a2);
END.

