uses crt;
type
	arr = array[0..10,0..10] of boolean;
var
	xd, xc : integer;
	td, tc : integer;
	a : arr;

procedure xuat(f : arr);
var
	i, j : integer;
begin
	for i := 1 to 8 do
	begin
		for j := 1 to 7 do 
		begin
			if (f[i,j] = true) then write('0 ')
			else write('  ');
		end;
		if (f[i,8] = true) then writeln('0 ')
		else writeln('  ');
	end;
end;

procedure danhdau_quanxe(var f : arr;x,y : integer);
var
	i, j : integer;
begin
	j := y;
	for i := 1 to 8 do f[i,j] := true;

	i := x;
	for j := 1 to 8 do f[i,j] := true;
end;

procedure danhdau_quantuong(var f : arr; x,y : integer);
var
	i,j : integer;
	biendo : integer;
begin
	i := x;
	j := y;
	for biendo := 0 to 8 do 
	begin
		if ((i+biendo) < 9) and ((j+biendo) < 9) then f[i+biendo,j+biendo] := true;
		if ((i-biendo) > 0) and ((j-biendo) > 0) then f[i-biendo,j-biendo] := true;
		if ((i+biendo) < 9) and ((j-biendo) > 0) then f[i+biendo,j-biendo] := true;
		if ((i-biendo) > 0) and ((j+biendo) < 9) then f[i-biendo,j+biendo] := true;
		{xuat(f);
				delay(500);
				clrscr;}
	end;

end;

function baco(f : arr) : integer;
var
	cnt : integer; 
	i,j : integer;
begin
	cnt := 0 ;
	for i := 1 to 8 do 
	begin
		for j := 1 to 8 do 
		begin
			if (f[i,j] = true) then inc(cnt);
		end;
	end;

	exit(cnt);
end;


begin
	clrscr;


	read(xd);
	read(xc);
	read(td);
	readln(tc);

	{CLRSCR;}

	danhdau_quanxe(a,xd,xc);
	danhdau_quantuong(a,td,tc);
	{xuat(a);}

	write(baco(a));

	readln;
end.