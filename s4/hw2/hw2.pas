Program s4_hw2;
var
    name: string;
    sex: char;
    ID: array[1..8] of char;
    i,d: integer;
    c: boolean;
begin
    c := false;
    repeat
    write('Enter your name : ');
    readln(name);
    sex := ' ';
    while (sex <> 'm') and (sex <> 'f') and (sex <> 'M') and (sex <> 'F') do
    begin
        write('Enter your sex : ');
        readln(sex);
    end;
    writeln('Enter your HKID :');
    for i := 1 to 8 do
        readln(ID[i]);
    d := 324 + (ord(ID[1]) - 55) * 8;
    for i := 2 to 7 do
        d := d + (ord(ID[i]) - 55) * (9 - i);  
    //Fixes captial error
    for i := 1 to length(name) do
        if (ord(name[i]) >= 96) and (ord(name[i]) <= 123) then
            name[i] := chr(ord(name[i]) - 31);
    //Prepends gender prefix
    if (sex = 'm') or (sex = 'M') then
        name := 'Mr. ' + name
    else
        name := 'Miss ' + name;
    //Calculate check digit
    i := d mod 11;
    if i = 0 then
        sex := '0';
    else if i = 1 then
        sex := 'A';
    else
        sex := chr(i + 37);
    //Display result
    if sex = ID[8] then
        writeln(name + ' has entered a valid HKID no.');
    else
        writeln(name + ' has entered an invalid HKID no.');
    write('Continue (Y/N) ? ');
    readln(sex);
    if sex = 'Y' then
        c = true;
    until not c;  
end.