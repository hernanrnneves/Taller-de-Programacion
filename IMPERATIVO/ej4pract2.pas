program jj;

type

vector=array [1..20] of integer;


procedure cargar(var v:vector; var dimL:integer);
var

x:integer;

begin
    if (dimL <= 20) and (x <> 0) then begin
        x:=random (101);
        v[diml]:= x;
        diml:=diml +1;
        cargar(v, diml ) ;
    end;
end;

function imprimirMAX (v:vector; diml:integer; max:integer): integer ;

begin
    if (diml > 0) then begin 
       if (max < v[diml]) then begin 
        max:= v[diml];
        end;
    imprimirMAX (v, diml -1);
    imprimirMAX:= max;
    end;
end;
procedure mostrar (v:vector; diml :integer );
var 
i:integer ;
begin
    for i := 1 to diml  do
        writeln ('en la posision, ',i, ' se encuentra el numero:  ',v[i]);
end;


function suma  (v:vector; diml:integer):integer ;

begin
	if  (diml > 0) then begin 
		suma:=suma+ v[diml] ;
		diml:=diml-1;
		suma(v,diml);
	end;
END;



var
v:vector;
diml:integer;
max:integer;
begin
diml:=1 ; max:=-999;
cargar (v, diml);
mostrar(v, diml);
writeln (imprimirMAX(v, diml, max));
writeln(suma (v,diml));
end.
