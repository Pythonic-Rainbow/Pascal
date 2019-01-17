Program cw5;
var
    pos: array[1..3, 1..3] of char;
    i,j: integer;
    rep,round: boolean;

procedure getUserInput(xo : boolean;)
var a,b:integer;
    bo : boolean;
    turn : string;
begin
    bo := True;
    turn := "Player ";
    if bo then
        writeln(turn + 'X')
    else writeln(turn + 'O');
    while bo do
    begin
        write('Enter the row ');
        readln(a);
        write('Enter the column ');
        readln(b);
        if pos[i,j] = '' then
            if xo then
                pos[i,j] := 'X'
            else
                pos[i,j] := 'O'
            bo := False;
        else writeln('The box has data in it! Please select another box')
    end
end;

procedure printb()
begin
    for i := 1 to 3 do begin
        for j := 1 to 3 do
            write(pos[i,j] + '|');
        writeln;
        writeln('=':0:6);
        end;
end;

function check() : boolean
begin
    check := True;
    while check do begin
        for i := 1 to 3 do
            if (pos[i,1] = pos[i,2]) and (pos[i,2] = pos[i, 3]) then check:=False
            else if (pos[1,i] = pos[2,i]) and (pos[2,i] = pos[3,i]) then check:=False
        if (pos[1,1] = pos[2,2]) and (pos[2,2] = pos[3,3]) then check:=False
        else if (pos[3,1] = pos[2,2]) and (pos[2,2] = pos[1,3]) then check:=False;
        for i := 1 to 3 do
            for j := 1 to 3 do
                if pos[i,j] = '' then check := True;
end;


begin
    rep,round := True;
    repeat
        for i := 1 to 3 do
            for j := 1 to 3 do
                pos[i,j] := '';
        repeat
            printb();
            if round then begin
                round := False
                getUserInput(round)
            end else begin
                round := True
                getUserInput(round);
        until not check();
        writeln('Completed!');
    until not rep;
end;