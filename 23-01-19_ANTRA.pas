uses crt;
type
	arr = array[1..15] of integer;
var
	a : arr;
	b : arr;


procedure swap(var a,b : integer);
var
	tmp : integer;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

procedure sort(var f : arr; l,r : integer);
var
	i,j : integer;
	mid : integer;
begin
	i := l; 
	j := r;

	if (i >= j) then exit;

	mid := f[(i+j) div 2];

	while (f[i] < mid) do inc(i);
	while (f[j] > mid) do dec(j);
	if (i <= j) then 
	begin
		swap(f[i], f[j]);
		inc(i); dec(j);
	end;

	sort(f,l,j);
	sort(f,i,r);
end;
procedure xuat(f : arr);
var
	i : integer;
begin
	for i := 2 to 15 do write(f[i], ' ');
	writeln();
end;

procedure toiuu(var f : arr);
var
	i : integer;
begin
	for i := 2 to 14 do 
	begin
		inc(f[a[i]]);
		//xuat(f);
	end;
	f[15] := f[2];
end;


procedure nhap(var f : arr);
var
	i : integer;
	tmp : string;
begin
	for i := 2 to 14 do 
	begin
		readln(tmp);

		//toi uu
		f[i] := ord(tmp[1]) - 48;
		if (f[i] = 36) then f[i] := 10;
		if (f[i] = 26) then f[i] := 11;
		if (f[i] = 33) then f[i] := 12;
		if (f[i] = 27) then f[i] := 13;
		if (f[i] = 17) then f[i] := 14;
	end;
end;

function wa(x : boolean) : string;
begin
	if (x = true) then exit('YES')
	else exit('NO');
end; 

function case1(f : arr) : boolean;
var
	i : integer;
begin
	for i := 2 to 14 do
	begin
		if (b[i] <> 1) then exit(false);
	end;

	exit(true);
end;

function case2(f : arr) : boolean;
begin
	if (b[2] = 4) then exit(true)
	else exit(false);
end;

function case3(f : arr) : boolean;
var
	i : integer;
begin
	for i := 3 to 11 do 
	begin
		if (f[i] >= 2) and (f[i+1]>= 2) and (f[i+2] >= 2) and (f[i+3] >= 2) and (f[i+4] >= 2) then exit(true);
		//writeln(f[i], ' ',f[i+1], ' ',f[i+2], ' ',f[i+3], ' ',f[i+4], ' ');
	end;

	exit(false);
end;

function case4(f : arr) : boolean;
var
	i : integer;
	cnt : integer;
begin
	cnt := 0;
	for i := 2 to 14 do
	begin
		cnt := cnt + f[i] div 2;
	end;

	//write('cnt: ',cnt);

	if (cnt >= 6) then exit(true)
	else exit(false);

end;

begin
	clrscr;
	nhap(a);


	toiuu(b);
	{xuat(a);
		xuat(b);
	
		writeln('Case 1 : ',wa(case1(a)));
		writeln('Case 2 : ',wa(case2(a)));
		writeln('Case 3 : ',wa(case3(b)));
		writeln('Case 4 : ',wa(case4(b)));
	}
	if (case1(a) = true) then 
	begin
		write('YES');
		readln;
		exit;
	end;

	if (case2(a) = true) then 
	begin
		write('YES');
		readln;
		exit;
	end;

	if (case3(b) = true) then 
	begin
		write('YES');
		readln;
		exit;
	end;

	if (case4(b) = true) then 
	begin
		write('YES');
		readln;
		exit;
	end;

	write('NO');

	readln;
end.



