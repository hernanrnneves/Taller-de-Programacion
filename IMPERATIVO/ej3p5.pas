program untitled;

type
subrub=1..10;
producto=record
	cod:integer;
	rubro:subrub;
	stock:integer;
	precio:integer;
end;

arbol=^nodoarbol;
nodoarbol=record
	dato:producto;
	hi:arbol;
	hd:arbol;
end;

vector=array [1..10] of arbol;


procedure leer (var p:producto);
begin
write ('ingresar cod: '); read (p.cod);
	if(p.cod <>-1)then begin
		write ('ingresar rubro: '); read (p.rubro);
		write ('stock: '); read (p.stock);
		write ('ingresar precio: '); read (p.precio);
	end;
end;


procedure cargarAyV (var a:arbol; var v:vector; p:producto);
begin

	if (a= nil) then begin
		new (a);
		a^.dato:=p;
		a^.hi:=nil;
		a^.hi:=nil;
		v[a^.dato.rubro]:= a
	end else begin
		if (p.cod >= a^.dato.cod) then
			cargarayv (a^.hd,v,p)
		else cargarayv (a^.hi,v,p);
	end;
end;
procedure recorrerarbol ( a:arbol);

begin
	if (a <> nil ) then begin
		recorrerarbol (a^.hi);
		recorrerarbol  (a^.hd);
	end;
end;
function puntoB (v:vector; rub:subrub; codigoB:integer ):boolean;
var
ok:boolean;a:arbol;
begin
ok:=false;
	if(v[rub]^.dato.cod <>codigob) then
		recorrerarbol (a);
	if (v[rub]^.dato.cod =codigob) then 
		ok:=true;
	puntoB:=ok;
end;
function yyy(a:arbol):arbol;
begin
	if (a^.hd = nil) then
		yyy:=a
	else
		yyy (a^.hd);
end;



procedure buscar  (v:vector);
var
i:integer;aux:arbol;
begin
	for i:=1 to 10 do begin
		v[i]:=yyy (aux);
		writeln (v[i]^.dato.cod,v[i]^.dato.stock);
	end;
end;
procedure funencontrar (v:vector; a:arbol; x,y:integer; var cont:integer);
begin
	if (a=nil) then begin
		cont:=0;
	if (v[i]^.dato.cod >= valor1) and (v[i]^.dato.cod <= valor2) then begin
			cont:=cont+1;
			funencontrar (v,a^.hd,x,y,cont);
			funencontrar (v, a^.hi,x,y,cont);
		end;
	
end;

end;


procedure encontrar (a:arbol; valor1:integer; valor2:integer);
var
i:integer; cont:integer;
begin
for i:= 1 to 10 do begin
	cont:=0;
	funencontrar (v[i],a,valor1,valor2,cont);
	writeln ('en el rubro: ', i, ' hay esta cantidad de valores:  ',cont );
end;
	
end;
procedure msotrar (v:vector);
begin
	for i := 1 to 10 do begin
	writeln (v[i]^.dato.cod, v[i]^.dato.stock);
	
	end;
end;
var
a:arbol;
p:producto;
v:vector;

BEGIN
leer (p);
	while(p.cod <>-1 ) do begin
		cargarayv (a,v,p);
		leer (p);
	end;

msotrar (v);
END.

