Program s4_p148q2;
var
    switch,num1,num2: integer;
begin
    writeln('1. Addition');
    writeln('2. Subtraction');
    writeln('3. Multiplication');
    writeln('4. Division');
    write('Enter your choice (1-4): ');
    readln(switch);
    write('Enter two numbers: ');
    readln(num1, num2);
    case switch of
        1: writeln(num1, ' + ', num2, ' = ', num1+num2);
        2: writeln(num1, ' - ', num2, ' = ', num1-num2);
        3: writeln(num1, ' * ', num2, ' = ', num1*num2);
        4: writeln(num1, ' / ', num2, ' = ', num1/num2);
    else
        writeln('Invalid choice! Byte!');
end.