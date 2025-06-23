program untitled;
type
vector=array [1..10] of integer;

rangnum=1..700;
rangmaterias=300..356;

alumno=record
	num:rangnum;
	materia:rangmaterias;
	finales:vector;
end;

arbol=^nodo;
nodo=record
	dato:alumno;
	hi:arbol;
	hd:arbol;
end;


vpromedios =array [1..7000] of real;

procedure leer (var a:alumno);
var i:integer;
begin
randomize;
	a.num:=random (7001);
	if (a.num <>0 ) then begin
		a.materia:=300+ random (57);
		for i:= 1 to 10 do begin
			a.finales[i]:=random (11);
		end;
	end;
end;


procedure cargar (var a:arbol; al:alumno);
begin
	if (a= nil) then begin
		new(a);
		a^.dato:=al;
		a^.hi:=nil;
		a^.hd:=nil
	end else begin
		if (a^.dato.num >al.num ) then
			cargar (a^.hi, al)
		else cargar (a^.hd,al);
	end;
end;

procedure inicializarvec (var v:vpromedios);
var 
i:integer;
begin
	for i:= 1 to 7000 do begin
		v[i]:=0;
	end;
end;






procedure retornar (var p:vpromedios; a:arbol; var cont:integer); // inicializar en 0 en main
var 
i:integer;
promedio:real;
begin
cont:=0;
	if (a<> nil) then begin
		for i:= 1 to 10 do begin
			cont:=A^.DATO.finales[i] + cont;
		end;
	promedio:= cont/10;
	p[a^.dato.num]:=promedio;
	retornar(p,a^.hi,cont);
	retornar (p,a^.hd,cont);
end;
end;

procedure ordenar (var p:vpromedios);
var
i,j:integer;
item:real;

begin
	for i:= 1 to 7000-1 do begin
		for j:= i+1 to 7000 do begin
			if (p[i] > p[j]) then begin 
				item:=p[i];
				p[i]:=p[j];
				p[j]:=item
			end;
		end;
	end;
end;




var
al:alumno;
a:arbol;
p:vpromedios;
cont:integer;
BEGIN

leer (al);
	while (al.num <> 0) do begin
		cargar (a,al);
		leer (al);
	end;
inicializarvec (p);
cont:=0;
retornar (p,a,cont);
ordenar (p);
END.

