Program cw6_read;
var
    f:text;
    s:string;

begin
    assign(f, 'odd.txt');
    reset(f);
    while not eof(f) do begin
        readln(f , s);
        writeln(s);
    end;
end.