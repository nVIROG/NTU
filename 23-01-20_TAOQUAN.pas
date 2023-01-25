uses crt;
var
	n,m,k : longint;
	cnt : longint;

function min(x, y : longint) : longint;
begin
	if(x > y) then exit(y);
	exit(x);
end;

begin
	clrscr;
	read(n); read(m); readln(k);

	write(min(min(m, n div 2), ((n+m) - k) div 3));

	readln;
end.