//Por cada uno de los 5 estudiantes de Introducción a la Computación se conoce: 
//nota obtenida en el primer parcial y nota obtenida en el segundo parcial. Carga dos 
//arreglos, uno con las notas del primer parcial y otro con las notas del segundo parcial 
//y luego obtener un tercer arreglo con el total acumulado por cada estudiante. 
//Imprimir el arreglo que contiene el total acumulado por cada estudiante. 

SubProceso Cargar_Arr_Notas(Nota1P por Referencia,Nota2P por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese las notas del 1er y 2do parcial del" i "º estudiante"
		Leer Nota1P[i],Nota2P[i]
		
	FinPara
FinSubProceso

SubProceso Acum_Notas(Nota1P,Nota2P,Nota_Acum por referencia)
	Para i=1 hasta 5
		Nota_Acum[i]=Nota1P[i]+Nota2P[i]
	FinPara	
FinSubProceso

Subproceso Mostrar_Acum_Notas(Nota_Acum)
	Para i= 1 hasta 5 
		Mostrar "La nota acumulada del " i "º estudiante es: " Nota_Acum[i] 
	FinPara
	
FinSubProceso

subproceso calcular_promedio(Nota_Acum, promedio por referencia)
	Para i=1 hasta 5
		promedio[i]=Nota_Acum[i]/2
	FinPara
FinSubProceso

subproceso mostrar_promedio(promedio)
	mostrar "PROMEDIOS:"
	para i=1 hasta 5
		Mostrar "El promedio del " i "º estudiante es:" promedio[i]
	FinPara
FinSubProceso

//SubProceso deter_mayorNota1(Nota1P, mayornota Por Referencia)
//	mayornota=Nota1P[1]
//	posicion=1
//	Para i=1 Hasta 5
//		si Nota1P[i]>mayornota Entonces
//			mayornota=Nota1P[1]
//			posicion=i
//		FinSi
//	FinPara
//FinSubProceso

Algoritmo sin_titulo
	Dimension Nota1P[5],Nota2P[5],Nota_Acum[5],promedio[5]
	Cargar_Arr_Notas(Nota1P,Nota2P)
	Acum_Notas(Nota1P,Nota2P,Nota_Acum)
	calcular_promedio(Nota_Acum, promedio)
	Mostrar_Acum_Notas(Nota_Acum)
	mostrar_promedio(promedio)

FinAlgoritmo
