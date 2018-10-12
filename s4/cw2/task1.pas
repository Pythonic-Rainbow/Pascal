Program s4_cw2_task1;
var input,i:integer;

function str(num: integer): char;
var inc:integer;
begin
    inc := 48;
    if num > 9 then
        inc := inc + 7;
    str := chr(ord(num) + inc);
end;

function convert(base,copy: integer): string;
var buff:string;
begin
    buff := '';
    while copy >= base do
    begin
        buff := buff + str(copy mod base);
        copy := copy div base;
    end;
    convert := str(copy);
    for i := length(buff) downto 1 do
        convert := convert + buff[i];
end;

procedure lazyprint(basename: string; base: integer);
begin
    writeln('The ',basename, ' number of ', input, ' is ', convert(base, input));
end;

begin
    write('Input the decimal number: ');
    readln(input);
    lazyprint('binary', 2);
    lazyprint('octal', 8);
    lazyprint('hexadecimal', 16);

end.