
program untitled;
type 
dias=1..31;
meses=1..12;
rangohoras=1..8;


registro=record
	numero:integer;
	dia:dias;
	mes:meses;
	horas:rangohoras;
end;


arbol=^nodoarbol;
nodoarbol=record
	dato:reigstro;
	hi:arbol;
	hd:arbol;
end;

puntob=record
	numero:integer;
	horas:integer;
end;

arbol2=^nodo;
nodo=record
	dato:puntob;
	hi:arbol;
	hd:arbol;
end;


procedure leerregistro (var r:registro);
begin
r.numero:=random (101);
if (r.numero<>0 ) then begin
	r.dia:=random(31);
	r.mes:=random (12);
	r.horas:=random(8);
end;
end;

procedure agregaradelante (var l:lista; dato:puntob);
var
aux:lista;
begin
	new (aux);
	aux^.dato:=dato;
	aux^.sig:=l;
	l:=aux;
end;





procedure cargarARBOL(var a :arbol; r:registro);
var
l:lista;
begin
	if (a= nil) then begin
		new (a);
		a^.dato:=r;
		a^.hi:=nil;
		a^.hd:=nil
	end
	else begin
		if (e.numero < a^.dato.numero) then begin
			cargararbol (a^.hi, e,i)
		end else begin
		    cargararbol (a^.hd,e,i);
        end;	
	end;
			
end;

procedure buscar (a:arbol;var a2:arbol2; valor1,valor2:integer);
pntb:puntob;
begin
	if (a<> nil) then begin
		if (a^.dato.num >= VALOR1) AND (a^.dato.num <= valor2) then begin
			pntb.num:=a^.dato.num;
			pntb.horas:=a^.dato.horas;
			cargararbol (a,pntb);
		buscar (a^.hi,a2,valor1,valor2);
		buscar (a^.hd,a2,valor1,valor2);
	end;
end;
end;


function total(a2:arbol2; cont:integer):integer;
var


begin
	if (a2 <> nil ) then begin 
		cont:= a2^.dato.horas+cont;
		total (a2^.hi.cont);
		total (a2^.hd.cont);
	end;
	total := cont;
end;

	
	
var 
a:arbol;
r:registro;
begin
leerregistro (r);
    if (r.numero <> 0) then begin
        cargararbol(a,r);
        leerregistro(r);
    end;
    total (a2, 0);
end.


