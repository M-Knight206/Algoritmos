Algoritmo SueldoNeto
	Definir Nombre Como Caracter
	Definir Horas Como Real
	Definir Tarifa, Tasa Como Real
	Definir SueldoBruto Como Real
	Definir Impuestos Como Real
	Definir SueldoNheto como Real
	Escribir "Escriba su nombre completo: "
	Leer Nombre
	Escribir "Escriba la cantidad total de horas que usted laboró: "
	Leer Horas
	Tarifa = 0.13
	Tasa = 0.08
	SueldoBruto = Horas * Tarifa
	Impuestos = SueldoBruto * Tasa
	SueldoNheto = SueldoBruto - Impuestos
	Escribir "Tu sueldo bruto es: " SueldoBruto " y tus impuestos son: " Impuestos
	Escribir "Tu sueldo neto es: " SueldoNheto
FinAlgoritmo
