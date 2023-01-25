uses crt;
type
        arr = array[1..1000000007] of boolean;
var
        a : arr; 
        n : int64;
 
procedure ngto4(x : int64);
var
        i , j : int64;
        dem : int64;
begin
        i := 2;
        dem := 0;
        while dem <= x do 
        begin
                if (a[i] = false) then
                begin
 
                        inc(dem);
 
                        if dem = x then 
                        begin
                                write(i);
                                exit;
                        end;
 
 
                        j := i*i;
 
                        while j <= 10000000 do 
                        begin
                                a[j] := true ;
                                j := j+i;
                        end;
                end;
 
                inc(i);
 
 
        end;
 
 
end;
 
begin
        clrscr;
        readln(n);
 
        ngto4(n);
        //write(ngto4(n));
 
        readln;    
end.