uses crt;
type
	arr = array[0..1000007] of int64;
var
	k : int64;
	i : int64;
	a : arr;
	b : arr;
	tien : int64;




begin
	clrscr;
	readln(k);

	i := 1;
	while i <= k do 
	begin
		readln(a[i]);
		inc(i);
	end;
	
	tien := 0;
	i := 1;
	while i <= k do
	begin
		b[a[i] - 10102010] := b[a[i] - 10102010] + 1;
		if (b[a[i] - 10102010] = 1) then tien := tien + 100;
		if (b[a[i] - 10102010] > 5) then inc(tien);
		inc(i);
	end;



	write(tien);

	readln;
end.
    