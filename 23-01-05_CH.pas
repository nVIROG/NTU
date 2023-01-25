program ChinhHopKhongLap; 
      const  MAX    =20; 
      type    vector  =array[0..MAX]of longint; 
      var    x      :vector; 
            d      :array[1..MAX]of longint; { mảng d ñể kiểm 
    soát ràng buộc các giá trị  ñôi một khác nhau,    với mọi  } 
                                                     

            n,k    :longint; 
      procedure GhiNghiem(x:vector); 
      var i  :longint; 
      begin 
        for i:=1 to k do write(x[i],' '); 
        writeln; 
      end; 
      procedure ChinhHopKhongLap(i:longint); 
      var j:longint; 
      begin 
        for j := 1 to n do 
            if d[j]=0 then begin 
                x[i] := j; 
                d[j] := 1; 
                if i=k then GhiNghiem(x) 
                else ChinhHopKhongLap(i+1); 
                d[j] := 0; 
            end; 
      end; 
      BEGIN 
        readln(n,k); 
        fillchar(d,sizeof(d),0); 
        ChinhHopKhongLap(1); 
        readln;
      END.