Program Soal6;
uses crt;

var
    tugas, uts, uas, hadir, akhir : real;
    indeks : char;
    lulus  : boolean;

begin
    clrscr;
    writeln('=== PENENTUAN NILAI AKHIR ===');
    write('Nilai Tugas: ');
    readln(tugas);
    write('Nilai UTS: ');
    readln(uts);
    write('Nilai UAS: ');
    readln(uas);
    write('Kehadiran (%): ');
    readln(hadir);

    if (tugas < 0) or (tugas > 100) or (uts < 0) or (uts > 100) or
        (uas < 0) or (uas > 100) or (hadir < 0) or (hadir > 100) then
    begin
        writeln('Semua masukan harus di antara 0 sampai 100!');
        readln;
        exit;
    end;

    akhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);
    lulus := (akhir >= 60) and (hadir >= 80);

    if akhir >= 85 then
        indeks := 'A'
    else if akhir >= 75 then
        indeks := 'B'
    else if akhir >= 60 then
        indeks := 'C'
    else if akhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

    writeln;
    writeln('=== HASIL ===');
    writeln('Nilai Akhir: ', akhir:0:2);
    writeln('Indeks: ', indeks);
    writeln('Kehadiran: ', hadir:0:2, '%');
    if lulus then
        writeln('Status: LULUS')
    else
        writeln('Status: TIDAK LULUS');
end.