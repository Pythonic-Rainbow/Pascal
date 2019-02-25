Program hw6;
var
    fname,lname:array [1..32767] of string;
    sex:array [1..32767] of char;
    phone:array [1..32767] of string[8];
    input: string;
    f: text;
    i,o,u: integer;
begin
    input := 'Y';
    Assign(f, '.dat');
    writeln('Reading database...');
    i := 0;
    reset(f);
    while not eof(f) do begin
        i := i + 1;
        readln(f, fname[i]);
        readln(f, lname[i]);
        readln(f, sex[i]);
        readln(f, phone[i]);
    end;
    writeln(i, ' entries found.');
    close(f);
    writeln;
    writeln('Menu');
    writeln('-----------');
    writeln('1. Input');
    writeln('2. List out');
    readln(input);
    if input = '1' then begin
        o := i;
        repeat
            i := i + 1;
            write('First name: ');
            readln(fname[i]);
            write('Last name: ');
            readln(lname[i]);
            write('Sex: ');
            readln(sex[i]);
            write('Phone: ');
            readln(phone[i]);
            write('Continue? [Y/N]');
            readln(input);
        until (c <> 'Y') and (c <> 'y');
        writeln('There are ',i,' entries in the buffer now. (Original: ',o,')');
        writeln('Writing buffer to database...');
        rewrite(f);
        for u := 1 to i do begin
              writeln(f, fname[i]);
              writeln(f, lname[i]);
              writeln(f, sex[i]);
              writeln(f, phone[i]);
        end;
        writeln('Wrote ',u,' entries.');
        close(f);
    end else begin
        for u := 1 to i do begin
            writeln(u,'.');
            writeln('First Name: ',fname[i]);
            writeln('Last Name: ',lname[i]);
            writeln('Sex: ',sex[i]);
            writeln('Phone: 'phone[i]);
            writeln;
        end;
    end;
end.