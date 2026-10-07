Program Soal10;
uses crt;

var
    day : integer;
    NamaHari : string;

begin
    clrscr;
    writeln('=== MENAMPILKAN NAMA HARI ===');
    write('Masukan Nomor Hari [1 - 7]: ');
    readln(day);

    if (day < 1) or (day > 7) then
    begin
        writeln('Nomor Hari Tidak Diketahui!');
        readln;
        exit;
    end;

    case day of
        1 : NamaHari := 'Senin';
        2 : NamaHari := 'Selasa';
        3 : NamaHari := 'Rabu';
        4 : NamaHari := 'Kamis';
        5 : NamaHari := 'Jumat';
        6 : NamaHari := 'Sabtu';
        7 : NamaHari := 'Minggu';
    end;

    writeln;
    writeln('=== HASIL ===');
    writeln('Hari ', NamaHari);
end.
