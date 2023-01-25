uses crt;
type
	arr = array[0..60, 0..60] of integer;
var
	n : integer;
	a : arr;

procedure xuat();
var
	i,j : integer;
begin
	for i := 1 to n do
	begin
		for j := 1 to n-1 do write(a[i,j], ' ');
		writeln(a[i,n]);
	end;
end;

procedure CLOA(k,x : integer);
var
	i,j : integer;
	tmp : integer;
begin

	if ((1+x) = (n-x)) or (x > (n div 2)) then exit();

	tmp := k;
	for i := 1+x to n-x do
	begin
		a[i,j] := tmp;
		inc(tmp);
	end;

	for i := n-x to 

	CLOA(tmp,x+1);
end;


begin
	clrscr;
	readln(n);

	CLOA(1,0);
	xuat;

	readln;
end.
