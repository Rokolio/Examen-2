// Examen II
// JUAN CARLOS SOTO T32421181
// Crear un menú con las siguientes opciones:
// 1. Fórmula cuadrática
// 2. Tablas de multiplicar
// 		* El menú debe ser cíclico, puede utilizar cualquiera de las estructuras de repetición para la parte cíclica.
// 		* Debe contener una opción de salir en el menú para terminar el programa.

// 1. El programa es cíclico (5%) 

// 2. Fórmula cuadrática:
// 		* Validar que el valor de a, no sea igual a cero (6%).
// 		* Validar que el resultado dentro de la raíz cuadrada no sea negativa (6%).

// 3. Tablas de multiplicar: 
// 		* Pide al usuario que número de tabla desea visualizar (3%).
// 		* Utiliza una estructura cíclica para mostrar el resultado (2%).
// 		* Muestra el resultado de la tabla según digitado por el usuario (3%).
Funcion val <- menu
	Escribir "********************************"
	Escribir "**            Menu            **"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "**  3. Salir                  **"
	Escribir "********************************"
	Escribir "Elija la opción deseada:"
	Leer val
FinFuncion

Funcion FormulaGeneralCuadratica
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "********************************"
    Definir a, b, c, discriminante, x1, x2 como real
	
	Escribir "Dada la ecuacion en la forma a^2+bx+c=0 ingrese los valores solicitados acontinuacion:"
	Escribir " "
    Escribir "Ingresa el coeficiente a:"
    Leer a
	
    Si a = 0 Entonces
		Limpiar Pantalla
        Escribir "El valor del coeficiente a no puede ser igual a cero, pues la ecuacion en si misma no seria cuadratica"
		Escribir " "
		Esperar 1 segundos
		Escribir "Pulse cualquier tecla para volver al menu principal"
    Sino
        Escribir "Ingresa el coeficiente b:"
        Leer b
        Escribir "Ingresa el coeficiente c:"
        Leer c
		
        discriminante <- b^2 - 4*a*c
		
        Si discriminante < 0 Entonces
			Limpiar Pantalla
            Escribir "El resultado al resolver el discriminante es negativo por tanto los resultados para x1 y x2 son irracionales (raíces imaginarias)."
			Escribir " "
			esperar 1 Segundos
			Escribir "Pulse cualquier tecla para volver al menu principal"
        Sino
            x1 <- (-b + Raiz(discriminante)) / (2*a)
            x2 <- (-b - Raiz(discriminante)) / (2*a)
            Escribir "Las resultados para x son:"
			Escribir " "
            Escribir "x1 = ", x1
			Escribir " "
            Escribir "x2 = ", x2
			Escribir " "
			Escribir "Pulse cualquier tecla para volver al menu principal"
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
	Escribir "La tabla correspondiente al numero ingresado se muestra acontinuacion:"
	Escribir " "
    Para i <- 1 Hasta 10 con paso 1
		resultado <- minumero * i
		Escribir minumero, " x ", i, " = ", resultado
    FinPara
	esperar 1 Segundos
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
				Escribir "Fin del programa"
				Escribir " "
				Esperar 1 segundos
				Escribir "Hasta luego"
				Escribir " "
				Esperar 1 segundos
				Escribir "Pulse cualquier tecla para salir"
			de otro modo:
				Limpiar Pantalla
				escribir "Opcion no valida, pulse cualquier tecla para volverlo a intentar"
				Esperar Tecla
		FinSegun
	Hasta Que op = 3
FinAlgoritmo
