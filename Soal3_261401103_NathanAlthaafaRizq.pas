Program Soal3;
uses crt;
var 
    i, n, pilihan : integer;

begin
    clrscr;
    write('Masukan nilai: ');
    readln(n);
    writeln('Pilih Kategori Deret: ');
    writeln('[1] Ganjil');
    writeln('[2] Genap');
    write('Pilihan [1/2]: ');
    readln(pilihan);

    if (pilihan <> 1) and (pilihan <> 2) then
    begin
        writeln('Pilihan tidak valid!');
        readln;
        exit;
    end;

    writeln;
    writeln('Hasil deret:');

    i := 0;
    while i < n do
    begin
        i := i + 1;
        if (pilihan = 1) and (i mod 2 = 0) then
        continue;
        if (pilihan = 2) and (i mod 2 = 1) then
        continue;
        if i mod 5 = 0 then
        continue;

        write(i, ' ');
    end;
end.