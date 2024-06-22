// EXAMEN 2DO PARCIAL
// FORMULA CUADRATICA
// TABLAS DE MULTIPLICAR
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
	Definir a, b, c como real
	Escribir "Ingrese los coeficientes a, b y c"
	Escribir "Ingrese el coeficiente a "
	Leer a
	Escribir "Ingrese el coeficiente b "
	Leer b
	Escribir "Ingrese el coeficiente c "
	Leer c
	
	discriminante <- b^2 - 4*a*c
    
    Si discriminante >= 0 Entonces
        x1 <- (-b + Raiz(discriminante)) / (2*a)
        x2 <- (-b - Raiz(discriminante)) / (2*a)
        
        Escribir "Raíz 1 (x1): ", x1
        Escribir "Raíz 2 (x2): ", x2
    Sino
        x1 <- (-b) / (2*a)
        x2 <- Raiz(Abs(discriminante)) / (2*a)
        
        Escribir "Raíz 1 (x1): ", x1, " + ", x2, "i"
        Escribir "Raíz 2 (x2): ", x1, " - ", x2, "i"
    FinSi
    
    Si a = 0 Entonces
        Escribir "El valor en el denominador es 0. La ecuación no es cuadrática."
    FinSi
	Esperar Tecla
FinFuncion

Funcion TablaDeMultiplicar
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "**  2. Tablas de multiplicar  **"
	Escribir "********************************"
	Definir minumero, resultado Como Entero
    
    Escribir "Ingrese un número para mostrar su tabla de multiplicar:"
    Leer minumero
    
    Para i <- 1 Hasta 10 Con Paso 1
        resultado <- minumero * i
        Escribir minumero, " x ", i, " = ", resultado
    FinPara
	Esperar Tecla
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
				Escribir "hasta luego"
			de otro modo:
				escribir "Opcion no valida"
				Esperar 3 Segundos
		FinSegun
	Hasta Que op = 3
FinAlgoritmo
