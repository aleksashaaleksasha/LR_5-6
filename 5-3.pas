var i,nbr,max,minpos,nbrpos,nbrlast : integer;
A: array [1..20] of integer;
begin
  writeln('20 целых чисел:');
  for i := 1 to 20 do begin
    A[i] := random(118) - 52;
    write(A[i]:4);
  end;
  writeln();
  max := A[1];
  for i := 1 to 20 do begin
    if A[i] > max then begin
      max := A[i];
      nbr := i;
    end;
  end;
  write('Максимальный элемент массива и его индекс: ');
  writeln(max,', ',nbr);
  if max > 0 then minpos := max;
  for i := 1 to 20 do begin
    if (A[i] > 0) and (A[i] < minpos) then begin
    minpos := A[i];
    nbrpos := i;
    end;
    if A[i] mod 5 = 0 then nbrlast := i;
  end;
  write('Минимальный положительный элемент массива и его индекс: ');
  if minpos > 0 then writeln(minpos,', ',nbrpos) else writeln('Такого нет');
  write('Индекс последнего элемента массива, кратного 5: ');
  writeln(nbrlast);
end.