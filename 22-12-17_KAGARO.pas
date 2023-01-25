uses crt;
var
	n : int64;
	a,b : int64;
	k : int64;
	ans : int64;

function gcd(a,b : int64) : int64;
begin
	if (b = 0) then exit(a)
	else exit(gcd(b, a mod b));
end;

begin
	clrscr;
    read(n);
    read(a);
    readln(b);

    if (n mod (gcd(a,b)) <> 0) then
    begin
    	write(-1);
    	readln;
    	exit;
    end;


    k := 0;
    while (k*a <= n) do 
    begin
    	if (n - k*a) mod b = 0 then 
    	begin
			write(k + ((n - k*a) div b));
			readln;
			exit;
    	end;

    	if (k > 10000) then break;
    	inc(k);
    end;

    ans := -1;
    k := 0;
    while (k*b <= n) do
    begin
    	if(n - k*b) mod a = 0 then
    	begin
    		ans := k + ((n-k*b) div a);
    	end;
    	inc(k);
    end;

    write(ans);

	readln;
end.
