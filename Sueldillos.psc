Algoritmo Sueldillos
	Definir s, t como entero;
	Definir g como caracter;
	Definir desc, total como real;
	
	Escribir "Ingrese sueldo : ";
	Leer s;
	Escribir "Ingrese Género: Hombre [H] Mujer [M]";
	Leer g;
	Escribir "Seleccionar Tarjeta Obrero [1] Empleado [2]";
	Leer t;
	Si g="h" o g="H" Entonces
		Segun t Hacer
			1: desc=s*0.15;
			2: desc=s*0.20;
			De Otro Modo:
				Escribir "Error de selección ";
		FinSegun;
	SiNo
		Si g="m"o g="M" Entonces
			Segun t Hacer
				1: desc=s*0.10;
				2: desc=s*0.15;
				De Otro Modo:
					Escribir "Error de selección ";
			FinSegun
		SiNo
			Escribir "Género incorrecto";
		FinSi
	FinSi
		total=s-desc;
		Escribir "El descuento es: ",desc;
		Escribir "Total a pagar: ", total;
	
FinAlgoritmo
