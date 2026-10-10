Program Soal5;
uses crt;

var
    m, n, i, j, lulus, tidakLulus : integer;
    nilai, jumlah, rata : real;  

begin
    clrscr;
    lulus := 0;
    tidakLulus := 0;

    write('Masukkan jumlah mahasiswa: ');
    readln(m);
    write('Masukkan jumlah tugas: ');
    readln(n);

    if (m < 1) or (n < 1) then
    begin
        writeln('Jumlah mahasiswa dan jumlah tugas harus lebih dari 0!');
        readln;
        exit;
    end;

    writeln;
    for i := 1 to m do
    begin
        writeln('--- Mahasiswa ke-', i, ' ---');
        jumlah := 0;

        for j := 1 to n do
        begin
            write('Nilai tugas ', j, ': ');
            readln(nilai);
            jumlah := jumlah + nilai;
        end;

        rata := jumlah / n;
        write('Rata-rata: ', rata:0:2, ' -> ');

        if rata >= 65 then
        begin
            writeln('LULUS');
            lulus := lulus + 1;
        end
        else
        begin
            writeln('TIDAK LULUS');
            tidakLulus := tidakLulus + 1;
        end;
        writeln;
    end;

    writeln('=== REKAPITULASI ===');
    writeln('Total mahasiswa LULUS       : ', lulus);
    writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.
