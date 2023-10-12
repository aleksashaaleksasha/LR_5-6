var i, min, k1,k2 : integer;
A : array [1..20] of integer;
begin
  for i := 1 to 20 do begin
    A[i] := random(201) - 100;
  end;
  writeln('Массив А:');
  writeln(A);
  for i := 1 to 20 do begin
    if A[i] > 0 then begin
      A[i] := 0;
      k1 := i;
      break;
    end;
  end;
  min := 220;
  for i := 1 to 20 do begin
    if A[i] < min then begin
      min := A[i];
    end;
  end;
  writeln('Изменённый массив А:');
  for i := 1 to 20 do begin
    if (A[i] <> min) and (k1 <> i) then write(A[i],' ');
    A[i] := 0;
  end;
  //writeln(A);
end.