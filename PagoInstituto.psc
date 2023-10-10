Algoritmo PagoInstituto
	Definir Carrera Como Caracter
	Definir NomEstudiante Como Caracter
	Definir Matricula, Mensualidad Como Real
	Definir MultaPorRetraso, DescuentoMatricula, DescuentoPensiones Como Real
	
	Escribir "*** --- Instituto TECHMAX S.A.C. --- ***"
	Escribir "SISTEMA DE PAGOS DE MATRÍCULAS Y PENSIONES"
	Escribir "-------------------------------------------"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	
	Escribir "Seleccione la carrera del estudiante:"
	Escribir "[1] Computación e Informática"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administración"
	Leer Carrera
	
	Segun Carrera Hacer
		Caso "1":
			Matricula <- 300
			Mensualidad <- 450
		Caso "2":
			Matricula <- 200
			Mensualidad <- 350
		Caso "3":
			Matricula <- 250
			Mensualidad <- 400
		De Otro Modo:
			Escribir "Carrera no válida."
		
	FinSegun
	
	Escribir "¿El estudiante está dentro del rango de fechas permitidas? (SI/NO)" Sin Saltar
	Leer conFecha
	
	Si (conFecha = "NO") Entonces
		MultaPorRetraso <- Mensualidad * 0.01
		Mensualidad <- Mensualidad + MultaPorRetraso
		Escribir "Se ha aplicado una multa del 1% a la mensualidad."
		Escribir "La nueva mensualidad es: ", Mensualidad
	FinSi
	
	Escribir "¿Cómo desea pagar?"
	Escribir "[1] Matrícula individualmente"
	Escribir "[2] Matrícula y mensualidad"
	Escribir "[3] Matrícula y mensualidades"
	Escribir "[4] Pago de todo el semestre (incluye matrícula)"
	Escribir "[5] Pago de toda la carrera"
	Leer opcionMenu
	
	Segun opcionMenu Hacer
		Caso "1":
			Si (conFecha = "NO") Entonces
				DescuentoMatricula <- 0
				DescuentoPensiones <- 0
				Escribir "Resumen del pago:"
				Escribir "------------------"
				Escribir "Matrícula: ", Matricula
				Escribir "Mensualidad: ", 0
				Escribir "Descuento en matrícula: ", DescuentoMatricula
				Escribir "Descuento en pensiones: ", DescuentoPensiones
				Escribir "Total a pagar: ", (Matricula - DescuentoMatricula - DescuentoPensiones)
			SiNo
			DescuentoMatricula <- 0
			DescuentoPensiones <- 0
			Escribir "Resumen del pago:"
			Escribir "------------------"
			Escribir "Matrícula: ", Matricula
			Escribir "Mensualidad: ", 0
			Escribir "Descuento en matrícula: ", DescuentoMatricula
			Escribir "Descuento en pensiones: ", DescuentoPensiones
			Escribir "Total a pagar: ", (Matricula - DescuentoMatricula - DescuentoPensiones)
		FinSi
		
		Caso "2":
            Si (conFecha = "NO") Entonces
				DescuentoMatricula <- 0
				DescuentoPensiones <- 0
				Escribir "Resumen del pago:"
				Escribir "------------------"
				Escribir "Matrícula: ", Matricula
				Escribir "Mensualidad: ", Mensualidad
				Escribir "Descuento en matrícula: ", DescuentoMatricula
				Escribir "Descuento en pensiones: ", DescuentoPensiones
				Escribir "Total a pagar: ", (Matricula + Mensualidad + Mensualidad * 0.01 - DescuentoMatricula - DescuentoPensiones)
				
			SiNo
			DescuentoMatricula <- 0
			DescuentoPensiones <- 0
			Escribir "Resumen del pago:"
			Escribir "------------------"
			Escribir "Matrícula: ", Matricula
			Escribir "Mensualidad: ", Mensualidad
			Escribir "Descuento en matrícula: ", DescuentoMatricula
			Escribir "Descuento en pensiones: ", DescuentoPensiones
			Escribir "Total a pagar: ", (Matricula + Mensualidad - DescuentoMatricula - DescuentoPensiones)
		FinSi
	Caso "3":
		Si (conFecha = "NO") Entonces
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
		SiNo
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
		FinSi
		
		Caso "4":
			Si (conFecha = "NO") Entonces
				DescuentoMatricula <- Matricula *2* 0.10
				DescuentoPensiones <- (Mensualidad *2- MultaPorRetraso) * 0.20
				Escribir "Resumen del pago:"
				Escribir "------------------"
				Escribir "Matrícula: ", Matricula  * 2
				Escribir "Mensualidad: ", Mensualidad * 2 + Mensualidad *2* 0.01
				Escribir "Descuento en matrícula: ", DescuentoMatricula
				Escribir "Descuento en pensiones: ", DescuentoPensiones
				Escribir "Total a pagar: ", (Matricula *2+ Mensualidad *2+ Mensualidad *2* 0.01 - DescuentoMatricula - DescuentoPensiones)
				
			SiNo
			DescuentoMatricula <- Matricula * 2 * 0.10
			DescuentoPensiones <- (Mensualidad * 2 - MultaPorRetraso) * 0.20
			Escribir "Resumen del pago:"
			Escribir "------------------"
			Escribir "Matrícula: ", Matricula * 2
			Escribir "Mensualidad: ", Mensualidad * 2
			Escribir "Descuento en matrícula: ", DescuentoMatricula
			Escribir "Descuento en pensiones: ", DescuentoPensiones
			Escribir "Total a pagar: ", (Matricula * 2 + Mensualidad * 2 - DescuentoMatricula - DescuentoPensiones )
		FinSi
	    Caso "5":
	    Si (conFecha = "NO") Entonces
			DescuentoMatricula <- Matricula*6* 0.20
			DescuentoPensiones <- (6 * Mensualidad - MultaPorRetraso) * 0.40
			Escribir "Resumen del pago:"
			Escribir "------------------"
			Escribir "Matrícula: ", Matricula * 6
			Escribir "Mensualidad: ", Mensualidad * 6 + Mensualidad * 6 * 0.01
			Escribir "Descuento en matrícula: ", DescuentoMatricula
			Escribir "Descuento en pensiones: ", DescuentoPensiones
			Escribir "Total a pagar: ", (Matricula*6 + Mensualidad * 6 + Mensualidad * 6 *0.01 - DescuentoMatricula - DescuentoPensiones)
			
		SiNo
			DescuentoMatricula <- Matricula*6* 0.20
			DescuentoPensiones <- (6 * Mensualidad - MultaPorRetraso) * 0.40
			Escribir "Resumen del pago:"
			Escribir "------------------"
			Escribir "Matrícula: ", Matricula * 6
			Escribir "Mensualidad: ", Mensualidad * 6
			Escribir "Descuento en matrícula: ", DescuentoMatricula
			Escribir "Descuento en pensiones: ", DescuentoPensiones
			Escribir "Total a pagar: ", (Matricula * 6 + Mensualidad * 6 - DescuentoMatricula - DescuentoPensiones )
		FinSi	
		De Otro Modo:
			Escribir "Opción de pago no válida."
			
	FinSegun
	
	
FinAlgoritmo
