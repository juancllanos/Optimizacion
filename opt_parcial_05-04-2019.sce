/*

function tp = interpCuadr(t1,t2,t3,f1,f2,f3)
    //
    // interpolacion cuadratica
    //
    t21 = t2 - t1
    t23 = t2 - t3
    c1 = t21*(f2 - f3)
    c2 = t23*(f2 - f1)
    deno = c1 - c2
    //disp(deno, 'deno')
    if abs(deno) < 1e-8
        printf('Denominador nulo.\n')
        tp = 0
        return
    end
    tp = t2 - 0.5*(t21*c1 - t23*c2)/deno       
endfunction

*/

// PUNTO 2 \\

/*
a = [4 2 6 ; 2 6 8 ; 6 8 18]
b = [-12 ; -5 ;-21]


c = rref([a,b])
disp(c)

x1 =  -2.1
x2 = 1.2
x3 = -1

disp(4*x1+2*x2+6*x3) 
disp(2*x1+6*x2+8*x3)
disp(6*x1+8*x2+18*x3)
*/

// PUNTO 3 \\

/*
function [a,b,c,d,e] = p3(x)
    a = x(1)+x(2)
    b = x(1)**2 + x(2)**2
    c = (x(1)-2)**2+x(2)**2
    d = 1+2*x(1)+2*(x(1)-2)
    e = 1 + 2*x(2) + 2*x(2)
endfunction

x1 = [sqrt(2) ; 0]
x2 = [1 , -1]

[a1,b1,c1,d1,e1] = p3(x1)
[a2,b2,c2,d2,e2] = p3(x2)

//disp(a1,b1,c1)
//disp(a2,b2,c2)


disp(a1,b1,c1,d1,e1)
disp("---------------------")
disp(a2,b2,c2,d2,e2)



disp(2*x1(1),2*x1(1)-4)
disp(2*x1(2))

disp(2*x2(1),2*x2(1)-4)
disp(2*x2(2))


a = [1 ; 1]
b = [2.82  -1.17]


// PUNTO 4 \\

/*
function t = met_3puntos(f,x,d,tk,epsilon,hini,k)
    tp = 0
    fik = f(x+tk*d)
    while abs(h) >epsilon
        if f(x+(tk+h)*d) < fik then
            tp = tk+h
            
        end
        
        if f(x+(tk-h)*d) < fik then
            tp = tk-h
        end
        h = h/2
    end
    
    t1 = tk
    t2 = tp
    t3 = t2
    fi1 = f(x+t1*d)
    fi2 = f(x+t2*d)
    
    while abs(t3) < k
        t3 = t2+2*(t2-t1)
        fi3 = f(x+t3*d)
        if fi3 > fi2 then
        break;
    else
          t1 = t2
          t2 = t3
          fi1 = fi2
          fi2 = f3        
    end 
    end
endfunction

function t = met_gradiente(x,f)
    xa = x
    for k = 1:5
        [gr,h] = numderivative(f,xa,[],[],'blockmat')'
        if norm(gr) <= epsilon
            break;
        end  
        d = -gr
        
        epsilon =0.004
        hini = 1
        k = 10
        t = met_3puntos(f,x,d,1,epsilon,hini,k)
        xa = xa+t*d  
        disp(xa,t,d,k)
    end
endfunction

x = [0,0]
t = met_gradiente(x,f1)

disp(t,'resultado')
*/

function fx = f1(x)
    fx = x(1)**4 + (2*x(1)+x(2)-3)**2
endfunction

x = [0 ; 0]

xa = x
for i = 1:5 
    disp(f1(xa),'f(x)')
    gr = numderivative(f1,xa)'
    d = -gr
    disp(d,'dk')
    
    z = []
    fz = []
    t = 1
    for j = 1:0.02:1
        z(i) = t+j 
        fz(i) = f1(x+(t+j)*d)
    
    disp(z,'z',fz,'fz')
    minf = fz(1)
    minz = z(1)
        
    for i = 1:length(z)

        if fz(i) < minf then
            minf = fz(i)
            minz = z(i)
        end
    end
    t = minz
    xa = x+t*d
    disp(f1(xa),'f(x) terminando for',xa,'nuevo x',t,'t',)
end
    
end
