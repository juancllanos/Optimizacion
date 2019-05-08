// METODO DE NEWTON EN VARIAS VARIABLES
function fx = fx1(x)
    
    fx = zeros(2,1)
    
    fx(1) = x(1)**4 + x(2)**4 - 2
    
    fx(2) = (x(1)-4)**2 + x(2)**2 - 16
    
endfunction

x = [3;4]
j = numderivative(fx1,x)
//disp(j)

fx = fx1(x)
//disp(fx)

d =-j\fx
//disp(d)



x2 = x+d

j2 = numderivative(fx1,x2)

f2x = fx1(x2)

d2 =-j2\f2x

disp(x2,'x2')
disp(d2,'d2')
disp(f2x,'f(x2)')
disp(j2, 'j(x2)')
