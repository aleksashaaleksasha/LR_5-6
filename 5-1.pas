var i : integer;
A: array [1..20] of integer;
begin
  writeln('Введите 20 целых чисел:');
  for i := 1 to 20 do begin
    readln(A[i]);
  end;
  writeln('Изменённый массив:');
  for i := 1 to 20 do begin
    if A[i] > 0 then A[i] := 0 else if A[i] < 0 then A[i] := A[i]*A[i];
    write(A[i]:5)
  end;
end.