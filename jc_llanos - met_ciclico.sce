// PUNTO 1 :
function fx = f1(x)
    fx = x(1)*x(1)+x(2)*x(2)
endfunction

/*function fx = f2(x)
    fx = exp(2*x(1)**2+x(1)-8)
endfunction*/
// ---------------------------------------

// Funcion que halla el t minimo
function [tmin,fmin] = min1abFB(f,x,d,a,b,h)
    tmin = b;
//  acotamos tmin como b ya que sabemos que este es el maximo
//  valor que puede tomar.
    fmin = f(x+b*d);
//  hacemos lo mismo para la funcion.
    for t = a:h:b
//  en este for tomamos los posibles valores de t variando
//  desde a hasta b con un paso h.
        z = [x+t*d]
        //disp(z,f(z),'----')
//      z es x + td
        if f(z) < fmin then
//      hacemos la comparacion para saber si nuestro fmin 
//      sigue siendo el minimo valor.
            fmin = f(z)
            tmin = t
//      si hay un t que hace menor el valor de la funcion
//      entonces cambiamos el tmin y el fmin.
        end
    end
//  por ultimo retornamos esos valores.
    
endfunction

// PUNTO 2 :
// Funcion halla el t minimo en R 
function [tmin,fmin,info] = minf(f,x,d,M,h)
    a = -1;
    b = 1;
    [tmin1,fmin1] = min1abFB(f,x,d,a,b,h);
    //Definimos el intervalo [a,b] y llamamos a la funcion 
    //que nos minimiza en el intervalo para tener un primer valor.
    
    while (tmin1 == a | tmin1 == b) & abs(tmin1) < M then
        // Luego hacemos un while para ver si el valor de t esta en
        // los extremos del intervalo y si es menor que el limite M
        if tmin1 == a 
             b = a +h
             a = -100+a
             [tmin1,fmin1] = min1abFB(f,x,d,a,b,h);     
             // Si se cumple que t es el limite inferior entonces corremos 
             // el intervalo y volvemos a llamar la funcion.
             //
             //disp("t -> a",a,b)
        end
        if tmin1 == b  
             a = b+h
             b = 100+b
             [tmin1,fmin1] = min1abFB(f,x,d,a,b,h);             
             //disp("t->b",a,b)
             // En este caso pasa lo mismo que en el paso anterior solo que 
             // vemos si es el limite superior y nos corremos hacia esa dirrecion.
        end
    end
    tmin = tmin1 ;
    fmin = fmin1;
    if abs(tmin) < M then
        info = %t
    else 
        info = %f    
    end
    // Cuando el while termina tomamos los valores correspondientes y vemos si
    // el valor absoluto de t es menor a M si se cumple esto quiere decir que 
    // no hay optimo no acotado.
endfunction

// PUNTO 3 :
//Metodo cíclico coordenado
function [xmin,fmin,info] = mcc(f,x,e,maxit)
    xmin = x
    fmin = f(x)
    count = 0
    info = %t
    xc = x
    y = x
    m = eye(length(x),length(x))
    // Aca inicializamos los valores que retorna la funcion, el contador, una copia de x (xc)
    // y y tambien una matriz identidad de nxn para poder tomar los vectores unitarios.
    //q = []
    
    while count < maxit then 
        //disp('While', count)
        //z = []
        for i = 1:length(x)
            //disp(i,'i')
            
            [tp,fm,inf] = minf(f,y,m(i,:),1000,0.01)
            //disp(tp,'tp',fm,'fm',inf,'inf',m(i,:),'direccion')
            
            //z(i) = tp 
            //disp(y, 'antes')
            y = y +tp*m(i,:)
            //disp(y,'despues')
            
            info = info & inf
       // Mientras el contador no sobrepase las maximas iteraciones entonces hallamos el valor
       // minimo en cada direccion y vamos modificando y. Ademas el info nos dice si en todas 
       // las direcciones hay minimo acotado y si esto cambia nos retornará falso.
       // 
        end
         
         //q = cat(2,q,z)
         
         count = count +1
         // Le sumamos uno al contador .
         
        if norm(xc-y) <= e then

            xmin = y
            
            fmin = f(y)
            
            break
            // En el caso que la distancia entre los puntos no sea muy significativa entonces 
            // retorna el ultimo punto que hallo, la funcion en ese punto y el info que nos 
            // iba diciendo si todas las direcciones tenian minimos acotados.
        end 
        
        xc = y
        xmin = xc
        fmin = f(xc)
        // Si no entramos en la condicion anterior lo que se hace es que la copia de x & y tienen
        // el mismo valor para asi ejecutar nuevamente el while.       
    end  
endfunction

// PUNTO 1 

x = [-2,2]
d = [1,0]
a = 0
b = 1
//[tmin,fmin] = min1abFB(f2,x,d,a,b,0.1)
//disp(tmin,fmin)
// imprimimos el tmin y el fmin



// PUNTO 2

//[y,f,info] = minf(f1,x,d,120,0.01)
//disp(y,f,info);




// PUNTO 3 : Metodo ciclico coordenado

 function r  = f3(x)
     r = (x(1)-2)**4+(x(1)-2*x(2))**2
 endfunction
 
x0 = [0,3]
e = 0.04

[xmin,fmin,info] = mcc(f3,x0,e,20)
disp(xmin,fmin,info,'-----------------------')

function a = f4(x)
    
    a = - x(1) -  x(2) 
    
endfunction

function b = f5(x)
    
    b = 2*x(1) + x(2) + 3
    
endfunction

/*
x1 = [0,0]
[xmin1,fmin1,info1] = mcc(f4,x1,e,20)
disp(,xmin1,fmin1,info1,'-----------------------')


[xmin2,fmin2,info2] = mcc(f1,x,e,20)
disp(xmin2,fmin2,info2,'-----------------------')
*/
[xmin3,fmin3,info3] = mcc(f5,x,e,20)
disp(xmin3,fmin3,info3,'-----------------------')

