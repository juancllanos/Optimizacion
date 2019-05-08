function g1x = g1(x)
    g1x =x(1)**2 + x(2)**2 - 2
    
endfunction


function g2x = g2(x)
    g1x =x(1)**2 + x(2)**2 - 2
endfunction

function gx = gxc(x)
    gx(1) =x(1)**2 + x(2)**2 - 2 - x(3)
    gx(2) =x(1)**2 + x(2)**2 - 2 - x(3)
endfunction

function xnew = xn(x)
    xnew = max(x)+0.1
endfunction

x0 = [2;-1]

g1x = g1(x0)
g2x = g2(x0)

disp(g2x,g1x)

x1 = max([g1x;g2x]) + 0.1

xnew = [x0;x1]

disp(xnew)

disp(gxc(xnew))

gmpp = [2 0 0 ; 0 2 0 ; 0 0 0]

g1mp = [2*xnew(1);2 * xnew(2); -1 ]
g2mp = [2*(xnew(1) - 2);2 * xnew(2); -1 ]

Bp = - g1mp(xnew)/(g1(xnew)-x1) - g2mp(xnew)/(g2(xnew)-x1)

disp(Bp)








