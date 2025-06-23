program untitled;



type 
subcod=1..8;
producto=record
	cod:integer;
	rubro:subcod;
	precio:integer;
end;
lista=^nodo;
nodo=record
	dato:producto;
	sig:lista;
end;

vector=array[1..8] of lista;
vector2=array [1..30] of producto;


procedure leer(var p:producto);
begin	
randomize;
p.cod:=random (101);
p.rubro:=random(9);
p.precio:=random(45);

	
end;

procedure cargar (var l:Lista; var vect:vector);
var
p:producto; aux:lista;
begin
	leer(p);
		if (p.precio ) then begin
			new(aux);
			aux^.dato := p;
			aux^.sig := l;
			l:=aux;
			vect[p.rubro] := aux;
			leer(p);
		end;
end;

procedure informar (l:lista; vect:vector);
var
i:integer;
begin
	for i:= 1 to 8 do begin
		if (l<> nil) then begin
			writeln ('el codigo es el: ',l^.dato. cod, ' el rubro es el: ', l^.dato.rubro, ' y su precio es de:  ', l^.dato. precio);
			
			informar (l, vect)
		end;
	end;
end;

var 
l:lista; vect :vector;
BEGIN
	cargar(l,vect);
	INFORMAR (l, vect);
END.
