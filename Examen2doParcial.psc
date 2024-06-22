// Examen II
// Crear un men� con las siguientes opciones:
// 1. F�rmula cuadr�tica
// 2. Tablas de multiplicar
// 		* El men� debe ser c�clico, puede utilizar cualquiera de las estructuras de repetici�n para la parte c�clica.
// 		* Debe contener una opci�n de salir en el men� para terminar el programa

// 1. El programa es c�clico (5%)

// 2. F�rmula cuadr�tica:
// 		* Validar que el valor de a, no sea igual a cero (6%)
// 		* Validar que el resultado dentro de la ra�z cuadrada no sea negativa (6%)

// 3. Tablas de multiplicar:
// 		* Pide al usuario que n�mero de tabla desea visualizar (3%)
// 		* Utiliza una estructura c�clica para mostrar el resultado (2%)
// 		* Muestra el resultado de la tabla seg�n digitado por el usuario (3%)
Funcion val <- menu
	Escribir "********************************"
	Escribir "**            Menu            **"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "**  3. Salir                  **"
	Escribir "********************************"
	Escribir "Escoja la opci�n:"
	Leer val
FinFuncion

Funcion FormulaGeneralCuadratica
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  1. Formula cuadratica     **"
	Escribir "********************************"
	Definir a, b, c como real
	Escribir "Ingrese los coeficientes a, b y c"
	Escribir "Ingrese el coeficiente a "
	Leer a
	
    Si a = 0 Entonces
        Escribir "El valor en el denominador es 0 por lo que la ecuaci�n no es cuadr�tica."
    FinSi
	
	Escribir "Ingrese el coeficiente b "
	Leer b
	Escribir "Ingrese el coeficiente c "
	Leer c
	
	discriminante <- b^2 - 4*a*c
    
    Si discriminante >= 0 Entonces
        x1 <- (-b + Raiz(discriminante)) / (2*a)
        x2 <- (-b - Raiz(discriminante)) / (2*a)
        
        Escribir "Ra�z 1 (x1): ", x1
        Escribir "Ra�z 2 (x2): ", x2
    Sino
        x1 <- (-b) / (2*a)
        x2 <- Raiz(Abs(discriminante)) / (2*a)
        
        Escribir "Ra�z 1 (x1): ", x1, " + ", x2, "i"
        Escribir "Ra�z 2 (x2): ", x1, " - ", x2, "i"
    FinSi
	Esperar tecla
FinFuncion

Funcion TablaDeMultiplicar
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "********************************"
	Definir minumero, resultado como entero
    
    Escribir "Indique que numero de tabla desea visualizar:"
    Leer minumero
    
    Para i <- 1 Hasta 10 con paso 1
        resultado <- minumero * i
        Escribir minumero, " x ", i, " = ", resultado
    FinPara
	Esperar tecla
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
				Escribir "Hasta luego"
			de otro modo:
				escribir "Opcion no valida"
				Esperar 3 Segundos
		FinSegun
	Hasta Que op = 3
FinAlgoritmo
