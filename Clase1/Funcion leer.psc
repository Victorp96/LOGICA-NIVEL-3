Funcion Carac_leido=Func_Leer_Caracter(Mensaje,CarVal1,CaracVal2)
	Definir Caract como caracter
	Repetir 
		Mostrar Mensaje
		Leer Caract
		Caract_Leido=Mayusculas(Caract)
	Hasta Que Caract_Leido=CarVal1 o Carac_leido=CaracVal2 
FinFuncion

Algoritmo sin_titulo
	sexo=Func_Leer_Caracter("El sexo de la persona","F","M")
	respuesta= Func_Leer_Caracter("¿Desea continuar S/N?","S","N")
FinAlgoritmo
