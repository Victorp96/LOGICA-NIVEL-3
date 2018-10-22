//A una sección se le  aplica una evaluación entre 0 y 100 Puntos. Escriba un  programa que lea el nombre y la nota obtenida de 5 estudiantes y calcule:  
//	*Numero de estudiantes con nota perfecta, es decir 100 puntos.  
//	*Cuanta nota acumularon los 5 alumnos    
//	*El acumulado de notas de los estudiantes que no aprobaron   
//	*El acumulado de notas de los estudiantes que aprobaron 
	
Algoritmo Procesar_Notas
	Definir cant_100 como entero
	Definir acum_notas,acum_not_aprob,acum_Nota_reprob como real
	
	cant_100=0
	acum_notas=0
	acum_not_aprob=0
	acum_Nota_reprob=0
	menor_nota=101
	mayor_nota=-1
	nombre_del_mayor=""
	nombre_del_menor=""
	
	Para i=1 hasta 5
		Mostrar "Ingrese el nombre del estudiante: "
		Leer nombre
		Mostrar "Ingrese la nota (0/100) del " i "º estudiante "  
		Leer nota
		Si nota=100
			cant_100=cant_100+1
		FinSi
		acum_notas=acum_notas+nota
		Si nota>=50
			entonces 
			contador_aprobados=contador_aprobados+1
			acum_not_aprob=acum_not_aprob+nota
		sino 
			acum_not_reprob=acum_not_reprob+nota
			contador_reprobados=contador_reprobados+1
		FinSi
		
		si nota<menor_nota entonces
			menor_nota=nota
			nombre_del_menor=nombre
		FinSi
		
		si nota>mayor_nota Entonces
			mayor_nota=nota
			nombre_del_mayor=nombre
		FinSi
	FinPara
	contador_notas=5
	prom_notas=acum_notas/contador_notas
	porc_aprobados=contador_aprobados/contador_notas*100
	porc_reprobados=contador_reprobados/contador_notas*100
	
	Mostrar "Estudiantes con nota perfecta: " cant_100
	Mostrar "Acumulado de todas las notas: "  acum_notas " ptos"
	Mostrar "Acumulado de notas de los aprobados: "  acum_not_aprob " ptos"
	Mostrar "Acumulado de notas de los reprobados: "  acum_not_reprob " ptos"
	Mostrar "Promdedio de la seccion: " prom_notas
	Mostrar "Porcentaje de aprobados: " porc_aprobados "%"
	Mostrar "Porcentaje de reprobados: " porc_reprobados "%"
	Mostrar ""
	Mostrar "La mayor nota la obtuvo " nombre_del_mayor " y fue de " mayor_nota " Ptos"
	Mostrar "La menor nota la obtuvo " nombre_del_menor " y fue de " menor_nota " Ptos"
FinAlgoritmo
