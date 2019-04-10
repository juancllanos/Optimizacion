/*
function fx = f1(x)
    fx = x**3 - x**2 + 3*x-3
endfunction


//REVISAR METODO DE NEWTON 


x = 5

//xa = x-fx/df)

for i= 1:10
    gr = numderivative(f1,x)
    fx = f1(x)
    x = (x-fx)/gr
    disp(fx,'f(x)',gr,'gr(x)',x,'x')
    
end
*/

disp(%eps)
