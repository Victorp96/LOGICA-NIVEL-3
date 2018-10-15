// Este codigo ha sido generado por el modulo psexport 20160408-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function sin_titulo() {
	var acum_notasaprobados, aprobados, notasperfectas;
	var i = new Number();
	var nota = new Number();
	var acum_notas = new Number();
	var acum_notasnoaprobados = new Number();
	var nombre = new String();
	acum_notas = 0;
	notasperfectas = 0;
	acum_notasaprobados = 0;
	acum_notasnoaprobados = 0;
	for (i=1;i<=5;i++) {
		document.write("Ingrese el nombre del estudiante: ",'<BR/>');
		nombre = prompt();
		document.write("Ingrese la nota del estudiante: ",'<BR/>');
		nota = Number(prompt());
		acum_notas = acum_notas+nota;
		if (nota==100) {
			notasperfectas = notasperfectas+1;
		}
		if (nota>=80) {
			aprobados = aprobados+1;
			acum_notasaprobados = acum_notasaprobados+nota;
		} else {
			acum_notasnoaprobados = acum_notasnoaprobados+nota;
		}
	}
	document.write("Numero de estudiantes con nota perfecta: ",notasperfectas,'<BR/>');
	document.write("Nota acumulada por los 5 alumnos: ",acum_notas,'<BR/>');
	document.write("Acumulado de notas de los estudiantes que no aprobaron: ",acum_notasnoaprobados,'<BR/>');
	document.write("Numero de estudiantes aprobados: ",aprobados,'<BR/>');
	document.write("Acumulado de notas de los estudiantes que aprobaron: ",acum_notasaprobados,'<BR/>');
}

