Program s4_hw2;
var
    name,p: string;
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
    readln(p);
    for i := 1 to 8 do
        ID[i] := p[i];
    d := (ord(ID[1]) - 64) * 8;
    for i := 2 to 8 do
        d := d + (ord(ID[i]) - 48) * (9 - i);
    if ID[8] = 'A' then
        d := d - 6;
    //Fixes captial error
    for i := 1 to length(name) do
        if (ord(name[i]) >= 96) and (ord(name[i]) <= 123) then
            name[i] := chr(ord(name[i]) - 32);
    //Prepends gender prefix
    if (sex = 'm') or (sex = 'M') then
        name := 'Mr. ' + name
    else
        name := 'Miss ' + name;
    //Calculate check digit
    i := d mod 11;
    if i = 0 then
        sex := ID[8];
    //Display result
    if sex = ID[8] then
        writeln(name + ' has entered a valid HKID no.')
    else
        writeln(name + ' has entered an invalid HKID no.');
    write('Continue (Y/N) ? ');
    readln(sex);
    if sex = 'Y' then
        c := true;
    until not c;  
end.