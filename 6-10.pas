var i,cnt1,cnt2,j : integer;
A : array of integer;
begin
  cnt2 := 19;
  cnt1 := 20;
  A := arrRandom(20, -100, 100);
  writeln('Массив А:');
  writeln(A);
  writeln('Изменённый массив А:');
  while i <= 19 do begin
    //if A[i] >= 0 then cnt1 := cnt1 - 1;
    if A[i] < 0 then begin
      for j := i to 19 do begin
        if j <> 19 then A[j] := A[j+1];
        A[19] := 0;
      end;
      i := - 1;
      cnt1 := cnt1 - 1;
    end;
    i := i + 1;
  end;
  setlength(A, cnt1-1);
  writeln(A);
end.