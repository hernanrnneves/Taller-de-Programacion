program untitled;

type 

subcod=1..15;
subvent=1..99;
ventas=record
	dia:integer;
	cod:subcod;
	cant:subvent;
end;
vector=array [1..50] of ventas;


procedure leer (var v:ventas);
begin
read (v.dia);
	if (v.dia<> 0) then begin
		read (v.cant);
		v.cod:=random (16);
	end;
end;


procedure cargar  (var vec:vector; var dimF:integer);
var 
v:ventas; 

begin
dimF:=1;
	while (dimF<= 50) and (v.dia<> 0) do begin
		leer(v);
		vec[dimf]:= v;
		dimF:=dimF+1;
	end;
end;

procedure mostrarvect(vec:vector; dimF:integer);
var 
i:integer;

begin
for i := 1 to dimf do begin
	write ('en la posicion ', i, ' del vector' ); 
	writeln ('el codigo es , ', vec [i]. cod, '   su cantidad es de  ,', vec[i].cant,' y el dia es ', vec[i].dia, '  ');
end;
end; 


procedure ordenarvector(var vec:vector; dimf:integer);
var
i, j, pos:integer; v:ventas;
begin

 for i := 1 to dimf -1 do begin
	pos:=i;
	for j :=i +1 to dimf do  begin
		if (vec[j].cod < vec [pos].cod) then begin
			pos:=j;
			v:=vec[pos];
			vec[pos]:=vec[i];
			vec[i]:=v;
		end;
	end;
end;
end;
var
vec:vector;
dimf:integer;

BEGIN
cargar(vec,dimf);
mostrarvect(vec, dimf);
ordenarvector(vec,dimf);
mostrarvect(vec, dimf);

END.

