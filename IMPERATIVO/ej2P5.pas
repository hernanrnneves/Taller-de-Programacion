program Hello;
type
data=record
    patente:string;
    ano:integer;
    modelo:string;
end;

lista=^nodo;
nodo=record
    dato:data;
    sig:lista;
end;


auto=record
    marca:string;
    info:data;
end;


arbol=^nodoarbol;
nodoarbol=record
    dato:auto;
    hi:arbol;
    hd:arbol;
end;



procedure addl (var l:lista; d:data);
var
aux:lista;
begin
    new(aux);
    aux^.dato:=d;
    aux^.sig:=l;
    l:=aux;
end;


procedure cargarA(var a:arbol; var l:lista;au:auto);

var
d:data; 

begin
    if (a= nil ) then begin
        new (a);
        addl(a^dato.,d);
        a^.dato:=au;
        a^.hd:=nil;
        a^.hi:=nil
    end else begin
    if (a^.dato.marca = au.marca) then
            addl (l,d);
    if (a^.dato.marca >  au.marca  ) then
        cargarA(a^.hi,l,au)
    else (cargarA (a^.hd,l,au));
    end;
    
end;

procedure inventar (var a :auto);
begin

end;
procedure leer (var a:auto);
begin
   write('ingrsar marca: '); read (a.marca);
      write('ingrsar MODELO : '); read (a.info.modelo);
    write('ingrsar PATENTE: '); read (a.info.patente);write('ingrsar ANO: ');  read (a.info.ano);
 
end;
var 
au:auto;
l:lista;
a:arbol;
begin
  leer (au);
  while (au.info.ano <> 0) do begin
    cargarA (a,l);
    leer (au);
end;
end.
