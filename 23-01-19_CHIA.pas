uses crt;
var
	n : integer;
	i : integer;
	ans : ansistring;
	tmp : ansistring;

function tru( a,b : ansistring) : ansistring;
var
	c : ansistring;
	sum : longint;
	nho : longint;
	i : longint;
Begin
	nho := 0;
	c := '';

	while length(a) < length(b) do a := '0' + a; 
	while length(b) < length(a) do b := '0' + b; 
	for i := length(a) downto 1 do
	begin
		sum := ord(a[i]) - ord(b[i]) - nho;
		if sum  < 0 then
		begin
			sum := sum+10;
			nho := 1;
		end else nho := 0;

		c := chr(sum+48) + c;
	end;

	while (length(c) > 1) and (c[i] = '0') do delete(c,1,1);
	exit(c);
End;




begin
	clrscr;
	readln(n);

	if (n = 1) then 
	begin
		write(-1);
		readln;
		exit;
	end;

	ans := '21';

	repeat
		ans := ans + '0';
	until length(ans) = n;

	
	while length(ans) >= n do 
	begin
		tmp := ans;
		ans := tru(ans,'21');
		

	end;

	write(tmp);

	readln;

end.


