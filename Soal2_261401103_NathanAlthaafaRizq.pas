Program Soal2;
uses crt;

const 
    password = 'pascal123';
    maxpercobaan = 3;
var 
    x : string;
    percobaan : integer;
    status : boolean;
    
begin
    clrscr;
    percobaan := 0;
    status := false;

    repeat
        percobaan := percobaan + 1;
        write('Masukkan Password [Percobaan ', percobaan, ' dari ', maxpercobaan, ']: ');
        readln(x);

        if x = password then
        begin
            writeln('Login Berhasil! Selamat Datang');
            status := true;
            break;
        end
        else if percobaan < maxpercobaan then
        begin
            writeln('Kata Sandi Salah, Tersisa ', maxpercobaan - percobaan, ' dari ', maxpercobaan);
        end;
    until percobaan = maxpercobaan;
    if not status then
    writeln('Akses Ditolak! Akun Terkunci.');
end.


