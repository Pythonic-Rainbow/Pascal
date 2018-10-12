Program s4_hw4_palindrome;
var input:string;
    palin:boolean;
    i:integer;
begin
    write('Input sentence: ');
    readln(input);
    i := 1;
    palin := true;
    while palin and (i <= length(input) / 2) do
    begin
        palin := input[i] = input[length(input) + 1 - i];
        i := i + 1;
    end;
    if palin then
        writeln('Your sentence is a palindrome!')
    else
        writeln('Your sentence is not a palindrome!');
end.