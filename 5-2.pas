var i,cnt,mtp,sum,min,max : integer;
A: array [1..20] of integer;
begin
  writeln('Введите 20 целых чисел:');
  for i := 1 to 20 do begin
    A[i] := random(116) - 22;
    write(A[i]:4);
  end;
  writeln();
  mtp:= 1;
  writeln('Количество чётных элементов массива,стоящих на нечётных местах:');
  for i := 1 to 20 do begin
    if i mod 2 = 1 then begin
    if A[i] mod 2 = 0 then cnt := cnt + 1;
    mtp := mtp*A[i];
    end;
  end;
  writeln(cnt);  
  writeln('Произведение нечётных элементов массива:');
  writeln(mtp);
  writeln('Введите диапазон элементов массива:');
  readln(min,max);
  for i := min to max do begin
    sum := sum + A[i];
  end;
  writeln('Сумма элементов в этом диапазоне:');
  writeln(sum);
end.