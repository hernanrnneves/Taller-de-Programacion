program untitled;

type 

socio=record 
	num:integer;
	nombre, apellido:string;
	edad:integer;
end;

arbol =^nodo;
nodo=record
	dato:socio;
	hi:arbol;
	hd:arbol;
end;

procedure leer (var s:socio);
begin
read (s.num);
	if (s.num <> 0) then begin
		read (s.nombre);
		read (s.apellido);
		read (s.edad);
	end;
end;

procedure cargarA (var a:arbol);
var 
s:socio;
begin
	leer (s);
	if (s.num <> 0) then begin
		new (a);
		a^.dato:=s;
		a^.hi:=nil;
		a^.hd:=nil;
	end else begin
		if (s.num <= a^.dato.num) then
			cargarA(a^.hi)
		else
			cargarA(a^.hd);
	end;
	leer (s);
end;

function MAXI (a:arbol; max :integer ):integer ; // i

begin
	if (a<> nil) then begin 
		if	 (max < a^.dato.num) then begin
		maxi:=a^.dato.num;
		end;
	maxi:=maxi(a^.hi, max);
	maxi:=maxi(a^.hd, max);
	end;
	maxi:=max;
end;
function Mini (a:arbol; min :integer ):integer ; // ii

begin
	if (a<> nil) then begin 
		if	 (min > a^.dato.num) then begin
		min:=a^.dato.num;
		end;
	mini:=mini(a^.hi,min);
	mini:=mini(a^.hd, min);
	end;
	mini:=min;
end;

function MAYOR (a:arbol; max :integer ):integer ; // iii

begin
	if (a<> nil) then begin
		if (max < a^.dato.edad) then begin
			mayor:=a^.dato.edad;
		end;
	mayor:=mayor(a^.hi, max);
	mayor:=(a^.hd, max);
	end;
	MAYOR:=max;

end;

procedure incrementar (a:arbol); 	// iv
begin
	if  (a<> nil) then begin
		a^.dato.edad:=a^.dato.edad +1;
		incrementar(a^.hd);
		incrementar(a^.hi);
	end;
end;
procedure 	EXISTE (a:arbol; codigo:integer); // v
var 
ok:boolean;
begin

	if (a <> nil) then begin
		if (codigo = a^.dato.num )then begin
			ok:=true;
			writeln (ok);
			a:=nil;
		end;
	end else begin
		existe (a^.hi,codigo);
		existe (a^.hd, codigo);
	end;

end;

procedure 	EXISTE_2 (a:arbol; nombre:string); // vi
var 
ok:boolean;
begin

	if (a <> nil) then begin
		if (nombre = a^.dato.nombre )then begin
			ok:=true;
			writeln (ok);
			a:=nil;
		end;
	end else begin
		existe_2 (a^.hi,nombre);
		existe_2 (a^.hd, nombre);
	end;
end;



procedure cant (a:arbol;var total:integer); // vii
begin
	if  (a <> nil)then begin
		cant (a^.hi, total +1);	// inicializo total:= 0 en main?
		cant (a^.hd, total +1);
	end;
end;
function sumatot (a:arbol; suma:integer):integer;
begin
	if (a<> nil) then begin
		suma:= suma +a^.dato.edad;
		sumatot:= sumatot(a^.hi,suma);
		sumatot:=(a^.hd, suma);
	end;
end;

function promedio(a:arbol; var acu:integer):real; // viii
var
total:integer;
begin
	if (a<>nil) then begin
		acu :=acu+a^.dato.edad;
		promedio(a^.hi, acu);
		promedio(a^.hd,acu);
	end;
	cant (a, total); //vii
	write (sumatot(a, suma));
	promedio (a, acu):= promedio / total;
end;
procedure printCRES (a:arbol); // ix
begin
	if (a<> nil)then begin
		printCRES(a^.hd);
		writeln (a^.dato.num);
		printCRES(a^.hi);
	end;
end;
procedure printDECRES (a:arbol); // x
begin
	if (a<> nil)then begin
		printCRES(a^.hi);
		writeln (a^.dato.num);
		printCRES(a^.hd);
	end;
end;



VAR
a:arbol;
max:integer;
min:integer;
total:integer;
BEGIN
cargarA (a);
max:=-999;
writeln (maxi (a, max));
min := 999;
writeln (mini (a, min));	
max:=-999;
writeln (mayor (a, max));
existe(a, codigo);
existe_2(a, nombre);
total:=0;
cant (a, total);
write (total);
END.
