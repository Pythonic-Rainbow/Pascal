Program s4_hw7;
uses sysutils;

type
    Phone = record
            first_name: string;
            last_name: string;
            isMale: boolean;
            no: string;
            end;
var
    database: array[1..32767] of Phone;
    datafile: file of Phone;
    func: char;
    i: integer;

procedure read_book;
begin
    writeln('Opening file...');
    
    reset(datafile);
    writeln('File opened, reading database...');
    while not eof(datafile) do begin
        i := i + 1;
        read(datafile, database[i]);
    end;
    writeln(i, ' entries read.');
    CloseFile(datafile);
end;

function get_book() : Phone;
var add: Phone;
    sex: char;
begin
    repeat
    writeln('Add a phone number??? Fine. (why tho)');
    write('Enter first name: ');
    readln(add.first_name);
    //TODO: if exist then edit
    write('Enter last name: ');
    readln(add.last_name);
    write('Male???(M) ');
    readln(sex);
    if sex = 'M' then
        add.isMale = true
    else add.isMale = false;
    write('Last but not least, number: ');
    readln(no);
    writeln;
    write('Are you sure you want to write the following to the database?(Y)');
    write('FirstName: ',add.first_name, ' LastName: ',add.last_name, ' isMale: ', add.isMale, ' Number: ', add.no, ' ');
    readln(sex);
    until sex = 'Y';
    get_book := add; // Prevent memory violation
end;

function get_index(first: string) : integer;
var j : integer;
begin
    get_index := 0;
    for j := 1 to i do
        if database[i].first_name = first then begin
            get_index = j;
            j := 32767;
        end;
end;

//TODO
procedure edit_book();

procedure write_book:
var j : integer;
begin
    AssignFile(datafile, 'phone.book');
    writeln('Writing database... ');
    for j := 1 to i do begin
        write(datafile, database[i]);
    end;
    writeln('Written ',j,' entries');
    CloseFile(datafile);
    writeln('Calling read_book() to refresh database');
    read_book();
end;

procedure add_book;
begin
    if i < 32767 then begin
        database[i+1] := get_book();
        write_book();
    end else writeln('ERROR! Database reached maximum size!');
end;

// Main
begin
    if not FileExists('phone.book') then begin
        writeln('New user duh, no phone.book duh, creating new file duh ¯\_(ツ)_/¯');
        FileCreate('phone.book');
    end;
    AssignFile(datafile, 'phone.book');
    i := 0;
    read_book();
    repeat
        writeln('Menu');
        writeln('------------');
        writeln('1. Add');
        writeln('2. Edit');
        writeln('3. Delete');
        writeln('4. Search');
        writeln('5. View');
        writeln('6. Exit');
        write('Input: ');
        readln(func);
        case func of
            1: add_book;
        else
            writeln('Please re-enter!');
    until (char = 6);
end.