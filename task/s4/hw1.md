**Instruction** :  In Tony’s company, all employees have basic salaries greater than $3000. They are also paid for working over time. 
There have a program to fulfill following requirements:


1) Accepts and validates the basic salary and then number of overtime hours.
Below is a sample output of the program. (In this output, the information following the question marks is entered through the keyboard by the user. All other items are output from the program.)

```
Enter the basic salary ? 1000
Reenter using a greater value ? 3000
Reenter using a greater value ? 20000
Enter the number of overtime hours ? –2
Reenter using a non-negative number ? 10
```


2) Calculates the overtime salary from the basic salary and the number of overtime hours.
The overtime salary is calculated from the number of overtime hours and the basic salary according to the following rules:
Rule A: The overtime salary rate is $100/hour for the first 50 hours and $60/hour for the next 50 hours.
Rule B: If the number of overtime hours exceeds 100, only the first 100 hours will be paid for. The rest of the overtime hours will not be paid for.
Rule C: If the calculated overtime salary is greater than the basic salary, the overtime salary will be made equal to the basic salary.


3) Calculates and outputs the total salary (i.e. the sum of the basic salary and the overtime salary). Here is the sample output of the program. (In this output, the information following the question marks is entered through the keyboard by the user. All other items are output from the program.)

```
Enter the basic salary ? 10000
Enter the number of overtime hours ? 10
The total salary is $11000.
```