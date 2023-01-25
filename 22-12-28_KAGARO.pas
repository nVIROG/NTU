uses crt;
var
	n, a, b, x, y, h, k, g: int64;

function ExtendedEuclid(a, b: int64; var x, y: int64): int64;
var
	tmp, g: int64;
begin
	if(a = 0) then
	begin
		x:=0;
		y:=1;
		exit(b);
	end;

	g := ExtendedEuclid(b mod a, a, x, y);
	tmp := x;
	x := y - (b div a) * x;
	y := tmp;
	exit(g);
end;

begin
	clrscr;
    read(n);
    read(a);
    readln(b);
    
    g := ExtendedEuclid(a, b, x, y);
    n := n div g;
    a := a div g;
    b := b div g;
    h := n div g;
    x := x * h;
    y := y * h;
    k := -(x-b+1) div b;

    writeln(x, ' ', y);
    writeln('ax + by = ', a*(x+k*b) + b*(y-k*a));
    writeln('x + y = ', abs(x+k*b) + abs(y-k*a));
    writeln('k = ', k);
    writeln('x = ', (x+k*b));
    writeln('y = ', (y-k*a));
	writeln((x+y), ' + ', (b-a) , ' * k');
	writeln((150133451 - (x+y)) div (b-a));
	writeln(-(x) div b, ' ', y div a);
	readln;
end.