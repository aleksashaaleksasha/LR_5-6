var i,length,f : integer; srt : boolean;
A: array of integer;
B: array of integer;
begin
  srt := True;
  write('Впишите длину массива: ');
  readln(length);
  setLength(A, length);
  setLength(B, length);
  writeln('Впишите элементы массива');
  for i := 1 to length do begin
    readln(f);
    A[i-1] := f;
    B[i-1] := f;
  end;
  //writeln(A);
  //writeln(B);
  sort(B);
  //writeln(A);
  //writeln(B);
  for i := 1 to length do begin
    if A[i-1] <> B[i-1] then srt := False
  end;
  if srt = True then writeln('Массив отсортирован') else writeln('Массив не отсортирован');
end.
