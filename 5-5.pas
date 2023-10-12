var i,length1,length2,sum1,sum2 : integer;
A : array of integer;
B : array of integer;
begin
  A := ArrRandom(random(1,30), -100,100);
  B := ArrRandom(random(1,30), -100,100);
  length1 := Length(A);
  length2 := Length(B);
  writeln('Массив А: ');
  for i := 1 to length1-1 do begin
    if A[i] > 0 then sum1 := sum1 + A[i];
    write(A[i],'  ');
  end;
  writeln();
  writeln('Массив B: ');
  for i := 1 to length2-1 do begin
  if B[i] > 0 then sum2 := sum2 + B[i];
  write(B[i],'  ');
  end;
  writeln();
  if sum1 >= sum2 then begin
    writeln('Изменённый массив В:');
    for i := 1 to length2-1 do begin
    B[i] := B[i]*10;
    write(B[i],'  ');
  end;
  end; 
  if sum1 < sum2 then begin
    writeln('Изменённый массив A:');
    for i := 1 to length1-1 do begin
    A[i] := A[i]*10;
    write(A[i],'  ');
  end;
  end;
end.