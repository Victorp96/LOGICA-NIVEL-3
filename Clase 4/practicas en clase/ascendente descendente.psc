Algoritmo sin_titulo
	tamaño=10
	Dimension numeros[tamaño]
	
	Para i=1 Hasta tamaño
		numeros[i]=Aleatorio(1,100)
	FinPara
	
	Mostrar "Original"
	para i=1 Hasta tamaño
		Para j=1 hasta tamaño-1
		FinPara
		mostrar numeros[i]
	FinPara
	

	Mostrar "Ascendente:"
	Para i=1 hasta tamaño-1
		Para j=1 hasta tamaño-1
			si numeros[j]<numeros[j+1]
				
				aux=numeros[j]
				numeros[j]=numeros[j+1]
				numeros[j+1]=aux
			FinSi
		FinPara

	FinPara
	Para i=1 hasta tamaño
		Mostrar numeros[i]
	FinPara
	Mostrar ""
	Mostrar "Descendente:"
	Para i=1 hasta tamaño-1
		Para j=1 hasta tamaño-1
			si numeros[j]>numeros[j+1]
				
				aux=numeros[j]
				numeros[j]=numeros[j+1]
				numeros[j+1]=aux
			FinSi
		FinPara
		
	FinPara
	Para i=1 hasta tamaño
		Mostrar numeros[i]
	FinPara

FinAlgoritmo
