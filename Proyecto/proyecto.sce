/*
Usaremos la funcion karmarkar la cual resuelve problemas de Optimizacion Lineal  
 
 - Los parametros que esta misma recibe son :
    'Aeq'(matriz de coeficientes de x en las igualdades)
    'beq'(Matriz de constantes de las igualdades)
    'c'(matriz de coeficientes de la funcion objetivo)
    'A'(matriz de coeficientes de x en las desigualdades)
    'b'(matriz de constantes de las desigualdades)
    'lb'(matriz de los valores minimos de las x)
    'up'(matriz de los valores maximos de las x) %inf si no desea colocar restriccion para esa variable

 - Las variables que retorna son :
    'xopt'(x optimo)
    'fopt'(funcion objetivo evaluada en xopt)
    'exitflag'(estado de la minimizacion en 1 converge, 0 se alcanzo el numero maximo de iteraciones, -1 no se encontro punto factible, -2 el problema no es            acotado, -3 direccion de busqueda se volvio 0, -4 si la ejecucion paro por peticion del usuario.
    'iter'(numero de iteraciones)
    'yopt'(multiplos de Lagrange)    
*/

//               EJEMPLOS :
// 1)
/*
A = [-2 -3 1 2 0;-1 8 0 -3 2 ;-1 5 0 -2 1]
b = [8 ; 1 ; -1]
c = [-1 ; -1 ; -1 ;-1 ; -1]
lb = [0 ; 0 ; 0 ; 0 ; 0]

[xopt,fopt,exitflag,iter,yopt]=karmarkar([],[],c,[],[],[],[],[],A,b,lb)
disp(fopt,'f(xopt)',xopt,'xopt',exitflag,'Tipo');
*/

// 2)
/*
A1 = [2 -2 -1 0 0; -1 -4 1 0 0]
b1 = [-1 ; -1]
c1 = [2 ; 9 ; 3 ; 4 ; 5]
lb1 = [0 ; 0 ; 0 ; 0 ; 0]
ub1 = [10 ; 8 ; 5 ; 2 ; 4]

[xopt1,fopt1,exitflag1,iter1,yopt]=karmarkar([],[],c1,[],[],[],[],[],A1,b1,lb1,ub1)
disp(fopt1,'f(xopt)',xopt1,'xopt',exitflag1,'Tipo');
*/

// 3) 
// https://www.youtube.com/watch?v=17meLjNKVH0

A2 = [-3 -2 -1 0 0; 0 -1 0 -2 -1; 0 0 -1 0 -1]
b2 = [-800 ; -500 ; -1000]
c2 = [18 ; 3 ; 22 ; 18 ; 7]
lb2 = [0 ;0 ; 0 ; 0 ; 0 ]
[xopt2,fopt2,exitflag2,iter2,yopt2]=karmarkar([],[],c2,[],[],[],[],[],A2,b2,lb2)
disp(fopt2,'f(xopt)',xopt2,'xopt',exitflag2,'Tipo');
























