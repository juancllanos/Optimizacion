// Metodo de Newton con desigualdades

function fx = f1(x)
    
    fx = -1*x(1) - 1.4 * x(2)
    
endfunction

function y = fy(f,x)
    bx = 0
    for i = 1:length(A)
        a = log(b(i)-A(i,:)*x)
        bx = bx + a
    end
    bx = -bx
    
    y = t*f(x)+B(x)
    
endfunction

function [gr,H] = gh_B(x,b,A)
    bx = 0
    d = []
    D = zeros(length(b),length(b))
    for i=1:length(b)
        di = 1/(b(i)-A(i,:)*x)
        d(i) = di
        D = diag(d)
    end
    gr = A'*d
    H = A'*D**2 *A
endfunction

function bx = B(x,A,b)
    bx = 0
    for i = 1:length(A)
        a = log(b(i)-A(i,:)*x)
        bx = bx + a
    end
    bx = -bx
endfunction


function q = met_new(x,grf,Hf)
    q = x
    for i = 1:10
        d = -Hf\grf
        q = q + d
    end
endfunction



x = [1 ; 1]
A = [1 1 ; 1 2 ; 1 0 ; -1 0 ; 0 -1 ]
b = [4 ; 5.8 ; 3 ; 0 ; 0]
c = [-1 ; -1.4]
t  =1


[grb,Hb] = gh_B(x,b,A)
disp(grb,'gr B',Hb,'H B')

grf = t*c + grb
disp(grf,'gr f(x)')

Hf = Hb
disp(Hf,'H f(x)')

disp("-------------------------------------------------------")
for i=1:10
    [grb,Hb] = gh_B(x,b,A)
    grf = t*c + grb
    Hf = Hb
    d = -Hf\grf
    x = x+d
    disp(grb,'gr B',Hb,'H B')
    disp(x,'x nuevo',d,'d',Hf,'H f',grf,'gr f')
    
end





/*
hf = Hb

disp(grf,'gr f(x)',hf,'H f(x)')
*/
