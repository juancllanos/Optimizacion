function fx = f1(x)
    
    fx = 0.1*x(1)**2 + x(2)**2 + 10*x(3)**2 + 100*x(4)**2 -0.2*x(1) - 2*x(2) - 20*x(3) - 200 *x(4)
    
endfunction


function tp = tk(g,h)
        
    tp = (-g'*-g)/(-g'*h*-g)
    
endfunction

x = [2 ;3 ;4 ;5]

disp(f1(x),'fx')

g = numderivative(f1,x)'

//disp(g,'Gradiente')

h = [0.2 0 0 0 ; 0 2 0 0 ; 0 0 20 0; 0 0 0 200 ]

c = [-0.2 ; -2 ; -20 ; -200]

/*
g1 = h*x + c
disp(g1,'g1')
*/

y = x
    
for i  = 1 : 5
    if i >2 then
    disp(i)
    disp(f1(y),'f(y)',y,'y')
    g1 = numderivative(f1,y)'
    disp(-g1,'d')
    t = tk(g1,h)
    disp(t,'t')
    y = y+t*-g1
    end
// Corregir caso i >= 2
    if i >= 2 then
           d = -numderivative(f1,y)'
           t = tk(-d,h)
    
    end
    
end
