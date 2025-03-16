@echo off
color 0a

:: Arithmetic Operators
goto:ArithmeticOperators
Operator	Description															Example
+			Addition of two operands											1 + 2 will give 3
−			Subtracts second operand from the first								2 − 1 will give 1
*			Multiplication of both operands										2 * 2 will give 4
/			Division of the numerator by the denominator						3 / 2 will give 1.5
%			Modulus operator and remainder of after an integer/float division	3 % 2 will give 1
:ArithmeticOperators


:: Relational Operators
goto:RelationalOperators
Operator	Description	Example
EQU			Tests the equality between two objects												2 EQU 2 will give true
NEQ			Tests the difference between two objects											3 NEQ 2 will give true
LSS			Checks to see if the left object is less than the right operand						2 LSS 3 will give true
LEQ			Checks to see if the left object is less than or equal to the right operand			2 LEQ 3 will give true
GTR			Checks to see if the left object is greater than the right operand					3 GTR 2 will give true
GEQ			Checks to see if the left object is greater than or equal to the right operand		3 GEQ 2 will give true
:RelationalOperators


:: Logical Operators
goto:LogicalOperators
Operator	Description
AND			This is the logical “and” operator
OR			This is the logical “or” operator
NOT			This is the logical “not” operator
:LogicalOperators


:: Assignment Operators
goto:AssignmentOperators
Operator		Description	
+=				This adds right operand to the left operand and assigns the result to left operand	
-=				This subtracts the right operand from the left operand and assigns the result to the left operand	
*=				This multiplies the right operand with the left operand and assigns the result to the left operand	
/=				This divides the left operand with the right operand and assigns the result to the left operand	
%=				This takes modulus using two operands and assigns the result to the left operand	
:AssignmentOperators


:: Bitwise Operators
goto:BitwiseOperators
Operator	Description
&			This is the bitwise “and” operator
|			This is the bitwise “or” operator
^			This is the bitwise “xor” or Exclusive or operator
:BitwiseOperators

pause > nul
