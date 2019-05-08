function fx = f1(x)
    fx = x(1)*x(1)+x(2)*x(2)
endfunction
// ---------------------------------------
function [tmin,fmin] = min1abFB(f,x,d,a,b,h)
    tmin = b;
//  acotamos tmin como b ya que sabemos que este es el maximo
//  valor que puede tomar.
    fmin = f([x(1)+b*d(1),x(2)+b*d(2)]);
//  hacemos lo mismo para la funcion.
    for t = a:h:b
//  en este for tomamos los posibles valores de t variando
//  desde a hasta b con un paso h.
        z = [x(1)+t*d(1),x(2)+t*d(2)]
//      z es x + td
        if f(z) < fmin then
//      hacemos la comparacion para saber si nuestro fmin 
//      sigue siendo el minimo valor.
            fmin = f(z)
            tmin = t
//      si hay un t que hace menor el valor de la funcion
//      entonces cambiamos el tmin y el fmin.
        end
    end
//  por ultimo retornamos esos valores.
    
endfunction

x = [-2;2]
d = [1;0]
a = -20
b = 20
[tmin,fmin] = min1abFB(f1,x,d,a,b,0.001)
disp(tmin,fmin)
// imprimimos el tmin y el fmin
