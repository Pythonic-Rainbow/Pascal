Program s4_hw3;
var
    a,b,c,h,i:integer;
begin
    writeln('Enter first integer');
    readln(a);
    writeln('Enter second integer');
    readln(b);
    writeln('Enter third integer');
    readln(c);
    i := a + 1;
    repeat
        i := i - 1;
    until (b mod i = 0) and (a mod i = 0) and (c mod i = 0);
    h := i;
    i := 0;
    repeat
        i := i + 1;
    until (a * i mod b = 0) and (a * i mod c = 0);
    writeln('HCF: ' , h , ' LCM: ' , i*a);
end.