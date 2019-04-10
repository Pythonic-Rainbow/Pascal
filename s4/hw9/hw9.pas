Program hw9;
var arrays, copy: array[1..32767] of String;
    target: String;
    f: TextFile;
    i: Integer;

function linear() : Integer;
begin
    linear := 0;
    repeat
        linear := linear + 1;
    until arrays[linear] = target;
end;

{TODO: Sort first, haven't done sort yet}
{https://en.wikipedia.org/wiki/Binary_search_algorithm#Alternative_procedure}
function binary() : integer;
var l,r,m : integer;
begin
    l := 0;
    r := 32766;
    m := (l + r) div 2;
end;


begin
    assign(f, 'array.list');
    reset(f);
    i := 1;
    while not eof(f) do begin
        readln(f, arrays[i]);
        i := i + 1;
    end;
    close(f);
    write('Input target name');
    readln(target);
    writeln('========');
    writeln('Linear: ', linear());
end.