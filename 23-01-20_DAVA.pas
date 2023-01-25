uses crt;
type
	arr = array[0..2007,0..2007] of int64;
var
	n, k : integer;
	i, j : integer;
	a, f : arr;
	tmp : longint;
	max : longint;

function sum(x,y,k : integer) : longint;
begin
	x := x-1;
	y := y-1;
	exit(f[x+k, y+k] - f[x, y+k] - f[x+k, y] + f[x, y]);
end;

procedure init();
var i, j: integer;
begin
	for i:=1 to n do
	begin
		for j:=1 to n do
		begin
		f[i,j] := a[i,j] + f[i-1, j] + f[i, j-1] - f[i-1, j-1];
		end;
	end;
end;

begin
	clrscr;
	read(n); readln(k);

	for i := 1 to n do
	begin
		for j := 1 to n-1 do read(a[i,j]);
		readln(a[i,n]);
	end;

	init();

	max := -1;
	for i := 1 to n-k+1 do 
	begin
		for j := 1 to n-k+1 do 
		begin
			tmp := sum(i,j,k);
			if (tmp > max) then 
			begin
				//writeln(i,' ',j,' ',tmp);
				max := tmp;
			end;
		end;
	end;

	write(max);

	readln;
end.