uses crt;
type
	arr = array[0..107,0..107] of integer;
var
	a : arr;
	x,y : Integer;
	n,m : Integer;
	i,j : integer;
	rau : integer;

//DFS
procedure ocsen(i, j : integer);
begin
	//writeln(i,' ', j,' ', rau);
	if not (a[i,j] = 0) then
		exit;
	
	a[i,j] := 2;
	
	inc(rau);
	
	ocsen(i-1,j);
	ocsen(i,j-1);
	ocsen(i+1,j);
	ocsen(i,j+1);


end; 

begin
	clrscr;

	read(n);
	read(m);
	read(y);
	readln(x);

	rau := 0;

	for i := 0 to n+1 do
	begin
		for j := 0 to m+1 do a[i,j] := 1;
	end;

	for i := 1 to n do
	begin
		for j := 1 to m-1 do read(a[i,j]);
		readln(a[i,m]);
	end;

	// for i := 0 to n+1 do
	// begin
	// 	for j := 0 to m do write(a[i,j], ' ');
	// 	writeln(a[i,m+1]);
	// end;

	ocsen(y,x);
	write(rau);

	readln;
end.