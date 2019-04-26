// REVISAR TODO ESTE METODO NUEVAMENTE 

function [grb,Hb] = grB(x,g,gpr,gppr,b)
    grb = 0
    Hb = 0
    for i = 1:b
        grb =  grb + gpr(x)(i) /g(x)(i)

        Hb = Hb + (gpr(x)(i)*gpr(x)(i)')/(g(x)(i))**2 + gppr(x)(i)/(-g(x)(i))
    end
    grb = -grb 
endfunction

function fx = fobj(x)
    fx = x(1) + (1.1) * x(2)
endfunction

function gpx = gp(x)
    g1px = [2*x(1) ; 2*x(2)]
    g2px = [2*(x(1)-1) ; 2*(x(2)-1)]
    gpx = [g1px , g2px]
endfunction

function g = gx(x)
    g1x = x(1)**2 + x(2)**2 -2
    g2x = (x(1)-1)**2 + x(2)**2 -2
    g = [g1x,g2x]
endfunction

function gppx = gpp(x)
    g1ppx = [2 0 ; 0 2]
    g2ppx = [2 0 ; 0 2]
    gppx = [g1ppx , g2ppx]
endfunction


x0 = [0.9;0]
tao = 2

[grb,Hb] = grB(x0,gx,gp,gpp,2)

fpx = tao * numderivative(fobj,x0) + grb
fppx = Hb

disp(grb,Hb)
disp(fppx,fpx)

