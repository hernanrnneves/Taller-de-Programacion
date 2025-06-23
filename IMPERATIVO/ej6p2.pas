program ee;
type 
t=array [1..50] of integer;

procedure binario (x:integer; var i:integer; var  v:t);
var
 cociente, resto :integer;
 begin  
    cociente:=x;
   while cociente > 0 do begin
        resto := cociente mod 2;
        cociente := cociente div 2;
        v[i]:=resto;    i:= i + 1;
    end;
end;
procedure mostrar (v:t; i:integer );


begin
    if (i> 0) then begin
        write( v[i]);mostrar(v, i -1);
        
        
 end;
end;

var 
x:integer ; i:integer; v: t;
begin
read (x); i:= 1;
binario (x, i, v);
mostrar (v, i); 

end.		
