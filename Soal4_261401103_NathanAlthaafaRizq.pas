Program Soal4;
uses crt;
var 
    pilihan : integer;
    a, b : real;
    status : char;
    x, y : longint;

begin
repeat
    clrscr;
    writeln('=== Kalkulator Sederhana ===');
    writeln('[1] Penjumlahan');
    writeln('[2] Pengurangan');
    writeln('[3] Perkalian');
    writeln('[4] Pembagian Real');
    writeln('[5] DIV & MOD');
    write('Pilihan Operasi [1/5]: ');
    readln(pilihan);

    if (pilihan < 1) or (pilihan > 5) then
        writeln('Pilihan tidak valid!')
    else
        begin
        writeln;
        if pilihan = 5 then
        begin
            write('Masukan bilanga bulat pertama: ');
            readln(x);
            write('Masukan bilangan bulat kedua: ');
            readln(y);
        end
        else
        begin
            write('Masukan angka pertama: ');
            readln(a);
            write('Masukan angka kedua: ');
            readln(b);
        end;

    writeln;
    case pilihan of
        1 : writeln('Hasil Penjulmahan: ', a:0:2, ' + ', b:0:2, ' = ', a + b:0:2);
        2 : writeln('Hasil Pengurangan: ',a:0:2, ' - ', b:0:2, ' = ', a - b:0:2);
        3 : writeln('Hasil Perkalian: ',a:0:2, ' * ', b:0:2, ' = ', a * b:0:2);
        4 : begin
            if b = 0 then
                writeln('Pembagian tidak bisa dilakukan!')
            else
                writeln('Hasil Pembagian real: ',a:0:2, ' / ', b:0:2, ' = ', a / b:0:2);
            end;
        5 : begin
            if y = 0 then
                writeln('Pembagian tidak bisa dilakukan!')
            else
            begin
                writeln('Hasil DIV: ', x, ' DIV ', y,' = ', x div y);
                writeln('Hasil MOD: ', x, ' MOD ', y,' = ', x mod y);
            end;
        end;
    end;
end;

writeln;
    repeat
        write('Apakah kamu ingin melakukan perhitungan status? [Y/T]: ');
        readln(status);
    until status in ['Y', 'y', 'T', 't'];
until (status = 'T') or (status = 't');

    writeln('Terima Kasih!');
end.