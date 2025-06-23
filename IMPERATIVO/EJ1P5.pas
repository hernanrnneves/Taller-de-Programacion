program Hello;

type

oficina=record
    cod:integer;
    dni:integer;
    valor:integer;
end;

vector=array [1..300] of oficina;


procedure leer (var o:oficina);
begin
    o.cod:=random(55);
    if (o.cod <>-1) then begin
        o.dni:=random(999);
        o.valor:=random(800);
    end;
end;

procedure cargar (var v:vector; var diml:integer);
var 
o:oficina;
begin
randomize;
diml:=1;
    while (diml < 10) and (o.cod <> -1) do begin
        leer (o);
        v[diml]:= o;
        diml:=diml+1;
    end;
end;



procedure ordenar  ( var v:vector; diml:integer);

var
pos,i,j:integer; elem:oficina;
begin

for i:= 1 to diml-1 do begin
    for j:= i+1 to diml do begin
        if (v[j].cod> v[i].cod) then begin
            pos:=j;
            elem:=v[pos];
            v[pos]:= v[i];
            v[i]:=elem;
        end;
    end;
end;
end;


procedure mostar (v:vector;diml:integer);
var 
i:integer;

begin
    for i :=1 to diml do begin
        writeln ('en la poscion ', i, ' el codigo es: ', v [i].cod);
    end;
end;



function retornar (v:vector; diml:integer; acu:integer):integer;
var 
i:integer;
begin
    if (diml < 10) then begin
        acu:= v[diml].valor+acu;
        retornar :=retornar(v, diml+1,acu);
    end;
retornar:=acu;
end;

var
v:vector;
diml:integer;
acu:integer;
begin
 cargar (v,diml);
 mostar(v, diml);
 ordenar(v, diml);
 mostar(v, diml);
 writeln (retornar (v,1, 0));
end.
