uses crt;
type
	arr = array[1..7,1..7] of integer;
var
	i,j : integer;
	pnt : integer;
	tmp : char;
	a : arr;
	b : arr;
	x,y : integer;
	used : integer;

procedure toiuu();
var
	i,j : integer;
begin
	
	b[1,3] := 6;
	b[1,5] := 6;
	b[2,2] := 6;
	b[2,6] := 6;
	b[3,1] := 6;
	b[3,7] := 6;
	b[5,1] := 6;
	b[5,7] := 6;
	b[6,2] := 6;
	b[6,6] := 6;
	b[7,3] := 6;
	b[7,5] := 6;

	b[1,4]  := 7;
	b[2,5]  := 7;
	b[3,6]  := 7;
	b[4,7]  := 7;
	b[2,3]  := 7;
	b[3,2]  := 7;
	b[4,1]  := 7;
	b[5,2]  := 7;
	b[6,3]  := 7;
	b[7,4]  := 7;
	b[5,6]  := 7;
	b[6,5]  := 7;

	b[2,4] := 8;
	b[3,3] := 8;
	b[3,5] := 8;
	b[4,2] := 8;
	b[4,6] := 8;
	b[5,3] := 8;
	b[5,6] := 8;
	b[6,4] := 8;

	b[3,4] := 9;
	b[4,3] := 9;
	b[4,5] := 9;
	b[5,4] := 9;
	
	b[4,4] := 10;

end;

begin
	clrscr;
	for i := 1 to 7 do
	begin
		for j := 1 to 6 do
		begin
			read(tmp);
			if (ord(tmp) = 46) then a[i,j] := 0
			else a[i,j] := ord(tmp) - 48;
		end; 
		readln(tmp);
		if (ord(tmp) = 46) then a[i,j+1] := 0
		else a[i,j+1] := ord(tmp) - 48;
	end;

	
	toiuu;

	

	pnt := 0;
	for i := 1 to 7 do
	begin
		for j := 1 to 7 do pnt := pnt + (a[i,j] * b[i,j]);
	end;
	

	writeln(pnt);

	readln;
end.