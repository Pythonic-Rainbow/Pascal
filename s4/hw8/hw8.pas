Program hw8;
var
    mainloop:char;
    fname, lname:array[1..32767] of string;
    phone: array[1..32767] of string[8];
    dat: TextFile;
    pointer: integer;

procedure readFile();
begin
    assign(dat, 'phone.dat');
    reset(dat);
    pointer := 1;
    while not eof(dat) do begin
        readln(dat, fname[pointer]);
        readln(dat, lname[pointer]);
        readln(dat, phone[pointer]);
    end;
    writeln('Read ',pointer-1, 'entries.');
    close(dat);
end;

function getIndex(first:string) : integer;
var i : integer;
begin
    getIndex := 0;
    for i := 1 to pointer do
        if fname[i] = first then getIndex := i;
end;

procedure append(first:string; last:string; fone:string);
begin
    rewrite(dat);
    pointer := pointer + 1;
    fname[pointer] := first;
    lname[pointer] := last;
    phone[pointer] := fone;
end;


procedure addData();
var first,last:string;
    fone:string[8];
    index:integer;
begin
    write('New first name: ');
    readln(first);
    index := getIndex(first);
    if index = 0 then begin
        write('New last name: ');
        readln(last);
        write('New phone number: ');
        readln(fone);
        append(first, last, fone);
    end else writeln('Duplicated First name at ', index);
end;

procedure menu();
var menuinput:char;
begin
    writeln('Menu');
    writeln('---------');
    writeln('1.Add data');
    readln(menuinput);
    case menuinput of
        '1': addData();
    else writeln('Unknown input!(1-6)');
end;

begin
    repeat
        readFile();
        menu();
        writeln('Do you still want to continue? (y/n)');
    until mainloop = 'n';
end.