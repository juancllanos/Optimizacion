// PARCIAL
// (1)
/*
function f = fx(x)
    f = 4*x(1) + 4*x(2) - 2*x(3)
    disp(-7*x(1)+10*x(2)+2*x(3))
    disp(-7*x(1)+10*x(2)+2*x(3) >= 59)
   
    disp(-4*x(1)+7*x(2)+2*x(3))
    disp(-4*x(1)+7*x(2)+2*x(3) >= 47)
    
    disp(2*x(1)-3*x(2)-1*x(3))
    disp(2*x(1)-3*x(2)-1*x(3) >= -21)
    
    disp(16*x(1)-25*x(2)-5*x(3))
    disp(16*x(1)-25*x(2)-5*x(3) >= -155)
    
endfunction

function f = fy(x)
    f = 59*x(1)  + 47*x(2) - 21*x(3)- 155*x(4)
    disp(-7*x(1) - 4*x(2) + 2*x(3) + 16*x(4))
    disp(-7*x(1) - 4*x(2) + 2*x(3) + 16*x(4) <= 4)
    
    disp(10*x(1) + 7*x(2) - 3*x(3) - 25*x(4))   
    disp(10*x(1) + 7*x(2) - 3*x(3) - 25*x(4) <= 4)
    
    disp(2*x(1)  + 2*x(2)  - 1*x(3)  -5*x(4))    
    disp(2*x(1)  + 2*x(2)  - 1*x(3)  -5*x(4) <= -2)
endfunction


x = [0 ; 5 ; 6]
y = [0 ; 10 ; 22 ; 0]

fx = fx(x)
disp('----------------')
fy = fy(y)

disp(fy,'f(y)',fx,'f(x)')
*/

// (2)

function y = f3x(x)
    y = x(1)**2 + x(2)**2 + x(3)**2 + 6*x(1)*x(2) +4*x(1)*x(3)+8*x(2)*x(3) -12*x(1)-4*x(2) - 2*x(3)
    //disp(x,'Este x')
    //disp(x(1)<=1.5)
    //disp(x(2)<=1.5)
    //disp(x(3)<=1.5)    
    //disp(x(2) + x(3) ==2)    
endfunction

x3 = [1.5 ; 1 ; 1]
q = f3x(x3)

disp(q,'f(x)')
gr = numderivative (f3x,x3)'
disp(gr,'gr')

o = [0 1 0]
z = -o'\gr
disp(z,'u')

disp(z*o'+gr,'sol total')


// (3)
/*
function y = fx(x)
    disp(x,'Para x = ')
    y = (x(1)-6)**4 + 2*(x(1)+x(2)-13)**2
    disp(x(1)+x(2) == 10)
    disp(x(1) >= 4)
    disp(x(2) >= 0)
endfunction

x1 = [4 ; 6] 
x2 = [5 ; 5]

f1 = fx(x1)
f2 = fx(x2)

disp(f2,'f(x2)',f1,'f(x1)')

x = [6 ; 7]

//grx = numderivative(fx,x)
//disp(grx,'grx')

grx1 = numderivative(fx,x1)'
grx2 = numderivative(fx,x2)'

disp(grx2,'grx2',grx1,'grx1')

a = [1 0 1; 0 1 1]
sol1 = -a\grx1

u11 = sol1(1)
u21 = sol1(2)
v11 = sol1(3)

disp(v11,'v11',u21,'u2',u11,'u1')

sol2 = -a\grx2
u12 = sol2(1)
u22 = sol2(2)
v12 = sol2(3)
disp(v12,'v12',u22,'u2',u12,'u1')

disp(sol2,'kkt x2',sol1,'kkt x1')

disp('---------------------------------------------')

kktx1 = grx1 + u11*[1;0] + u21 * [0;1] + v11*[1;1]
kktx2 = grx2 + u12*[1;0] + u22 * [0;1] + v12*[1;1]

disp(kktx2,'kktx2',kktx1,'kktx1')

*/













































