
// EJEMPLO DE MUCHAS SOLUCIONES 
    
   // Aca tome H = [16 8 ; 8 4], q = [-32 ; -16] , A = [4  2] y b = -2
   
Z = [16 8 4 32 ; 8 4 2 16 ; 4 2 0 -2]
Z1 = [16 8 4 ; 8 4 2 ; 4 2 0]

disp(rref(Z))
disp(det(Z1))

disp("---------------------------------------------------")

// EJEMPLO SIN SOLUCION 

    // Aca tome H = [16 8 ; 8 4], q = [-32 ; -14] , A = [4  2] y b = 25
    
Y = [16 8 4 32 ; 8 4 2 14 ; 4 2 0 25]
Y1 = [16 8 4  ; 8 4 2  ; 4 2 0 ]

disp(rref(Y))
disp(det(Y1))
