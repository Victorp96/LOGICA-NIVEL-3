Funcion precio_unit=Func_precio(talla)
	Segun talla hacer
		"S": precio_unit=2250
		"M": precio_unit=3000
		"L": precio_unit=4500
		"XL": precio_unit=5750
		De Otro Modo:
			precio_unit=0
	FinSegun
FinFuncion

SubProceso calc_descuento(cantidad,descuento Por Referencia)
	si cantidad>0
		Segun cantidad hacer
			6,7,8,9,10,11:
				descuento=0.05
			12,13,14,15,16,17,18,19,20,21,22,23,24:
				descuento=0.10
			De Otro Modo:
				descuento=0.15
		FinSegun
	Sino
		descuento=0
	FinSi
FinSubProceso
Algoritmo sin_titulo
	Definir nombre Como Caracter
	Definir cantidad como entero
	Definir talla como caracter
	Definir precio, descuento, monto_compra, monto_pagar Como Real
	
	Mostrar "Ingrese el nombre del cliente:" Sin Saltar
	Leer nombre
	
	Mostrar "Ingrese el numero de unidades solicitadas:" Sin Saltar
	Leer cantidad
	
	Mostrar "Ingrese su talla S/M/L/XL:" Sin Saltar
	Leer talla
	talla=Mayusculas(talla)
	
	precio_unit=Func_precio(talla)
	calc_descuento(cantidad,descuento)
	
	monto_compra=precio_unit*cantidad
	monto_descuento=monto_compra*descuento
	monto_pagar=monto_compra-monto_descuento
	
	si precio_unit>0
		Entonces
		Mostrar "El nombre del cliente es: " nombre
		Mostrar "Unidades solicitadas: " cantidad
		Mostrar "Talla elegida: " talla
		Mostrar "Monto de compra: " monto_compra " Bs"
		Mostrar "Descuento: " monto_descuento " Bs"
		Mostrar "Monto a pagar: " monto_pagar
	Sino
		Mostrar "La talla no es valida"
	FinSi

FinAlgoritmo
