program ee;

type

arbol=^nodo;
nodo=record
    dato:integer;
    hi:arbol;
    hd:arbol;
end;

procedure agregar (var a:arbol; num: integer);


begin
    if a= nil then begin
        new (a);
        a^.dato:= num;
        a^.hi:=nil;
        a^.hd:=nil;
    end
    else begin
        if (num <= a^.dato) then 
			agregar(a^.hi,num)
		else
			agregar(a^.hd,num);
		end;
end;
procedure print (a:arbol);
begin
	if a<> nil then begin
			print (a^.hi);
			
	writeln (a^.dato);
		print (a^.hd);
			
	end;
end;

var
a:arbol;
num :integer;
begin


read (num);
while (num <> 0) do begin
    agregar(a,num);
    read(num);
end;
print (a);
end.
{
* CHAT GPT	 
program ee;

type
  arbol = ^nodo;
  nodo = record
    dato: integer;
    hi: arbol;
    hd: arbol;
  end;

procedure agregar(var a: arbol; num: integer);
begin
  if a = nil then
  begin
    new(a);
    a^.dato := num;
    a^.hi := nil;
    a^.hd := nil;
  end
  else
  begin
    if (num <= a^.dato) then
    begin
      writeln('Agregando ', num, ' a la izquierda de ', a^.dato);
      agregar(a^.hi, num);
    end
    else
    begin
      writeln('Agregando ', num, ' a la derecha de ', a^.dato);
      agregar(a^.hd, num);
    end;
  end;
end;

procedure print(a: arbol);
begin
  if a <> nil then
  begin
    writeln('Nodo actual: ', a^.dato);
    writeln('Subárbol izquierdo de ', a^.dato, ':');
    print(a^.hi);
    writeln('Subárbol derecho de ', a^.dato, ':');
    print(a^.hd);
  end;
end;

var
  a: arbol;
  num: integer;
begin
  a := nil;
  write('Ingrese un número (0 para detener): ');
  read(num);
  while (num <> 0) do
  begin
    agregar(a, num);
    write('Ingrese un número (0 para detener): ');
    read(num);
  end;
  print(a);
end.
}
