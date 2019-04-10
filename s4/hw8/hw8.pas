Program hw8;
var
    mainloop:char;
    fname, lname:array[1..32767] of string;
    phone: array[1..32767] of string[8];
    dat: TextFile;
    pointer: integer;

procedure readFile();
begin
    reset(dat);
    pointer := 0;
    while not eof(dat) do begin
        pointer := pointer + 1;
        readln(dat, fname[pointer]);
        readln(dat, lname[pointer]);
        readln(dat, phone[pointer]);      
    end;
    writeln('Read ',pointer, ' entries.');
    close(dat);
end;

function getIndex(first:string) : integer;
var i : integer;
begin
    getIndex := 0;
    for i := 1 to pointer do
        if fname[i] = first then getIndex := i;
end;

procedure writeFile();
var i : integer;
begin
    rewrite(dat);
    i := 0;
    repeat
        i := i + 1;
        writeln(dat, fname[i]);
        writeln(dat, lname[i]);
        writeln(dat, phone[i]);     
    until i = pointer;
    close(dat);
    writeln('Written ', i, ' datasets');
end;

procedure addPhone(first:string; last:string; fone:string);
begin
    pointer := pointer + 1;
    fname[pointer] := first;
    lname[pointer] := last;
    phone[pointer] := fone;
    writeFile();
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
        addPhone(first, last, fone)
    end else writeln('Duplicated First name at ', index);
end;

procedure amendData();
var i : integer;
    f:string;
begin
    write('Enter first name to amend ');
    readln(f);
    i := getIndex(f);
    if i <> 0 then begin
        write('New last name: ');
        readln(lname[i]);
        write('New phone number: ');
        readln(phone[i]);
        writeFile();
    end else writeln('Entry not found!');
end;

procedure searchData();
var i : integer;
    f:string;
begin
    write('Enter first name to amend ');
    readln(f);
    i := getIndex(f);
    if i <> 0 then begin
        writeln('Index: ', i);
        writeln('Name: ', fname[i] , ' ' , lname[i]);
        writeln('Phone number: ', phone[i]);
    end else writeln('Entry not found!');
end;

procedure viewAll();
var i : integer;
begin
    for i := 1 to pointer do begin
        writeln('Name: ', fname[i] , ' ' , lname[i]);
        writeln('Phone number: ', phone[i]);
        writeln('================');
    end;
end;

procedure deleteData();
var i : integer;
    f:string;
begin
    write('Enter first name to delete ');
    readln(f);
    i := getIndex(f);
    if i <> 0 then begin
        repeat
            fname[i]:=fname[i+1];
            lname[i]:=lname[i+1];
            phone[i]:=phone[i+1];
            i := i + 1;
        until i = pointer;
        pointer := pointer - 1;
        writeFile();
    end;
end;

procedure menu();
var menuinput:char;
begin
    writeln('Menu');
    writeln('---------');
    writeln('1.Add data');
    writeln('2.Amend data');
    writeln('3.Delete data');
    writeln('4.Search data');
    writeln('5.View all');
    readln(menuinput);
    case menuinput of
        '1': addData();
        '2': amendData();
        '3': deleteData();
        '4': searchData();
        '5': viewAll();
    else writeln('Unknown input!(1-5)');
    end;
end;

begin
    assign(dat, 'phone.dat');
    repeat
        readFile();
        menu();
        write('Do you still want to continue? (y/n) ');
        readln(mainloop);
    until mainloop = 'n';
end.