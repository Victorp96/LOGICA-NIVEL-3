Algoritmo sin_titulo
	tama�o=10
	Dimension numeros[tama�o]
	
	Para i=1 Hasta tama�o
		numeros[i]=Aleatorio(1,100)
	FinPara
	
	Mostrar "Original"
	para i=1 Hasta tama�o
		Para j=1 hasta tama�o-1
		FinPara
		mostrar numeros[i]
	FinPara
	

	Mostrar "Ascendente:"
	Para i=1 hasta tama�o-1
		Para j=1 hasta tama�o-1
			si numeros[j]<numeros[j+1]
				
				aux=numeros[j]
				numeros[j]=numeros[j+1]
				numeros[j+1]=aux
			FinSi
		FinPara

	FinPara
	Para i=1 hasta tama�o
		Mostrar numeros[i]
	FinPara
	Mostrar ""
	Mostrar "Descendente:"
	Para i=1 hasta tama�o-1
		Para j=1 hasta tama�o-1
			si numeros[j]>numeros[j+1]
				
				aux=numeros[j]
				numeros[j]=numeros[j+1]
				numeros[j+1]=aux
			FinSi
		FinPara
		
	FinPara
	Para i=1 hasta tama�o
		Mostrar numeros[i]
	FinPara

FinAlgoritmo
