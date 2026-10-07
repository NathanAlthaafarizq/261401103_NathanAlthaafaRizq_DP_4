Program Soal1;
uses crt;
var 
    i, n : integer;
    x, total : real;

begin
    clrscr;
    total := 0;
    writeln('===== DAFTAR BELANJA TOKO BUKU =====');
    write('Masukan total belanjaan anda: ');
    readln(n);

    for i := 1 to n do
    begin
        write('Masukan harga barang ke -', i, ':');
        readln(x);
        total := total + x;
    end;
    if total < 100000 then
        begin
        total := total;
        writeln('Anda Tidak Mendapatkan Diskon');
        end
    else if total < 500000 then
        begin
        total := total - (total * 0.1);
        writeln('Anda Mendapatkan Diskon 10%');
        end
    else
        begin
        total := total - (total * 0.2);
        writeln('Anda Mendapatkan Diskon 20%');
        end;

    writeln('Total Belanja Akhir: ', total:0:2);
end.


