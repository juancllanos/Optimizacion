function f = fx(x)
    f = (x(1)-5)**4 + (x(2)-5)**2 + (x(2)+4*x(3)-25)**2
    //disp(x(1)+x(2)+x(3)==10)
    //disp(x>=1)
endfunction


J = [-1 0 0 ;0 -1 0 ; 0 0 -1 ]
g = [-x(1)+1; -x(2)+1 ; -x(3)+1]
u = [1  ; 1 ;  1]
v = 1

nm = -u'*g
tao = 10*3/nm
A = [1 ; 1 ; 1]
b = 10

x = [4 ; 2 ; 4]
 
[grx, Hx] = numderivative(fx, x, [], [], "blockmat")
grx = grx'
disp(Hx,'Hx',grx,'gr')


rtd = grfx + J'*u + A*v
//disp(rtd,'rtd')
rtp = A'*x - b
//disp(rtp,'rtp')
//disp((1/tao)*ones(3,1),'e/tao',g','g',-u,'-utp')
rtc = -u.*g-(1/tao)*ones(3,1)
//disp(rtc,'rtc')

disp(rtc,'rtc',rtp,'rtp',rtd,'rtd')
rt  = [rtd ; rtc ; rtp]


disp(A,'Atp',J,'J',Hx,'Hx')
disp(-diag(u)*J , '- diag u * J ',-diag(g),'diag de g' , zeros(3,1),'0s' )
disp(A' , 'A',zeros(1,3),'0s' , zeros(1,1),'0s' )



sol = [Hx J A ; -diag(u)*J -diag(g) zeros(3,1) ; A' zeros(1,3) zeros(1,1) ]
disp(sol,'matriz solucion')


d = -sol\rt
disp(d,'direcciones')

dx =   [-0.6572425
  -0.9305411
   1.5877836]
   
du = [  -0.7031414
   0.1638744
  -1.4514834
 ]
 
 dv  = 11.18377
 
 
 xt = x+dx
 ut = u+du
 vt = v+dv
 
 disp(vt,ut,xt)
 
 
 function t = tmax(u,du)
     t = 1e10
     n = length(u)
     for i=1:n
         if du(i) < 0 then
         t = min(t,-u(i)/du(i))    
         end
     end
endfunction     
xq = x+0.495*dx 
uq = u+0.495*du
vq = v+0.495*dv

disp('-------------------------')
disp(vq,uq,xq)
   
     
     
     
     
     
     
     
     
     
     
     
     
     
 

