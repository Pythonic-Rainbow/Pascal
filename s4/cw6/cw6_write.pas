Program cw6_write;
var
    f: text;
    i: integer;

begin
    Assign(f, 'odd.txt');
    rewrite(f);
    for i := 0 to 49 do
        writeln(f, i * 2 + 1);
    close(f);
end.