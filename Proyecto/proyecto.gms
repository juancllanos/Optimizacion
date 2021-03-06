
$TITLE Ejemplo 1

$ONTEXT

ENUNCIADO :  minimizar f(x) = 2*x1 + 9*x2 + 3*x3
         2*x1 - 2*x2 - x3 <= 1
         -x1 - 4*x2 + x3 <= -1
         x >= 0

$OFFTEXT

VARIABLES
x1,x2,x3,F;

POSITIVE VARIABLES
x1,x2,x3;

EQUATIONS
funcobj,des1,des2;
funcobj.. F =E= 2*x1 + 9*x2 + 3*x3;
des1..    2*x1 - 2*x2 - x3 =L= -1 ;
des2..    -x1 - 4*x2 + x3   =L= -1 ;

MODEL  ejemplo1 /funcobj,des1,des2/;

options LP = Cplex;

SOLVE ejemplo1 using LP minimizing F;

Display x1.L , x2.L, x3.L , F.L;