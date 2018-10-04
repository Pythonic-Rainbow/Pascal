Program s4_hw4;
var
    count: array ['A'..'F'] of integer;
    mark:array [1..10] of integer;
    i : integer;
    c : char;
begin
    for c := 'A' to 'F' do
        count[c] := 0;
    for i := 1 to 10 do
    begin
        write('Mark ',i,' :');
        readln(mark[i]);
        case mark[i] of
            0..50: count['F'] := count['F'] + 1;
            51..60: count['E'] := count['E'] + 1;
            61..70: count['D'] := count['D'] + 1;
            71..80: count['C'] := count['C'] + 1;
            81..90: count['B'] := count['B'] + 1;
            91..100: count['A'] := count['A'] + 1;
        end;
    end;
    for c := 'F' downto 'A' do
    begin
        write(c,':');
        for i := 1 to count[c] do
            write('*');
        write('(',count[c],')');
        writeln;
    end;
end.