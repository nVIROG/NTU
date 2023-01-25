uses crt;
type
	arrr = array[1..150] of integer;
var
	n : Integer;
	i : integer;
    a,b,ans : arrr;
    dem : integer;
begin
	clrscr;
    readln(n);

    for i := 1 to n-1 do read(a[i]);
    readln(a[n]);

    dem := 0;
    for i := 1 to n do 
    begin
    	inc(b[a[i]]);
    	if(b[a[i]] mod 3 = 0) then
    	begin
    		inc(dem);
    		ans[dem] := a[i];
    	end;
    end;

    writeln(dem);
    for i:=1 to dem do write(ans[i], ' ');

	readln;
end.
