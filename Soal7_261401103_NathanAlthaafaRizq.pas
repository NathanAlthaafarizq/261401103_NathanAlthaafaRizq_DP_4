Program Soal7;
uses crt;

var
    kode : char;
    lama : integer;
    tarif : longint;
    namaKendaraan : string;
    valid : boolean;

begin
    clrscr;
    writeln('=== TARIF PARKIR ===');
    writeln('M = Mobil | K = Motor | B = Bus');
    write('Kode kendaraan: ');
    readln(kode);
    write('Lama parkir (jam): ');
    readln(lama);

    if lama < 1 then
    begin
        writeln('Lama parkir minimal 1 jam!');
        readln;
        exit;
    end;

    valid := true;
    tarif := 0;

    case upcase(kode) of
        'M': begin
                namaKendaraan := 'Mobil';
                if lama > 10 then
                    tarif := 30000
                else
                     tarif := 5000 + (lama - 1) * 3000;
            end;
        'K': begin
                namaKendaraan := 'Motor';
                if lama > 10 then
                    tarif := 10000
                else
                     tarif := 2000 + (lama - 1) * 1000;
            end;
        'B': begin
                namaKendaraan := 'Bus';
                if lama > 10 then
                    tarif := 50000
                else
                     tarif := 10000 + (lama - 1) * 5000;
            end;
    else
        valid := false;
    end;

    writeln;
    if not valid then
        writeln('Kode kendaraan tidak valid!')
    else
    begin
        writeln('Kendaraan: ', namaKendaraan);
        writeln('Lama parkir: ', lama, ' jam');
        if lama > 10 then
            writeln('Keterangan: Tarif maksimal flat');
        writeln('Total tarif: Rp', tarif);
    end;
end.