//Por cada uno de los 5 estudiantes de Introducción a la Computación se conoce: 
//nota obtenida en el primer parcial y nota obtenida en el segundo parcial. Carga dos 
//arreglos, uno con las notas del primer parcial y otro con las notas del segundo parcial 
//y luego obtener un tercer arreglo con el total acumulado por cada estudiante. 
//Imprimir el arreglo que contiene el total acumulado por cada estudiante. 

SubProceso Cargar_Arr_Notas(Nota1P por Referencia,Nota2P por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese las notas del 1er y 2do parcial del " i "º estudiante"
		Leer Nota1P[i],Nota2P[i]
		
	FinPara
FinSubProceso
Funcion  promedio<- calcular_promedio(num,acumulador)
	promedio = acumulador / num
FinFuncion
SubProceso Acum_Notas(Nota1P,Nota2P,Nota_Acum por referencia,promedio Por Referencia)
	Para i=1 hasta 5
		Nota_Acum[i]=Nota1P[i]+Nota2P[i]
		promedio[i] = calcular_promedio(2,Nota_Acum[i])
	FinPara	
FinSubProceso
Funcion prom_mayor<- asignar_mayores(promedio)
	prom_mayor = promedio[1]
	Para i<-1 Hasta 5
		si promedio[i] > prom_mayor
			prom_mayor<- promedio[i]
		FinSi
	FinPara
FinSubProceso
Funcion prom_menor<- asignar_menores(promedio)
	prom_menor = promedio[1]
	Para i<-1 Hasta 5
		si promedio[i] < prom_menor
			prom_menor<- promedio[i]
		FinSi
	FinPara
FinSubProceso
SubProceso notas(promedio, promedio_mayor Por Referencia, promedio_menor Por Referencia)
	promedio_mayor = asignar_mayores(promedio)
	promedio_menor = asignar_menores(promedio)
FinSubProceso
Subproceso Mostrar_Acum_Notas(Nota_Acum, promedio, promedio_mayor, promedio_menor)
	Para i= 1 hasta 5 
		Mostrar "Estudiante Nº " i " > Nota acumulada " Nota_Acum[i] " Nota promedio: " promedio[i]
		Mostrar ""
	FinPara
	Mostrar "El promedio menor es: " promedio_menor
	Mostrar "El promedio mayor es: " promedio_mayor
FinSubProceso
SubProceso enlistar(promedio,promedio_mayor)
	Mostrar "Estudiantes en obtener la mayor nota:"
	cont = 0
	Para i<- 1 Hasta 5
		si promedio[i] == promedio_mayor
			cont=cont + 1
			Mostrar "Posicion: " i
		FinSi
	FinPara
	Mostrar "La mayor nota la obtuvieron " cont " alumnos"
FinSubProceso
SubProceso buscar_promedio(promedio)
	nota_encontrada<-0
	Mostrar "Nota a buscar" Sin Saltar
	Leer nota
	Para i<- 1 Hasta 5
		si promedio[i] == nota
			nota_encontrada<- nota_encontrada + 1
		FinSi
	FinPara
	si nota_encontrada > 0
		Mostrar "Se encontró la nota " nota_encontrada " vez/ces"
	Sino
		Mostrar "No se encontró la nota que buscó"
	FinSi
FinSubProceso
Algoritmo sin_titulo
	Dimension Nota1P[5],Nota2P[5],Nota_Acum[5], promedio[5]
	Cargar_Arr_Notas(Nota1P,Nota2P)
	Acum_Notas(Nota1P,Nota2P,Nota_Acum,promedio)
	notas(promedio,promedio_mayor,promedio_menor)
	Mostrar_Acum_Notas(Nota_Acum, promedio,promedio_mayor,promedio_menor)
	enlistar(promedio,promedio_mayor)
	buscar_promedio(promedio)
FinAlgoritmo
