Algoritmo OperacionesMatematicas
    Definir opcion, num1, num2, resultado como Real
    
    Escribir "Seleccione una operación:"
    Escribir "1. Suma"
    Escribir "2. Diferencia"
    Escribir "3. Multiplicación"
    Escribir "4. División"
    Escribir "5. Raíz"
    Escribir "6. Potencia"
    Leer opcion
    
    Si opcion = 1 Entonces
        Escribir "Ingrese el primer número: "
        Leer num1
        Escribir "Ingrese el segundo número: "
        Leer num2
        resultado <- num1 + num2
        Escribir "La suma es:", resultado
    Finsi
    
    Si opcion = 2 Entonces
        Escribir "Ingrese el primer número: "
        Leer num1
        Escribir "Ingrese el segundo número: "
        Leer num2
        resultado <- num1 - num2
        Escribir "La diferencia es:", resultado
    Finsi
    
    Si opcion = 3 Entonces
        Escribir "Ingrese el multiplicando: "
        Leer num1
        Escribir "Ingrese el multiplicador: "
        Leer num2
        resultado <- num1 * num2
        Escribir "La multiplicación es:", resultado
    Finsi
    
    Si opcion = 4 Entonces
        Escribir "Ingrese el dividendo: "
        Leer num1
        Escribir "Ingrese el divisor: "
        Leer num2
        Si num2 <> 0 Entonces
            resultado <- num1 / num2
            Escribir "La división es:", resultado
        Sino
            Escribir "Error: División entre 0 no es posible."
        Finsi
    Finsi
    
    Si opcion = 5 Entonces
        Escribir "Ingrese el índice de la raíz: "
        Leer num1
        Escribir "Ingrese el radicando: "
        Leer num2
        Si num2 >= 0 Entonces
            resultado <- num2 ^ (1/num1)
            Escribir "La raíz es:", resultado
        Sino
            Escribir "Error: La raíz de un número negativo no es posible."
        Finsi
    Finsi
    
    Si opcion = 6 Entonces
        Escribir "Ingrese la base: "
        Leer num1
        Escribir "Ingrese el exponente: "
        Leer num2
        resultado <- num1 ^ num2
        Escribir "La potencia es:", resultado
    Finsi
    
    Si opcion < 1 O opcion > 6 Entonces
        Escribir "Opción no válida."
    Finsi
FinAlgoritmo
