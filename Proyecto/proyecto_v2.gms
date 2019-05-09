OPTIONS LP = CPLEX;

$ontext
Min F(x) = 3x1 + 2x2 + x3 +2x4 +3x5
         2x1 + 5x2 + x4 + x5 >= 6
         4x2 - 2x3 + 2x4 + 3x5 >= 5
         x1 - 6x2  + 3x3 + 7x4 + 5x5 >= 7
         x>= 0
$offtext

SETS
j variables /j1*j5/
i restricciones  /i1*i3/;

PARAMETERS
C(j) coeficientes de la funcion F /j1 = 3, j2 = 2 , j3 = 1 , j4 = 2 , j5=3/
B(i) valores de las restricciones /i1 = 6, i2 = 5, i3 = 7/;

TABLE A(i,j)
                 j1      j2      j3      j4      j5
         i1      2       5       0       1       1
         i2      0       4       -2      2       3
         i3      1       -6      3       7       5  ;

VARIABLES
F valor de funcion objetivo;

POSITIVE VARIABLES
x(j) variables;

EQUATIONS
funcobj funcion objetivo
restricciones restricciones del problema;

funcobj.. F =E= sum(j,C(j)*x(j));
restricciones(i).. sum(j,A(i,j)*x(j)) =G= B(i);

MODEL ejemplo1 /all/ ;

SOLVE ejemplo1 using LP minimizing F;