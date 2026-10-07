Program Soal9;
uses crt;

var
    year, month, day : integer;
    kabisat : boolean;
    NamaBulan : string;

begin
    clrscr;
    writeln('=== PENENTUAN BULAN ===');
    write('Masukan Tahun: ');
    readln(year);
    write('Masukan Nomor Bulan [1 - 12]: ');
    readln(month);

    if (month < 1) or (month > 12) then
    begin
        writeln('Nomor Bulan Tidak Diketahui!');
        readln;
        exit;
    end;

    kabisat := (year mod 400 = 0) or (year mod 4 = 0) and (year mod 100 <> 0);
    case month of
        1,3,5,7,8,10,12 : day := 31;
        4,6,9,11 : day := 30;
        2 : begin
            if kabisat then
            day := 29
            else
            day := 28;
            end;
        end;
    case month of
        1 : NamaBulan := 'Januari';
        2 : NamaBulan := 'Febuari';
        3 : NamaBulan := 'Maret';
        4 : NamaBulan := 'April';
        5 : NamaBulan := 'Mei';
        6 : NamaBulan := 'Juni';
        7 : NamaBulan := 'Juli';
        8 : NamaBulan := 'Agustus';
        9 : NamaBulan := 'September';
        10 : NamaBulan := 'Oktober';
        11 : NamaBulan := 'November';
        12 : NamaBulan := 'Desember';
    end;

    writeln;
    writeln('=== HASIL ===');
    write('Tahun ', year, ' : ');
    if kabisat then
        writeln('Tahun Kabisat')
    else
        writeln('Bukan Tahun Kabisat');
    writeln('Bulan ', NamaBulan, ' Tahun ', year, ' memiliki ', day, ' hari');
end.
