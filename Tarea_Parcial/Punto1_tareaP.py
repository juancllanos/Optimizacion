# -*- coding: utf-8 -*-
from decimal import *

getcontext().prec = 25

# Método de Newton función convexa vista en clase con igualdades

def f(x):
    return (x[0]-1)**4 + (x[0]+2*x[1]-3)**2
    # Aca definí la función

def gr(x):
    return [4*(x[0]-1)**3+ 2*(x[0]+2*x[1]-3),4*(x[0]+2*x[1]-3)]
    #Aca defini el gradiente, hallado previamente a mano

def hess(x):
    return [12*(x[0]-1)**2+2,4,4,8]
    #Aca la Hessiana tambien la halle a mano


def inv_hess(x):
    i1 = Decimal(1)/Decimal(12*(x[0]-1)**2)
    i4 = Decimal(-1*(12*(x[0]-1)**2+2))/Decimal(4*-24*(x[0]-1)**2)
    i2 = (1/Decimal(4)) - 2 * i4
    i3 = 1/Decimal(-24*(x[0]-1)**2)
    return [i1,i2,i3,i4]
    #Aca halle la inversa de la Hessiana a mano y la
    #escribi como funcion de x
    
def sol_d(x,gr,inv):
    gr = [-1*gr[0],-1*gr[1]]
    d = [gr[0]*inv[0]+gr[1]*inv[2],gr[0]*inv[1]+gr[1]*inv[3]]
    return d
    #Aca realizo el despeje de d a partir de H * d = - gr



x = [2,2]
for i in range(70) :
    a = gr(x)
    b = inv_hess(x)
    d = sol_d(x,a,b)
    x[0] = x[0]+d[0]
    x[1] = x[1] + d[1]

    print i+1,") ",x[0],x[1]

#Por ultimo solo hago una prueba de que todo funcione bien y que lo imprima
# de manera mas ordenada

