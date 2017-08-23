doc"""La función `iterar(f, x)` toma a la función `f` evaluada en el punto `x` y la itera en si misma cuantas veces sea necesario hasta que la función converja a un valor fijo."""

function iterar(f,x0)
    
    x_actual = x0
    x_nuevo = f(x_actual)
    a = 1 #damos un valor inicial cualquiera (que cumpla con la condición del bucle while) para a
    
    while a > 0.00000000000000001
 
        x_nuevo = f(x_actual) 
        a = abs(x_actual - x_nuevo) #define el valor de a como la distancia entre x_actual y x_nuevo, que será el que se pruebe para cumplir la condición para continuar en el bucle
        x_actual = x_nuevo #y después redefine a x_actual para volver al principio del bucle    
    end
    
    return x_nuevo
end