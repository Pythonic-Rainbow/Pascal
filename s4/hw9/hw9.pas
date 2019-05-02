Program hw9;
var arrays, copy: array[1..32767] of String;
    target: String;
    f: TextFile;
    i,lin: Integer;

function linear() : Integer;
begin
    linear := 0;
    repeat
        linear := linear + 1;
    until target = arrays[linear];
end;

{TODO: Sort first, haven't done sort yet}
{https://en.wikipedia.org/wiki/Binary_search_algorithm#Alternative_procedure}
function binary() : integer;
var l,r,m: integer;
begin
    binary := 0;
    l := 1;
    r := i;
    while l <= r do begin
        m := (l + r) div 2;
        if m < lin then
            l := m + 1
        else if m > lin then
            r := m - 1
        else l := r + 1;
        binary := binary + 1;
    end;    
end;


begin
    assign(f, 'name.txt');
    reset(f);
    i := 1;
    while not eof(f) do begin
        readln(f, arrays[i]);
        i := i + 1;
    end;
    close(f);
    write('Input target name ');
    readln(target);
    writeln('========');
    lin := linear();
    writeln('Linear: ', lin);
    writeln('Binary: ', binary());
end.