uses crt;
var
	hh, hc: Integer;
	time : integer;

procedure so_lan(n,m,t : int64);
begin
	if ((n+m) <= 2) or ((n <= 0) or (m <= 0)) then 
	begin
		writeln(t);
		exit;
	end;
	if (n >= m) then 
		so_lan(n-2,m-1,t+1)
	else
		so_lan(n-1,m-2,t+1);
	//writeln(n,' ', m, ' ',t);

end;

procedure TAHO(n,m : integer);
begin
	if ((n+m) <= 2) or ((n <= 0) or (m <= 0)) then exit()
	else
		begin
			if (n < m) then
			begin
			 	writeln(1, ' ',2);
				TAHO(n-1,m-2);
			end
			else
				begin
					writeln(2, ' ',1);
					TAHO(n-2,m-1);
				end;
		end;

end;
	

begin
	clrscr;
	read(hh); 
	readln(hc); 

	if (hh = 1) and (hc = 1) then 
	begin
		write(0);
		readln;
		exit;
	end;

	if (hh < hc) then so_lan(hh,hc,0)
	else so_lan(hc,hh,0);

	TAHO(hh,hc);
	
	readln;
end.