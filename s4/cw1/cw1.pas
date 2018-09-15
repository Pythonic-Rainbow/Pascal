Program s4_cw1;
var name:string;
    i:integer;

begin
    write('Enter your name : ');
    readln(name);
    if (ord(name[1]) >= 96) and (ord(name[1] <= 123)) then
        name[1] := chr(ord(name[1]) - 32);
    for i := 2 to length(name) do
    begin
        if (ord(name[i]) >= 96) and (ord(name[i] <= 123)) and (name[i-1] = ' ') then
            name[i] := chr(ord(name[i]) - 32)
        else if (ord(name[i]) >= 65) and (ord(name[i] <= 90)) then
            name[i] := chr(ord(name[i]) + 32);
    end;
    writeln('Hello, ', name);
end.