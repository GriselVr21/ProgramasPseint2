Algoritmo sin_titulo
	//matriz 4x4
	//indicar calificacion mayor
	//indicar calificacion menor
	//mostrar la posicion de cada calificacion dentro de la matriz
	
	dimension matriz[4,4] //declarar matriz
	
	Definir numeroM Como Entero
	Definir numeroMnr Como Entero
	Definir iMayor Como Entero
	Definir jMayor Como Entero
	Definir iMenor Como Entero
	Definir jMenor Como Entero
	Definir repeticionMyr Como Entero
	Definir repeticionmnr Como Entero
	
	numeroM=0
	numeroMnr=10
	repeticionMyr=0
	repeticionmnr=0
	
	Escribir "Este programa esta destinado a ingresar calificaciones y a partir de ellas mostrar la calificacion mayor y la calificacion menor"
	Escribir "A continuacion vamos a leer los datos"
	
	//llenado de los valores de la matriz
	Para i=0 Hasta 3 Con Paso 1 Hacer//
		Para j=0 Hasta 3 Con Paso 1 Hacer
			Repetir
				Escribir "Ingresa la calificación ",i,",",j
				leer matriz[i,j]
				si matriz[i,j]<0 o matriz[i,j]>10 Entonces// >mayor que // <menor que
					Escribir "Solo se permiten calificaciones entre 0 y 10"
				FinSi
			Hasta Que matriz[i,j]>=0 y matriz[i,j]<=10
			Escribir i,",", j," : ",matriz[i,j]
			
			Si numeroM<matriz[i,j] Entonces
				numeroM=matriz[i,j]
				iMayor=i
				jMayor=j
				repeticionMyr=1
			SiNo
			si numeroM=matriz[i,j] Entonces
				repeticionMyr=repeticionMyr+1
			FinSi
		FinSi
			si numeroMnr>matriz[i,j] Entonces
				numeroMnr=matriz[i,j]
				iMenor=i
				jMenor=j
				repeticionmnr=1
			SiNo
			si numeroMnr=matriz[i,j] Entonces
				repeticionmnr=repeticionmnr+1
			FinSi
		FinSi
		FinPara
	Fin Para

	//imprimo el numero mayor, las veces que se repite y su posicion
	Escribir "La calificación mayor es: ",numeroM
	escribir "Las veces que se repiten son: ", repeticionMyr
	escribir "Calificación mayor en la posición [",iMayor,",",jMayor, "]"
	//imprimo el numero menor, las veces que se repite y su posicion
	Escribir "La calificación menor es: ",numeroMnr
	Escribir  "Las veces que se repiten son: ", repeticionmnr
	escribir "Calificación menor en la posición [",iMenor,",",jMenor, "]"

	
FinAlgoritmo


