uses crt;
const
	p = 1000000007;
var
	a,b : int64;
	aa, bb: real;

function f(x : int64) : int64;
var
	tu : int64;
begin
	tu := (2 * (x mod p) * (x mod p) * (x mod p));
	tu := tu + (3 * (x mod p) + (x mod p));
	tu := (tu + x) mod p;

	while tu mod 6 <> 0 do 
	begin
		tu := tu+p;
	end;
	tu := tu div 6;
	exit(tu mod p)
end;

begin
	clrscr;
	read(aa); readln(bb);
	a := round(aa);
	b := round(bb);
	write(a, ' ',b);

	readln;
end.

