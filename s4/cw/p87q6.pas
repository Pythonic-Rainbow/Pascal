Program s4_p87_q6;
var
    input:integer;

function is_square(cand: integer):boolean;
begin
    is_square := frac(sqrt(input)) = 0;
end;

begin
    write('Enter an integer: ');
    readln(input);
    write('Is ', input, ' a perfect square? ');
    writeln(is_square(input));
end.