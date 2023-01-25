uses crt;
var
	n, k: int64;
	i : int64;
	ans : int64;

function ds(n,k : int64): boolean;
var
	i : int64;
begin
	if k > n then exit(false);

	i := 2;
	while i <= k-1 do 
	begin
		if (n mod i) = 0 then exit(false);
		inc(i);
	end;
	exit(true);
end;

begin
	clrscr;
	readln(k);
	i := 1;
	ans := 0;
	while i <= 100000 do 
	begin
		if (ds(100000, i) = true) then inc(ans);
		inc(i);
	end;

	write(ans);

	readln;
end.