/*
Usaremos la funcion karmarkar la cual resuelve problemas de Optimizacion Lineal  
 
 - Los parametros que esta misma recibe son :
    'Aeq'(matriz de coeficientes de x en las igualdades)
    'beq'(Matriz de constantes de las igualdades)
    'c'(matriz de coeficientes de la funcion objetivo)
    'A'(matriz de coeficientes de x en las desigualdades)
    'b'(matriz de constantes de las desigualdades)
    'lb'(matriz de los valores minimos de las x)
    'up'(matriz de los valores maximos de las x)

- Las variables que retorna son :
    'xopt'(x optimo)
    'fopt'(funcion objetivo evaluada en xopt)
    'exitflag'(estado de la minimizacion en 1 converge, 0 se alcanzo el numero maximo           de iteraciones, -1 no se encontro punto factible, -2 el problema no es acota          do, -3 direccion de busqueda se volvio 0, -4 si la ejecucion paro por petici          on del usuario)
    'iter'(numero de iteraciones)
    'yopt'(multiplos de Lagrange)    

*/

// EJEMPLOS :
A = [2 -2 -1;-1 -4 1]
b = [-1 ; -1]
c = [2 ;9 ;3]
lb = [0 ; 0 ; 0]

[xopt,fopt,exitflag,iter,yopt] = karmarkar([],[],c,[],[],[],[],[],A,b,lb)
disp(fopt,xopt);

