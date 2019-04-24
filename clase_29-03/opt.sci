function fx = f(x)
    t1 = x(1) + x(2) + x(3) -3
    t2 = x(1) - 2*x(2) + x(3)
    t3 = x(1) - x(3)
    fx = 0.5*t1**4+ t2**2 +t3 **2+ 100
endfunction

function fx = backtr(f,x,d,g)
    a = 0.2
    b = 0.5
    t = 1
    while f(x+t*d) > f(x) + a*t*g'*d
        t = b*t
    end
    fx = f(x+t*d)
endfunction




x = [1;2;3]
disp(f(x))

x1 = [-3;1;4]
t = 1
d= [3;-1;2]

a = 0.2
b = 0.5


g = numderivative(f,x)
disp(g,'gradiente en xx')

q = f(x)
disp(q,'f (x1) ')

r = f(x+t*d)
disp(r,'f(x + t * d)')


disp(d,g,a,'a   g    d')


s =  a*t*g*d
disp(s,'s')
l = q+s
disp(l,r,'f(x)        l ')


t1 = 0.5
disp('          t = 0.5         ')


k = f(x1+t1*d)
disp(k)

s1 =  a*t1*g*d
l1 = q+s1


disp(l1,k,'f(x1)        l ')





//disp(f(q +s ),'derecha igualdad')
//disp(s, 'alfa * grandiente * d')



