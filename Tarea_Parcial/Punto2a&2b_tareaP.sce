
// EJEMPLO DE MUCHAS SOLUCIONES 
    
   // Aca tome H = [16 8 ; 8 4], q = [-32 ; -16] , A = [4  2] y b = -2
   // La función es f(x) = 1/2 * x' * H * x + q' * x 
  
Z = [16 8 4 32 ; 8 4 2 16 ; 4 2 0 -2]
Z1 = [16 8 4 ; 8 4 2 ; 4 2 0]

disp("Ejemplo con muchas soluciones")
disp(rref(Z))
disp(det(Z1),'determinante de matriz de coeficientes')

   // Un punto podría ser x = (0,-1) y otro (1,-3) ya que x2 = -2 * x1 - 1 
   // por la primera ecuación de la escalonada reducida.

disp("------------------------------")

// EJEMPLO SIN SOLUCION 

    // Aca tome H = [16 8 ; 8 4], q = [-32 ; -14] , A = [4  2] y b = 25
    // La función es f(x) = 1/2 * x' * H * x + q' * x 
    
Y = [16 8 4 32 ; 8 4 2 14 ; 4 2 0 25]
Y1 = [16 8 4  ; 8 4 2  ; 4 2 0 ]

disp("Ejemplo sin solución")
disp(rref(Y))
disp(det(Y1),'determinante de matriz de coeficientes')

    // Como se observa el sistema de ecuaciones no tiene solucion



