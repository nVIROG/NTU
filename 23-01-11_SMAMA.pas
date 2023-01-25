uses crt;
type
	arr = array[1..1000000] of integer;
var
	P : int64;
	i : longint;
	k : int64;
	a : arr;
	j : longint;


procedure xuat(f : arr);
var
	j : int64;
begin
	j := 1;
	while j <= i do
	begin
		if (f[j] = 0) then write('4')
		else write('7');
		inc(j);
	end;
	writeln;
end;

procedure htb(var f : arr; x : int64);
var
	x2 : int64;
	j : int64;
begin

	j := 1;
	while j <= i do 
	begin
		f[j] := 0;
		inc(j);
	end;

	//xuat(f);

	x2 := x;
	j := i;
	repeat 
		f[j] := x2 mod 2;
		x2 := x2 div 2;
		dec(j);
	until (x2 = 0);

end;




begin
	clrscr;
	readln(k);

	p := 2;
	i := 1;
	while k - p >= 0 do 
	begin
		k := k - p;
		p := p * 2;
		i := i + 1;
	end;

	//writeln(i, ' ', k);

	if (k = 0) then
	begin
		for j := 1 to i-1 do write('7');
		readln;
		exit();
	end;

	htb(a,k-1);
	xuat(a);

	readln;
end.