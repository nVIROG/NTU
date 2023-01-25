uses crt;
type 
	arr = array[1..57] of string;
var
	T : integer;
	i : integer; 
	a : arr;

function so_giay(x : char) : integer;
begin
	case x of
		'a','d','g','j','m','p','t','w','.','_'  : exit(1);
		'b','e','h','k','n','q','u','x',',','0'  : exit(2);
		'c','f','i','l','o','r','v','y','?'  : exit(3);
		's','z','!','2','3','4','5','6','8'  : exit(4);
		'1','7','9' : exit(5);
	end;
end;

function so_khoang(x : char) : integer;
begin
	case x of
		',','.','?','!','1' : exit(0);
		'a','b','c','2' : exit(1);
		'd','e','f','3' : exit(2);
		'g','h','i','4' : exit(3);
		'j','k','l','5' : exit(4);
		'm','n','o','6' : exit(5);
		'p','q','r','s','7' : exit(6);
		't','u','v','8' : exit(7);
		'w','x','y','z','9' : exit(8);
		'0', '_' : exit(9);
	end;
end;




function bw(s : string) : integer;
var
	i : integer;
	ans : integer;
	vitri : integer;
begin
	i := 1;
	ans := 0;
	vitri := 0;
	while i <= length(s) do 
	begin
		if (vitri <> so_khoang(s[i])) then 
		begin
			inc(ans);
			vitri := so_khoang(s[i]);
		end;
		ans := ans + so_giay(s[i]);
		//writeln(so_giay(s[i]), ' ',so_khoang(s[i]));
		inc(i);
	end;
	exit(ans);
end;


begin
	clrscr;
	readln(T);

	i := 1;
	while i <= T do 
	begin
		readln(a[i]);
		inc(i);
	end;

	i := 1;
	while i <= T do 
	begin
		writeln(bw(a[i]));
		inc(i);
	end;
	readln;
end.