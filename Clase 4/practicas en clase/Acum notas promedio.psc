SubProceso Cargar_Arr_Notas(Nota1P por Referencia,Nota2P por Referencia)
	Para i=1 hasta 5
		Mostrar "Ingrese las notas del 1er y 2do parcial del" i "º estudiante"
		Leer Nota1P[i],Nota2P[i]		
	FinPara
FinSubProceso

SubProceso Acum_Notas(Nota1P,Nota2P,Nota_Acum por referencia,)
	Para i=1 hasta 5
		Nota_Acum[i]=Nota1P[i]+Nota2P[i]
	FinPara
FinSubProceso

SubProceso promediar(Nota_Acum,Promedio Por Referencia)
	Para i=1 hasta 5
		Promedio[i]=Nota_Acum[i]/2
	FinPara
FinSubProceso

Funcion mayor_promedio <- determinar_mayor_promedio (Promedio )
	mayor_promedio=Promedio[1]
	Para i=2 hasta 5 Hacer
		Si Promedio[i]>mayor_promedio Entonces
			mayor_promedio=promedio[i]
		FinSi		
	FinPara
Fin Funcion

Funcion menor_promedio <- determinar_menor_promedio (Promedio )
	menor_promedio=Promedio[1]
	Para i=2 hasta 5 Hacer
		Si Promedio[i]<mayor_promedio Entonces
			menor_promedio=promedio[i]
		FinSi		
	FinPara
Fin Funcion

Subproceso Mostrar_Acum_Notas(Nota_Acum,Promedio,prom_mayor,prom_menor)
	Para i= 1 hasta 5 
		Mostrar "La nota acumulada del " i "º estudiante es: " Nota_Acum[i]
		Mostrar "El promedio del " i "º estudiante es: " Promedio[i]
		Mostrar ""
	FinPara
	Mostrar "El Mayor Promedio Fue " prom_mayor
	Mostrar "El Menor Promedio Fue " prom_menor
	
FinSubProceso

Algoritmo sin_titulo
	Dimension Nota1P[5],Nota2P[5],Nota_Acum[5],Promedio[5]
	Cargar_Arr_Notas(Nota1P,Nota2P)
	Acum_Notas(Nota1P,Nota2P,Nota_Acum)
	promediar(Nota_Acum,Promedio)
	prom_mayor=determinar_mayor_promedio (Promedio )
	prom_menor=determinar_menor_promedio (Promedio )
	Mostrar_Acum_Notas(Nota_Acum,Promedio,prom_mayor,prom_menor)
FinAlgoritmo
