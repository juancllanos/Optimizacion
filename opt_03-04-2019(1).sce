function fx = f1(x)
    
    fx = 0.1*x(1)**2 + x(2)**2 + 10*x(3)**2 + 100*x(4)**2 -0.2*x(1) - 2*x(2) - 20*x(3) - 200 *x(4)
    
endfunction

x = [2 ;3 ;4 ;5]

disp(f1(x),'fx')

g = numderivative(f1,x)'

disp(g,'Gradiente')

tp = 
