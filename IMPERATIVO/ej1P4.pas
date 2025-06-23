program untitled;

type

venta = record
	cod_vent:integer;
	cod_prod:integer;
	cant:integer;
	precio:integer;
end;

arbol=^nodo;
nodo=record
	dato:venta;
	hi:arbol;
	hd:arbol;
end;


procedure leer (var v:venta);
begin
	write ('codigo venta; ');read (v.cod_vent);
		if (v.cod_vent<> -1) then begin
			write ('codigo producto ');v.cod_prod:=random (5); 
			write ('cantidad  ');	v.cant:=random (5); 
			write ('precio: '); v.precio:=random (100);
		end;
END;



procedure cargar (var a:arbol; v:venta);

begin
			if (a=nil)then begin
				new(a);
				a^.dato:=v;
				a^.hi:=nil;
				a^.hd:=nil
			end else begin 
				if (a^.dato.cod_prod = v.cod_prod) then begin
					a^.dato.cant:=a^.dato.cant+v.cant;
					a^.dato.precio:=a^.dato.precio + v.precio;
				end;
				if(a^.dato.cod_prod >= v.cod_prod) then
					cargar (a^.hi,v)
				else
					cargar (a^.hd,v);
			end;
	end;




procedure mostrar (a:arbol);
begin
	if (a<> nil) then begin
		writeln('el codigo d venta es de: ',a^.dato.cod_vent);
		writeln('el precio es de ',a^.dato.precio);
		writeln('la cantidad es de ',a^.dato.cant);
		writeln('el codigo de producto es: ',a^.dato.cod_prod);
		mostrar(a^.hi);
		mostrar (a^.hd);
	end; 
end;

		

var
v:venta;
a:arbol;



BEGIN
leer (v);
	while (v.cod_vent <> 0) do begin
		cargar (a,v);
		leer(v);
	end;
mostrar (a);
	
END.

