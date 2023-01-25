uses crt;
type 
	arr = array[1..2,1..100007] of int64;
	ar = array[0..1000007] of char;
Var
	s : ansistring;
	q : int64;
	i : int64;
	n : int64;
	a : arr;
	b : ar;
	c : char;


begin
	clrscr;

	read(c);
	while(c <> ' ') do 
	begin
		s[n] := c;
		read(c);
		inc(n);
	end;

	i:=0;
	while i < n do 
	begin
		write(s[i]);
	end;
	exit();

	readln(q);
	

	i := 1; 
	while i <= q do 
	begin
		read(a[1,i]); readln(a[2,i]);
		inc(i);
	end;

	i := 0;
	while i < n do 
	begin
		s[i] := s[i+1];
		// write(s[i]);
		inc(i);
	end;
	// writeln;

	i := 1; 
	while i <= q do 
	begin
		dec(a[1, i]);
		dec(a[2, i]);
		a[1, i] := a[1, i] mod n;
		a[2, i] := a[2, i] mod n;
		if(s[a[1, i]] = s[a[2, i]]) then writeln('Yes')
		else writeln('No');
		inc(i);
	end;
	readln;
	exit();

	i := 1;
	while i <= length(s) do 
	begin
		b[i] := s[i];
		inc(i);
	end;

	i := 1;
	while i <= length(s) do 
	begin
		writeln(b[i], ' ');
		inc(i);
	end;

	i := 1;
	while i <= q do 
	begin
		if (a[1,i] > length(s)) then a[1,i] := a[1,i] mod length(s);
		if (a[2,i] > length(s)) then a[2,i] := a[2,i] mod length(s);
		inc(i);
	end;

	i := 1;
	while i <= q do 
	begin
		if (b[a[1,i]] = b[a[2,i]]) then writeln('YES')
		else writeln('NO');
		inc(i);
	end;


	readln;
end.