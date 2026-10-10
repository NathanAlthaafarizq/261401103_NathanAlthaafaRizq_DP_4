Program Soal1;
uses crt;
var 
    i, n, persen : integer;
    x, total, totalsemua : real;

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
        persen := 0;
        totalsemua := total;
        writeln('Anda Tidak Mendapatkan Diskon');
        end
    else if total < 500000 then
        begin
        persen := 10;
        totalsemua := total - (total * persen / 100);
        writeln('Anda Mendapatkan Diskon 10%');
        end
    else
        begin
        persen := 20;
        totalsemua := total - (total * persen / 100);
        writeln('Anda Mendapatkan Diskon 20%');
        end;

    writeln('=== RINCIAN BELANJA ANDA ===');
    writeln('Total Belanja: '      , n);
    writeln('Total Sebelum Diskon:', total:0:2);
    writeln('Besar Diskon:'        , persen, '%');
    writeln('Total Belanja Akhir: ', totalsemua:0:2);
end.


