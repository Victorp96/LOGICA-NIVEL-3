Algoritmo sin_titulo
	Definir i, nota Como Entero
	Definir acum_notas, acum_notasNoaprobados Como Entero
	Definir nombre como caracter
	
	acum_notas=0
	notasPerfectas=0
	acum_notasAprobados=0
	acum_notasNoaprobados=0
	Para i=1 Hasta 5 Hacer
		//Mostrar "Ingrese el nombre del estudiante: "
		//Leer nombre;
		Mostrar "Ingrese la nota del " i "º estudiante"
		Leer nota
		si nota=100 Entonces
			notasPerfectas=notasPerfectas+1
		FinSi
		acum_notas=acum_notas+nota
		si nota>=50 Entonces
			aprobados=aprobados+1
			acum_notasAprobados=acum_notasAprobados+nota
		Sino
			acum_notasNoaprobados=acum_notasNoaprobados+nota
		FinSi
	FinPara
	
	Mostrar "Numero de estudiantes con nota perfecta: " notasPerfectas
	Mostrar "Nota acumulada por los 5 alumnos: " acum_notas
	Mostrar "Acumulado de notas de los estudiantes que no aprobaron: " acum_notasNoaprobados
	Mostrar "Numero de estudiantes aprobados: " aprobados
	Mostrar "Acumulado de notas de los estudiantes que aprobaron: " acum_notasAprobados
	
FinAlgoritmo
