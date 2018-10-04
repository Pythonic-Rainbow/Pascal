Program s4_mastermind;
var
    data: TextFile;
    name: array[1..32767] of string;
    marks: array[1..32767] of integer;
    iterator: integer;
    ans, guess: array[1..4] of integer;
    stdin: string;

// READ THE FILE LIKE RAW BECAUSE NO LIBS ARE ALLOWED
procedure readfile();
begin
    iterator := 0;
    reset(data);
    while not eof(data) do
    begin
        iterator := iterator + 1;
        readln(data, name[iterator]);
        readln(data, marks[iterator]);
    end;
end;

// GAME WRAPPER
procedure game();
begin
    for iterator := 1 to 4 do
        repeat
            ans[iterator] = random(9) + 1;
        until (ans[1] <> ans[2] <> ans[3] <> ans[4]);
    write('Enter guess :');
    readln(stdin);
    for iterator := 1 to 4 do
        guess[iterator] := stdin[iterator];
    


end;

//ENTRY POINT
begin
    AssignFile(data, '.dat');
    readfile();
    game();
end.
