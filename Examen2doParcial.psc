// Examen II
// Crear un menú con las siguientes opciones: (TERMINADO)
// 1. Fórmula cuadrática
// 2. Tablas de multiplicar
// 		* El menú debe ser cíclico, puede utilizar cualquiera de las estructuras de repetición para la parte cíclica. (TERMINADO)
// 		* Debe contener una opción de salir en el menú para terminar el programa (TERMINADO)

// 1. El programa es cíclico (5%) (TERMINADO)

// 2. Fórmula cuadrática:
// 		* Validar que el valor de a, no sea igual a cero (6%)
// 		* Validar que el resultado dentro de la raíz cuadrada no sea negativa (6%)

// 3. Tablas de multiplicar: (TERMINADO)
// 		* Pide al usuario que número de tabla desea visualizar (3%)
// 		* Utiliza una estructura cíclica para mostrar el resultado (2%)
// 		* Muestra el resultado de la tabla según digitado por el usuario (3%)
Funcion val <- menu
	Escribir "********************************"
	Escribir "**            Menu            **"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "**  3. Salir                  **"
	Escribir "********************************"
	Escribir "Escoja la opción:"
	Leer val
FinFuncion

Funcion FormulaGeneralCuadratica
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "********************************"
    Definir a, b, c, discriminante, x1, x2 como real
	
    Escribir "Ingresa el coeficiente a:"
    Leer a
	
    Si a = 0 Entonces
        Escribir "El valor del coeficiente a no puede ser igual a cero, pues la ecuacion no en si misma no seria cuadratica"
    Sino
        Escribir "Ingresa el coeficiente b:"
        Leer b
        Escribir "Ingresa el coeficiente c:"
        Leer c
		
        discriminante <- b^2 - 4*a*c
		
        Si discriminante < 0 Entonces
			Limpiar Pantalla
            Escribir "El resultado  en el discriminante es negativo por tanto no es racional (raíces imaginarias)."
			Escribir " "
			Escribir "Pulse cualquier tecla para volver al menu principal"
        Sino
            x1 <- (-b + Raiz(discriminante)) / (2*a)
            x2 <- (-b - Raiz(discriminante)) / (2*a)
            Escribir "Las raíces son:"
            Escribir "x1 =", x1
            Escribir "x2 =", x2
        Fin Si
    Fin Si
	Esperar tecla
	Limpiar Pantalla
FinFuncion

Funcion TablaDeMultiplicar
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "********************************"
	Definir minumero, resultado como entero
    
    Escribir "Indique que numero de tabla desea visualizar:"
    Leer minumero
	Limpiar Pantalla
    
    Para i <- 1 Hasta 10 con paso 1
        resultado <- minumero * i
        Escribir minumero, " x ", i, " = ", resultado
    FinPara
	Escribir " "
	Escribir "Pulse cualquier tecla para volver al menu principal"
	Esperar tecla
	Limpiar Pantalla
FinFuncion

Algoritmo Examen2doParcial
	Repetir
		op <- menu ()
		segun op Hacer
			1:
				FormulaGeneralCuadratica()
			2:
				TablaDeMultiplicar
			3:	
				Limpiar Pantalla
				Escribir "Hasta luego"
			de otro modo:
				Limpiar Pantalla
				escribir "Opcion no valida, pulse una tecla para volverlo a intentar"
				Esperar Tecla
		FinSegun
	Hasta Que op = 3
FinAlgoritmo
