program soal5;
uses crt;

var
  n, i: integer;

{ 
  SOAL 5a: Deret Fibonacci (1, 1, 2, 3, 5, 8, ...)
  METODE PENGERJAAN:
  Suku ke-n diperoleh dari penjumlahan dua suku sebelumnya dengan formula: F(n) = F(n-1) + F(n-2).
  Untuk n = 1 dan n = 2, nilainya bernilai tetap 1. Perulangan dilakukan dari 
  suku ke-3 hingga n untuk menggeser dan menjumlahkan dua nilai terakhir.
}
function fibonacci(n: integer): longint;
var
  a, b, temp, j: longint;
begin
  if (n = 1) or (n = 2) then
    fibonacci := 1
  else
  begin
    a := 1;
    b := 1;
    for j := 3 to n do
    begin
      temp := a + b;
      a := b;
      b := temp;
    end;
    fibonacci := b;
  end;
end;

{ 
  SOAL 5b: Deret Geometri Kelipatan 2 (1, 2, 4, 8, 16, 32, ...)
  METODE PENGERJAAN:
  Suku ke-n diperoleh dari nilai 2 dipangkatkan (n - 1). 
  Perhitungannya dimulai dari 1 (sebagai suku pertama), lalu dikalikan 2 
  sebanyak (n - 1) kali di dalam perulangan.
}
function geometri(n: integer): longint;
var
  j: integer;
  hasil: longint;
begin
  hasil := 1;
  for j := 1 to n - 1 do
    hasil := hasil * 2;
  geometri := hasil;
end;

{ 
  SOAL 5c: Deret Kuadrat (1, 4, 9, 16, 25, ...)
  METODE PENGERJAAN:
  Suku ke-n diperoleh dengan mengalikan indeks suku (n) dengan dirinya sendiri (n * n).
  Suku 1 = 1^2 = 1, suku 2 = 2^2 = 4, suku 3 = 3^2 = 9, dan seterusnya.
}
function kuadrat(n: integer): longint;
begin
  kuadrat := n * n;
end;

{ 
  SOAL 5d: Deret Pronic / Persegi Panjang (2, 6, 12, 20, 30, ...)
  METODE PENGERJAAN:
  Suku ke-n diperoleh dari hasil kali dua bilangan bulat berurutan: n * (n + 1).
  Suku 1 = 1 * 2 = 2, suku 2 = 2 * 3 = 6, suku 3 = 3 * 4 = 12, dan seterusnya.
}
function pronic(n: integer): longint;
begin
  pronic := n * (n + 1);
end;

begin
  writeln;
  clrscr;
  write('Input: ');
  readln(n);
  writeln;

  { Menampilkan Output Deret a }
  for i := 1 to n do
  begin
    write(fibonacci(i));
    if i < n then write(', ');
  end;
  writeln;

  { Menampilkan Output Deret b }
  for i := 1 to n do
  begin
    write(geometri(i));
    if i < n then write(', ');
  end;
  writeln;

  { Menampilkan Output Deret c }
  for i := 1 to n do
  begin
    write(kuadrat(i));
    if i < n then write(', ');
  end;
  writeln;

  { Menampilkan Output Deret d }
  for i := 1 to n do
  begin
    write(pronic(i));
    if i < n then write(', ');
  end;
  writeln;

  readln;
end.
