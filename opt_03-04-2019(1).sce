function fx = f1(x)
    
    fx = 10*(x(1)-1)**2 + (x(2)-2)**2
    
endfunction

function tp = tk(g,h)
        
    tp = (-g'*-g)/(-g'*h*-g)
    
endfunction

///////////////////////////////////////////////////////////////////////////////////////////////////////

x0 = [0 ; 0]

disp(f1(x0),'f(x)')

g = numderivative(f1,x0)'

disp(g,'Gradiente')

h = [20 0 ; 0 2]

d = -g

tp = tk(g,h)

disp (tp,'tk')

x = x0 + tp*d

for i= 1:10
    disp(f1(x),'f(x)',x,'x')
    g1 = numderivative(f1,x)'
    disp(-g1,'d')
    tp = tk(g1,h)
    disp(tp,'tk')
    x = x + tp*-g1
    disp('-----------------------------')
    
end



