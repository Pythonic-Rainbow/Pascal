Program s4_cw2_random;
var
    ans,min,max,guess: integer;
begin
    ans := random(100) + 1;
    min := 0;
    max := 100;
    repeat
        writeln('(',min,'-',max,')');
        write('Please guess a number: ');
        readln(guess);
        if guess > ans then
            max := guess;
        else
            min := guess;
    until guess = ans;
    writeln('Bingo!!!');
end.