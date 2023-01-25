uses crt;
var
	n : string;

function fnum(x : string) : string;
var
	tmp : char;
	duoi : integer;
	ans : integer;
	fans : string;
	code : integer;
	i : integer;

begin

	writeln(x);

	if (length(x) = 1) then exit(x);

	ans := 0;
	i := 1;
	while i <= length(x) do 
	begin
		val(x[i], duoi, code);
		ans := ans + duoi;
		//writeln(ans);
		inc(i);
	end;



	str(ans, fans);
	exit(fnum(fans));

end;

begin
	clrscr;
	readln(n);

	write(fnum(n));

	readln;
end.