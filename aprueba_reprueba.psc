Algoritmo aprueba_reprueba
	Definir Nota1, Nota2, Nota3, Promedio Como Real
	Escribir "Ingresa las calificaciones: "
	Leer Nota1
	Leer Nota2
	Leer Nota3
	Promedio = redon((Nota1 + Nota2 + Nota3)/3)
	
	Si promedio >= 11 Entonces
		Escribir "El promedio es: " Promedio ", el estudiante está APROBADO."
	SiNo
		Escribir "El promedio es: " Promedio ", el estudiante está DESAPROBADO."
	FinSi
FinAlgoritmo
