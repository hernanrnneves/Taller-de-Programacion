program eje;

type
vector = array [1..10] of char;



    
    


procedure cargar (var v:vector; var diml:integer); //diml tiene que inicializase en 1
var
cara:char;
begin 
    if (cara <> '.')and (diml <= 10)  then begin
        read(cara);
        diml:=diml+1;
        v[diml]:=cara;
        cargar(v, diml);
    end;
   
end;


procedure mostrarvect (v:vector; diml:integer);
begin
 
 if (diml <= 10) then begin
	write (v[diml]) ;
	diml:= diml+1;
	mostrarvect(v,diml);
 
 end;

end;



var
v:vector;
diml:integer;
begin
dimf:=1;
cargar (v,dimf);
mostrarvect (v, diml)
end.
