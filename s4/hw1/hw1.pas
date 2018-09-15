Program s4_pas1;
var
    salary, o, hours: integer;

begin
    // Get basic salary
    write('Enter the basic salary ? ');
    readln(salary);
    while salary < 3001 do
        begin
        write('Reenter using a greater value ? ');
        readln(salary);    
        end;

    // Get overtime hours
    write('Enter the number of overtime hours ? ');
    readln(hours);
    while hours < 0 do
        begin
        write('Reenter using a non-negative number ? ');
        readln(hours);
        end;

    // Calculate updated salary
    o := 0;
    if hours > 100 then
        hours := 100;
    while hours > 50 do
        begin
        o := o + 60;
        hours := hours - 1;
        end;
    while hours > 0 do
        begin
        o := o + 100;
        hours := hours - 1;
        end;
    if o > salary then
        o := salary;
    
    // Display result
    writeln('The total salary is $', o + salary);
end.