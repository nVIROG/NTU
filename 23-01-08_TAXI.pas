uses crt;
type
	arr = array[1..100007] of longint;
var
	n : longint;
	i : longint;
	a : arr;
	b : arr;
	fi, fo: text;

procedure t(f : arr);
var
	i : longint;
begin
	i := 1;
	while i <= n do
	begin
		inc(b[a[i]]);
		inc(i);
	end;
end;

function min(a,b : longint) : longint;
begin
	if (a < b) then exit(a)
	else exit(b);
end;

function taxi() : longint;
var
	i : longint;
	ans : longint;
	need : longint;
begin
	ans := b[4];
	//writeln(b[4]);
	b[4] := 0;
	// #4 = 0

	ans := ans + b[3];
	need := b[3];

	ans := ans + (b[2] + 1) div 2;
	need := need + (b[2] mod 2) * 2;

	b[1] := b[1] - need;
	if b[1] < 0 then b[1] := 0;
	
	// writeln(ans, ' ', b[1]);

	ans := ans + (b[1] + 3) div 4;

	exit(ans);
end;

procedure xuat(f : arr);
var
	i : longint;
begin
	i := 1;
	while i <= 4 do
	begin
		writeln(i, ': ',f[i]);
		inc(i);
	end;
	writeln;
end;

begin
	clrscr;

	// assign(fi, 'test.inp'); reset(fi);
	// assign(fo, 'test.out'); rewrite(fo);

	readln(n);
	i := 1;
	while i < n do
	begin
		read(a[i]);
		inc(i);
	end;
	readln(a[n]);

	t(a);
	//xuat(b);

	writeln(taxi());

	//xuat(b);

	// close(fi);
	// close(fo);

	readln;
end.