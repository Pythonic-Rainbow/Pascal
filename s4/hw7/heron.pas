Program Heron;
var a,b,c,area: integer;

function getUserInput(c: char) : integer;
begin
    write('Input value of ',c);
    readln(getUserInput);
end;

procedure getAreaByHeron(a,b,c: integer;var Area: integer);
var s : real;
begin
    s := (a+b+c) / 2;
    Area := sqrt(S * (S - A) * (S - B) * (S - C));
end;

begin
   a := getUserInput('a');
   b := getUserInput('b');
   c := getUserInput('c');
   getAreaByHeron(a,b,c,area);
   writeln('Area = ',area);
end.