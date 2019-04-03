function fx = f(x)
    
    fx = (x(1)-x(2))**4 + (x(1)+2*x(2)-3)**2
    
endfunction

x = [5 ; 10 ]

disp(f(x),'f(x)')

[gr , H] = numderivative(f,x,[],[],'blockmat')

disp(gr,'gr',H,'H')

gr = gr'

d = -H\gr

disp(d,'d')

x = x+d
disp(x,'x')
