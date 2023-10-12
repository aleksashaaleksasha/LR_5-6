var i,j,k : integer;
A: array [1..30] of integer;
B: array [1..30] of integer;
begin
  writeln('30 целых чисел:');
  for i := 1 to 30 do begin
    A[i] := random(167) - 99;
    write(A[i],'  ');
    if A[i] mod 2 = 0 then begin
      for j := 1 to 30 do begin
        if B[j] = 0 then begin
          B[j] := A[i];
          break;
        end;
      end;
    end;
  end;
  writeln();
  writeln('Массив В, состоящий из четных чисел массива А:');
  for i := 1 to 30 do if B[i] <> 0 then write(B[i],'  ');
end.