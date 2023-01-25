uses crt;
type
	arrr = array[1..107] of integer;
var
	n : integer;
	a,x : arrr;
    i : integer;
    min_num, min_pos : integer;
    tien : integer;


begin
	clrscr;

    readln(n);
    for i := 1 to n-2 do read(a[i]);
    readln(a[n-1]);
    for i := 1 to n-1 do read(x[i]);
    readln(x[n]);

    min_num := 1000;
    for i:=1 to n-1 do 
    begin
    	if(min_num > x[i]) then min_num := x[i];
    	tien := tien + min_num * a[i];
    end;
    write(tien);
    readln;
    exit();

    min_num := 1000;
    min_pos := 1;
    for i := 1 to n-1 do
    begin
    	if (min_num > x[i]) then 
    	begin
    		min_num := x[i];
    		min_pos := i;
    	end;
    end;
    //writeln(min_num, ' ', min_pos);

    tien := a[1] * x[1];
    for i := 2 to n-1 do 
    begin
    	if (i >= min_pos) then tien := tien + (a[i] * min_num)
    	else if x[i-1] < x[i] then tien := tien + (a[i] * x[i-1])
    	else tien := tien + a[i] * x[i];
    end;

    // for i := min_pos+1 to n-1 do 
    // begin
    // 	tien := tien + min_num * a[i];
    // end;

    write(tien);

	readln;
end.