// REVISAR ESTO

function y = fx(x,h,c)
    
    y = (1/2)*x'*h*x+c'*x
    
endfunction


function y = minfx(x,h,c)
    
    d = -(h*x+c)'
    
    disp(d)

    y = - (-1*d'*d)/d'*h*d
           
endfunction

// Metodo decenso + pendiente

function t = minf(x,h,c)
    count = 0

for k = 1:60
    gr = (h*x+c)
    if norm(gr) <= 0.0001
        break
    end
    d = -gr
    t = -(gr'*d)/(d'*h*d)
    disp(t,'-- t --')
    x = x+t*d
    disp(x,' -- x -- ')
    count = count + 1
    disp(count, '-- contador --')
end 

endfunction









//  --- DATOS --- 

h = [10 1 1 ; 1 11 -2 ; 1 -2 10]

h1 = [10 1 1 ; 1 11 -2 ; 1 -2 100] // Probar con este nuevo H

c = [-45 ; -33 ; -18]

x = [1 ; 1 ; 1]


//minf(x,h,c)
//disp("----------------------------------------------------------------------------")
//minf(x,h1,c)

/*
p = real(spec(h)')
disp(p)
disp(max(p)/min(p))

p1 = real(spec(h1)')
disp(p1)
disp(max(p1)/min(p1))
*/

// METODO DE NEWTON

x1 = 3
f1x = exp(-x1)-x1
f1px = - exp(-x1) -1
x2 = x1 - (f1x/f1px)
disp(x2)

f2x = exp(-x2)-x2
f2px = - exp(-x2) -1
x3 = x2 - (f2x/f2px)
disp(x3)

// Ejercicio : hallar raiz de polinomio grado 3


