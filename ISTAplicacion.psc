Algoritmo ISTAplicacion
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero
	Definir conFecha Como Numero
	Definir Matricula, Mensualidad Como Real
	Escribir "*** --- Instituto Superior Tecnológico Aplicación ---***"
	Escribir "SISTEMA DE PAGOS DE MATRÍCULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	
	Escribir "¿Qué carrera estudia? "
	Escribir "[1] Computación e Informática"
	Escribir "[2] Secretariado Ejectivo"
	Escribir "[3] Administración"
	Escribir "Seleccione la opción: " Sin Saltar
	
	Leer Carrera
	Si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	
	Si (Carrera = 2) Entonces
			Matricula = 200
			Mensualidad = 350
		FinSi
	Si (Carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi
	
	Escribir "¿Está en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = SI (0) = NO" Sin saltar
	Leer conFecha
	Si (conFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante está dentro del rango de las fechas permitidas " Sin Saltar
		Escribir "¿Qué concepto desea pagar?"
		Escribir "[1] Matrícula o mensualidad"
		Escribir "[2] Matrícula y mensualidades"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar
		Leer concepto
		Si (concepto = 1) Entonces
			Definir OpcionMM Como Entero
			Escribir "Elige la opción para pagar: "
			Escribir "[1] Matrícula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			Si OpcionMM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			FinSi
		Sino	
			Escribir "No se puede realizar la operación"
		FinSi
		Si (concepto = 2) Entonces
			Definir NroMensualidades Como Entero
			Escribir "¿Cuántas mensualidades desea pagar?"
			Leer NroMensualidades
			Si (NroMensualidades >= 2) Y (NroMensualidades <= 4) Entonces
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula - NueMatricula) + ((Mensualidad - NueMensualidad) * NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "No se puede realizar esta operación."
			FinSi
			
			Escribir "Elige la opción para pagar: "
			Escribir "[1] Matrícula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			Si OpcionMM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			FinSi
		Sino	
			Escribir "No se puede realizar la operación"
		FinSi
		
	SiNo
		Escribir "El estudiante está fuera del rango de las fechas permitidas"
		Definir multa Como Real
		multa = mensualidad * 0.01
		Mensualidad = mensualidad + multa
		Escribir "Se ha aplicado una multa del 1% a la mensualidad."
		Escribir "La nueva mensualidad es: " mensualidad
		
	FinSi
	Si (Concepto = 3) Entonces
		
		Definir NueMatricula, NueMensualidad, MnotoPagar Como Real
		NueMatricula = Matricula * 0.10
		NueMensualidad = Mensualidad  * 0.20
		MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad) * NroMensualidades)
		Escribir "Usted debe pagar: " MontoPagar
	FinSi
	Si (Concepto = 4) Entonces
		
		Definir NueMatricula, NueMensualidad, MnotoPagar Como Real
		NueMatricula = Matricula * 0.20
		NueMensualidad = Mensualidad  * 0.40
		MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad) * NroMensualidades * 300)
		Escribir "Usted debe pagar: " MontoPagar
	FinSi
FinAlgoritmo
