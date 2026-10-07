Program Soal8;
uses crt;

var
    golongan: char;
    jamKerja, jamLembur: integer;
    gajiPokok, lembur, bonus, total : longint;
    valid: boolean;

begin
    clrscr;
    writeln('=== PERHITUNGAN GAJI KARYAWAN ===');
    writeln('Golongan: A | B | C');
    write('Golongan karyawan: ');
    readln(golongan);
    write('Total jam kerja/minggu: ');
    readln(jamKerja);

    if jamKerja < 0 then
    begin
        writeln('Jam kerja tidak boleh negatif!');
        readln;
        exit;
    end;

    valid := true;
    gajiPokok := 0;


    case upcase(golongan) of
        'A': gajiPokok := 1500000;
        'B': gajiPokok := 2000000;
        'C': gajiPokok := 2500000;
    else
        valid := false;
    end;

    if not valid then
    begin
        writeln;
        writeln('Golongan tidak valid!');
        readln;
        exit;
    end;

    if jamKerja > 40 then
        jamLembur := jamKerja - 40
    else
        jamLembur := 0;
    lembur := jamLembur * 20000;
    bonus := 0;
    if (upcase(golongan) = 'C') and (jamKerja > 50) then
        bonus := 100000;

    total := gajiPokok + lembur + bonus;

    writeln;
    writeln('=== RINCIAN GAJI ===');

    writeln('Golongan: ', upcase(golongan));
    writeln('Total jam kerja: ', jamKerja, ' jam');
    writeln('Jam lembur: ', jamLembur, ' jam');
    writeln('Gaji Pokok: Rp', gajiPokok);
    writeln('Lembur: Rp', lembur);
    writeln('Bonus: Rp', bonus);
    writeln('Total Gaji Akhir: Rp', total);
end.