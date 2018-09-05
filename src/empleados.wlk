/** First Wollok example */ 
object gimenez {

	var sueldo = 15000
	var ahorro = 0
	// el mes para qué?
	var mes = 1

	// es un método de consulta o de órden??
	// es un método de órden, por lo tanto, no debería devolver nada
	// no está mal, es sólo para que lo tengas en cuenta, 
	// por si en algún momento esto te genera confusión
	method cobrarsueldo() {
		mes = mes + 1
		ahorro = ahorro + sueldo
		return sueldo
	}

	method totaldinero() {
		return ahorro
	}

	method actualizarprecio(nuevosueldo) {
		sueldo = nuevosueldo
	}

}

object baigorria {

	var cantidadempanada = 0
	var ahorro = 0
	var mes = 1
	var deuda = 0

	// en este método, la variable ganancia en realidad no la necesitas
	// ahorro += self.cobrarganancia(producto)
	method cobrarsueldo(producto) {
		var ganancia = 0
		mes = mes + 1
		ganancia = self.cobrarganancia(producto)
		ahorro = ahorro + ganancia
		cantidadempanada = 0
		return ganancia
	}

	method venderempanada() {
		cantidadempanada = cantidadempanada + 1
	}

	method cobrarganancia(producto) {
		return cantidadempanada * producto.obtenerprecio()
	}

	method gastar(dinero) {
		deuda = (0.min(ahorro - dinero)) * -1
		ahorro = 0.max(ahorro - dinero)
	}

	method totaldinero() {
		return ahorro
	}

	method totaldeuda() {
		return deuda
	}

	method pagardeuda() {
		var descuento = 0
		descuento = deuda
		deuda = deuda - ahorro
		deuda = 0.max(deuda)
		ahorro = 0.max(ahorro - descuento)
		return deuda
	}

}

object galvan {

	var fondosueldo = 30000

	method liquidarsueldo(empleado) {
		fondosueldo = empleado.cobrarsueldo()
	}

	method liquidarsueldo(empleado, producto) {
		fondosueldo = empleado.cobrarsueldo(producto)
	}

	method aumentarsueldo(empleado, nuevosueldo) {
		empleado.actualizarsueldo(nuevosueldo)
	}

	method aumentarprecio(producto, nuevoprecio) {
		producto.actualizarprecio(nuevoprecio)
	}

}

object empanada {

	var precio = 15

	method obtenerprecio() {
		return precio
	}

	method actualizarprecio(nuevoprecio) {
		precio = nuevoprecio
	}

}

