G = -1*eye(5,5)

A = [1 1 1 0 0 ; 1 2 0 1 0; 1 0 0 0  1]

mb = [-4 ; -5.8 ; -3]

c = [-1 ; -1.4 ; 0 ; 0 ;0]

q = [-0.1 ; -0.2 ; 0 ; 0 ; 0]

x0 = [0.2 ; 1.45 ; 2.35 ; 2.7 ; 2.8] 

u = [1 ;1 ;1 ;1 ;1]

v = [ 0 ; 0 ; 0]

//mc  =[0 G' A'; -diag(u)*G -diag(G.*x-q) zeros() ; A zeros() zeros() ]

gx = G*x0 -q

//e = 

disp(u,G)

disp(-u'*G,'Here')

tao = (10 *5)/(-u'*gx)

e = ones(5,1)

mc = [zeros(5,5) G' A' ; -diag(u).*G -diag(gx) zeros(5,3) ; A zeros(3,5) zeros(3,3) ]

disp(mc)

disp(c+G'*u + A'*v , -u.*(gx) - (1/tao)*e , A*x0 -mb)

a1 = c+G'*u + A'*v
a2 = -u.*(gx)-(1/tao)*e
a3 = A*x0 -mb

sol = [a1 ; a2 ; a3]
disp(sol,'sol')


m = [mc sol]

disp(m)

ds = mc\sol 

disp(ds)


//disp(G)
