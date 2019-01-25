Program cw5;
uses crt, sysutils;

var
    pos: array[1..3, 1..3] of char;
    i,j: integer;
    rep,round: boolean;
    u1,u2,c: char;
    color1, color2: Byte;
    input: String;

procedure getUserInput(xo : boolean);
var bo:boolean;
    turn : string;
begin
    bo := True;
    turn := 'Player ';
    if xo then
        writeln(turn + u1)
    else writeln(turn + u2);
    while bo do
    begin
        write('Enter the column ');
        readln(i);
        write('Enter the row ');
        readln(j);
        if pos[i,j] = ' ' then begin
            if xo then
                pos[i,j] := u1
            else
                pos[i,j] := u2;
            bo := False;
            end
        else writeln('The box has data in it! Please select another box');
    end
end;

procedure printb();
begin
    for i := 1 to 3 do begin
        for j := 1 to 3 do
            write(pos[i,j] + '|');
        writeln;
        writeln('======');
        end;
end;

function check() : boolean;
begin
    check := True;
        for i := 1 to 3 do
            if (pos[i,1] = pos[i,2]) and (pos[i,2] = pos[i, 3]) and (pos[i,1] <> ' ') then check:=False
            else if (pos[1,i] = pos[2,i]) and (pos[2,i] = pos[3,i]) and (pos[1,i] <> ' ') then check:=False;
        if (pos[1,1] = pos[2,2]) and (pos[2,2] = pos[3,3]) and (pos[1,1] <> ' ') then check:=False
        else if (pos[3,1] = pos[2,2]) and (pos[2,2] = pos[1,3]) and (pos[2,2] <> ' ') then check:=False;
end;


begin
    write('Select symbol for Player 1: ');
    readln(u1);
    write('Input character for color 1: ');
    readln(input);
    color1 := Byte(input[0]);
    write('Select symbol for Player 2: ');
    readln(u2);
    write('Input charater for color 2: ');
    readln(input);
    color2 := Byte(input[0]);
    rep:= True;
    round:= True;
    repeat
        for i := 1 to 3 do
            for j := 1 to 3 do
                pos[i,j] := ' ';
        repeat
            printb();
            if round then begin
                round := False;
                TextColor(color1);
                getUserInput(round);
            end else begin
                round := True;
                TextColor(color2);
                getUserInput(round);
                end;
        until not check();
        printb();
        write('Continue? (Y/N)');
        readln(c);
        writeln('Completed!');
        readln(c);
        if c = 'N' then rep := False;
    until (not rep);
end.
