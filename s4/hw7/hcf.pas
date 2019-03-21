Program FindHCF;
var
    a,b,c,r: integer;

Procedure set(var v: integer);
begin
    write('Enter the value: ');
    readln(v);
end;

Procedure findHcf(num1, num2, num3: integer; var hcf: integer);
var i,s : integer;
begin
    hcf := 0;
    if num2 < num3 then
        if num1 < num2 then
            s := num1
        else s := num2
    else s := num3;
    repeat
        if (s mod num3 = 0) and (s mod num2 = 0) and (s mod num1 = 0) then
            hcf := s;
        else s := s - 1;
    until (hcf > 0);
end;

begin
    set(a);
    set(b);
    set(c);
    findHcf(a,b,c,r);
    writeln('The HCF is ',r);
end.