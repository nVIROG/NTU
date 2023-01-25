uses crt;
type
	arr = array[1..2, 1..10007] of longint;
var
	n : longint;
	i : longint;
	a : arr;
	t, m : longint;

procedure swap(var a,b : longint);
var
	tmp : longint;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

procedure sort(var f : arr; l,r : longint);
var
	i, j : longint;

	pivot1, pivot2 : longint;
begin
	i := l;
	j := r;

	if (i >= j) then exit;
	pivot1 := a[1, (l+r) div 2];
	pivot2 := a[2, (l+r) div 2];

	while (a[2,i] < pivot2) or ((a[2,i] = pivot2) and (a[1,i] > pivot1)) do inc(i);
	while (a[2,j] > pivot2) or ((a[2,j] = pivot2) and (a[1,j] < pivot1)) do dec(j);

	if (i <= j) then
	begin
		swap(a[1,i], a[1,j]);
		swap(a[2,i], a[2,j]);
		inc(i);
		dec(j);
	end;

	sort(f,l,j);
	sort(f,i,r);

end;





begin
	clrscr;

	readln(n);
	i := 1;
	while i <= n do
	begin
		read(a[1,i]); readln(a[2,i]);
		inc(i);
	end;

	sort(a,1,n);
	
	

	t := 0;
	m := 0;
	i := 1;
	while i <= n do
	begin

		if (a[2,i] - t) >= 0 then 
		begin
			m := m + a[1,i];
			inc(t);
		end;
		inc(i);
	end;

	write(m);

	readln;
end.
    