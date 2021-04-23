!classDefinition: #BibliotecaTest category: 'TP - Martinez - Mariño'!
TestCase subclass: #BibliotecaTest
	instanceVariableNames: 'almanaqueSimulado socioTM harryPoterL elSrDeLosAnillosL bibliotecaUNQ quijote martinFierro rebelionEnLaGranja cronicasMuerteAnunciada socioCon5Libros ejemplarDelSrDeLosAnillosL ejemplarDeQuijote ejemplarDeHarryPotterL ejemplarDeRebelionEnLaGranja ejemplarDeCronicasMuerteAnunciada ejemplarDelMartinFierro'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!BibliotecaTest methodsFor: 'set up' stamp: 'TM 11/25/2020 18:54:14'!
setUp	
	"Almanaque"
	almanaqueSimulado _ AlmanaqueSimulado conFechaActual: November/19/2020.
	
	"Biblioteca"
	bibliotecaUNQ _ Biblioteca conAlmanaque: almanaqueSimulado.
	
	"Socios"
	socioTM _ Socio conNombre: 'Tobias' apellido: 'Martinez'  dni: 554433.
		
	"Libros"
	harryPoterL _ Libro conISBN: 0021 autor: 'J. K. Rowling' titulo: 'Harry Potter' temasRelacionados: {'Magos'.'Magia'}.
	elSrDeLosAnillosL _  Libro conISBN: 0031 autor: ' J. R. R. Tolkien.' titulo: 'El Señor De Los Anillos' temasRelacionados: {'Fantasia'.'Heroico'}.
	quijote _ Libro conISBN: 0041 autor: 'Cervantes' titulo: 'Don Quijote' temasRelacionados: {'Aventuras'.'Fantasia'.'Caballeros'}.
	martinFierro _  Libro conISBN: 0071 autor: 'Jose Hernandez' titulo: 'Martin Fierro' temasRelacionados: {'Gauchos'.'Poesía'}.
	rebelionEnLaGranja _  Libro conISBN: 0060 autor: 'George Orwell' titulo: 'Rebelion en la granja' temasRelacionados: {'Politica'}.
	cronicasMuerteAnunciada _  Libro conISBN: 0094 autor: 'Gabriel Marquez' titulo: 'Cronica de una muerte anunciada' temasRelacionados: {'Aventuras'.'Fantasia'.'Caballeros'}.
	
	
	"socios de bibliotecaUNQ"
	
	bibliotecaUNQ registrarSocio: socioTM.
	
	
	"libros de bibliotecaUNQ"
	
	bibliotecaUNQ registrarLibro: harryPoterL.
	bibliotecaUNQ registrarLibro: quijote.
	bibliotecaUNQ registrarLibro: martinFierro.
	bibliotecaUNQ registrarLibro: rebelionEnLaGranja.
	bibliotecaUNQ registrarLibro: cronicasMuerteAnunciada.
	bibliotecaUNQ registrarLibro: elSrDeLosAnillosL.
	
	
	"Ejemplares a entregar"
	
	
	ejemplarDeHarryPotterL _ EjemplarSemanal de: harryPoterL conNroInventario: 1.
	" 
	ejemplarDelSrDeLosAnillosL _ Ejemplar de: elSrDeLosAnillosL.	
	ejemplarDeQuijote _ Ejemplar de: quijote.
	ejemplarDeRebelionEnLaGranja _ Ejemplar de: rebelionEnLaGranja.
	ejemplarDeCronicasMuerteAnunciada _ Ejemplar de: cronicasMuerteAnunciada .
	ejemplarDelMartinFierro _ Ejemplar de: martinFierro .
	"
	
	"Ejemplares depositados en bibliotecaUNQ"
	
	bibliotecaUNQ añadirEjemplar: 	ejemplarDeHarryPotterL .
	
	"
	bibliotecaUNQ añadirEjemplar: ejemplarDelSrDeLosAnillosL .
	bibliotecaUNQ añadirEjemplar: ejemplarDeQuijote .
	bibliotecaUNQ añadirEjemplar: 	ejemplarDeRebelionEnLaGranja .
	bibliotecaUNQ añadirEjemplar: ejemplarDeCronicasMuerteAnunciada .
	bibliotecaUNQ añadirEjemplar: 		ejemplarDelMartinFierro .
	"
	
	
	
	

	! !


!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/18/2020 18:33:56'!
test01_UnaBibliotecaNuevaNoTieneSociosNiLibrosNiPrestamosRealizados
	|unaBiblioteca|
	unaBiblioteca _ Biblioteca conAlmanaque:  almanaqueSimulado.
	Assert that: unaBiblioteca cantidadSocios isEqualTo: 0.
	Assert that: unaBiblioteca cantidadLibrosEnInventario isEqualTo: 0.
	Assert that: unaBiblioteca cantidadPrestamosRealizados isEqualTo: 0.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/19/2020 16:19:35'!
test02_UnaBibliotecaNuevaTieneUnaFecha
	|unaBiblioteca|
	unaBiblioteca _ Biblioteca conAlmanaque:  almanaqueSimulado.
	Assert that: unaBiblioteca fechaActual isEqualTo: November/19/2020.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/18/2020 18:35:33'!
test03_UnaBibliotecaRegistraAUnNuevoSocio
	|unaBiblioteca  |
	unaBiblioteca _ Biblioteca conAlmanaque:  almanaqueSimulado .
	unaBiblioteca registrarSocio: socioTM.
	Assert that: unaBiblioteca cantidadSocios isEqualTo: 1.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/19/2020 21:22:13'!
test04_UnaBibliotecaRegistraUnNuevoLibro
	|unaBiblioteca|
	unaBiblioteca _ Biblioteca conAlmanaque: almanaqueSimulado.
	unaBiblioteca registrarLibro: harryPoterL.
	Assert that: unaBiblioteca cantidadDeLibrosRegistrados isEqualTo: 1.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 15:45:17'!
test05_UnaBibliotecaAñadaUnEjemplarDeUnLibroAlInventario
	|unaBiblioteca unEjemplar|
	unaBiblioteca _ Biblioteca conAlmanaque: almanaqueSimulado.
	
	unEjemplar _ EjemplarSemanal de: harryPoterL conNroInventario: 42.
	
	unaBiblioteca registrarLibro: harryPoterL.
	unaBiblioteca añadirEjemplar: unEjemplar.
	Assert that: (unaBiblioteca cantidadDeEjemplaresDe: harryPoterL) isEqualTo: 1.
	! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/19/2020 20:39:29'!
test05_UnaBibliotecaNoRegistraDosLibrosConElMismoIsbn
	|unaBiblioteca |
	unaBiblioteca _ Biblioteca conAlmanaque: almanaqueSimulado.
	unaBiblioteca registrarLibro: harryPoterL.
	Assert should: [unaBiblioteca registrarLibro: harryPoterL] signal:  Error withDescription: unaBiblioteca yaExisteLibroConMismoISBN 
	! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 16:39:53'!
test06_UnaBibliotecaNoPuedeAñadirElMismoEjemplarDosVeces
	|unaBiblioteca unEjemplar |
	unaBiblioteca _ Biblioteca conAlmanaque: almanaqueSimulado.
	unEjemplar _ EjemplarSemanal de: harryPoterL conNroInventario: 42 .
	unaBiblioteca registrarLibro: harryPoterL.
	unaBiblioteca añadirEjemplar: unEjemplar .
	
	Assert should: [unaBiblioteca añadirEjemplar: unEjemplar ] signal: Error  withDescription: unaBiblioteca ejemplarYaExisteEnElInventario.
	! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/19/2020 15:21:23'!
test07_UnaBibliotecaLlevaUnAñoDesdeSuInauguracion
	|unaBiblioteca |
	unaBiblioteca _ Biblioteca conAlmanaque: almanaqueSimulado.
	almanaqueSimulado pasarTiempo: 1*year.
	Assert that: unaBiblioteca fechaActual isEqualTo: November/19/2021! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 18:59:18'!
test08_UnaBibliotecaRegistraUnNuevoPrestamo
	

	bibliotecaUNQ otorgarPrestamoA: socioTM delLibro: harryPoterL conNumeroInventario: 1.

	Assert that: bibliotecaUNQ cantidadPrestamosRealizados isEqualTo: 1.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 16:40:46'!
test09_UnaBibliotecaSabeLaFechaDeIngresoDeUnEjemplar
	|unaBiblioteca unEjemplar|
	unaBiblioteca _ Biblioteca conAlmanaque:  almanaqueSimulado.
	unEjemplar _ EjemplarSemanal de: harryPoterL conNroInventario: 72. 
	unaBiblioteca registrarLibro: harryPoterL.
	unaBiblioteca añadirEjemplar: unEjemplar .
	Assert that: (unaBiblioteca fechaDeIngresoDe: unEjemplar) isEqualTo: November/19/2020.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 16:43:31'!
test10_UnaBibliotecaSabeElNumeroDeInventarioDeUnEjemplar
	|unaBiblioteca unEjemplar | 
	
	unaBiblioteca _ Biblioteca conAlmanaque:  almanaqueSimulado.
	
	unEjemplar _ EjemplarSemanal de: harryPoterL conNroInventario: 82 .
	
	unaBiblioteca registrarLibro: harryPoterL.
	unaBiblioteca añadirEjemplar: unEjemplar .
	
	Assert that: (unaBiblioteca numeroDeInventarioDe: unEjemplar) isEqualTo: 82.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 19:00:17'!
test12_UnaBibliotecaSabeSiUnSocioEstaActivo
	
	Assert isTrue: ( bibliotecaUNQ puedePrestarEjemplarA: socioTM) .
		! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM 11/25/2020 19:05:42'!
test14_UnaBibliotecaNoLeDaUnPrestamoAUnSocioCuandoNoCumpleLasCondiciones
	
		
	bibliotecaUNQ registrarSocio: socioTM.
	
	bibliotecaUNQ pasarUnAño.

	bibliotecaUNQ pasarUnAño.	
	
	Assert should: [ bibliotecaUNQ otorgarPrestamoA: socioTM delLibro: harryPoterL conNumeroInventario: 1] signal: Error withDescription: bibliotecaUNQ errorNoSeLePuedeDarElPrestamoAlSocio ! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/26/2020 17:34:36'!
test15_UnaBibliotecaLeRenuevaElPrestamoAUnSocioCuandoElPrestamoNoVencio
	|unEjemplar|
	unEjemplar _ EjemplarSemanal de: harryPoterL  conNroInventario: 90. 
 	bibliotecaUNQ añadirEjemplar: unEjemplar.	
	
	bibliotecaUNQ otorgarPrestamoA: socioTM delLibro: harryPoterL  conNumeroInventario: 90.
	
	bibliotecaUNQ pasarTiempo: 1 * day.
	
	bibliotecaUNQ renovarPrestamoA: socioTM delLibro: harryPoterL.
	
	Assert that: (bibliotecaUNQ fechaDeCierreDePrestamoA: socioTM delLibro: harryPoterL) isEqualTo: November/27/2020.! !

!BibliotecaTest methodsFor: 'biblioteca-test' stamp: 'TM - CEM 11/26/2020 17:43:12'!
test15_UnaBibliotecaNoLeRenuevaElPrestamoAUnSocioCuandoElPrestamoEstaVencido
	|unEjemplar|
	unEjemplar _ EjemplarSemanal de: harryPoterL  conNroInventario: 90. 
 	bibliotecaUNQ añadirEjemplar: unEjemplar.	
	
	bibliotecaUNQ otorgarPrestamoA: socioTM delLibro: harryPoterL  conNumeroInventario: 90.
	
	bibliotecaUNQ pasarTiempo: 8 * day.
	
	Assert should: [bibliotecaUNQ renovarPrestamoA: socioTM delLibro: harryPoterL] signal: Error withDescription: bibliotecaUNQ errorAlRenovarPrestamo! !


!BibliotecaTest methodsFor: 'socio-test' stamp: 'TM - CEM 11/26/2020 16:46:35'!
test01_UnSocioRecienRegistradoPideUnLibroYLaBibliotecaLeOtorgaUnEjemplar
	
	bibliotecaUNQ registrarSocio: socioTM.
	
	
	bibliotecaUNQ otorgarPrestamoA: socioTM delLibro: harryPoterL conNumeroInventario: 1.
	
	Assert isTrue: ( ( socioTM ejemplares )includes: ejemplarDeHarryPotterL).
	
	Assert that: ( bibliotecaUNQ cantidadDeEjemplaresDe: harryPoterL ) isEqualTo: 0.
	

	

	


	! !


!BibliotecaTest methodsFor: 'ejemplar-test' stamp: 'TM 11/25/2020 16:05:37'!
test01_UnEjemplarEsAñadidoAUnaBibliotecaConTiempoDe7Dias

	|unEjemplar |
	
	unEjemplar _ EjemplarSemanal de: harryPoterL conNroInventario: 32 .	
	
	bibliotecaUNQ añadirEjemplar: unEjemplar . 
	
	Assert that: ( bibliotecaUNQ tiempoPrestamoDe: unEjemplar) isEqualTo: 7 * day.! !

!BibliotecaTest methodsFor: 'ejemplar-test' stamp: 'TM 11/25/2020 16:10:22'!
test02_ElTiempoDePrestamoDeUnEjemplarDiarioEsDeUnDia

	| unEjemplar|
	
	unEjemplar _ EjemplarDiario de: harryPoterL conNroInventario: 42.
	
	Assert that: 	unEjemplar tiempoPrestamo isEqualTo: 1 * day.! !


!classDefinition: #AlmanaqueSimulado category: 'TP - Martinez - Mariño'!
Object subclass: #AlmanaqueSimulado
	instanceVariableNames: 'fechaActual'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!AlmanaqueSimulado methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 15:27:38'!
conFechaActual: unaFechaCalendarioGregoriano
	fechaActual _ unaFechaCalendarioGregoriano
	! !


!AlmanaqueSimulado methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 15:30:55'!
fechaActual
	^fechaActual! !


!AlmanaqueSimulado methodsFor: 'actions' stamp: 'TM - CEM 11/19/2020 15:03:20'!
pasarTiempo: unaCantidadDeTiempo
	fechaActual := fechaActual next: unaCantidadDeTiempo.
	! !

!AlmanaqueSimulado methodsFor: 'actions' stamp: 'TM 11/21/2020 20:44:55'!
pasarUnAño
	
	fechaActual := fechaActual next: 1 * year.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlmanaqueSimulado class' category: 'TP - Martinez - Mariño'!
AlmanaqueSimulado class
	instanceVariableNames: ''!

!AlmanaqueSimulado class methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 15:27:10'!
conFechaActual: unaFechaCalendarioGregoriano 
	^ self new conFechaActual: unaFechaCalendarioGregoriano ! !


!classDefinition: #Biblioteca category: 'TP - Martinez - Mariño'!
Object subclass: #Biblioteca
	instanceVariableNames: 'almanaque socios prestamosOtorgados inventario'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!Biblioteca methodsFor: 'accessing' stamp: 'TM 11/25/2020 14:51:27'!
cantidadDeEjemplaresDe: aLibro 
	
	
	 ^  ( self ejemplaresDe: aLibro ) size 
	  
	! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM 11/21/2020 17:27:33'!
cantidadDeLibrosRegistrados
	^ ( inventario keys ) size.! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 18:38:40'!
cantidadPrestamosRealizados
	^prestamosOtorgados size! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 15:45:50'!
cantidadSocios
	^ socios size.! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM 11/25/2020 17:50:56'!
ejemplarDel: unLibro conNumero: unNumero 
	
	^  ( self ejemplaresDe: unLibro ) detect: [:unEjemplar | unEjemplar conElNumero: unNumero]! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM 11/25/2020 15:39:36'!
ejemplaresDe: aLibro

	^ ( inventario at: aLibro )! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM - CEM 11/26/2020 16:51:22'!
errorAlRenovarPrestamo
	^'No se puede renovar prestamo porque el prestamo ya venció.'! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 15:30:45'!
fechaActual
	^ almanaque fechaActual.! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM - CEM 11/26/2020 17:25:52'!
fechaDeCierreDePrestamoA: unSocio delLibro: unLibro 
	|unPrestamo|
	unPrestamo _ prestamosOtorgados detect: [:prestamo | prestamo esDelSocio: unSocio delLibro: unLibro].
	^ unPrestamo fechaDeCierre.! !

!Biblioteca methodsFor: 'accessing' stamp: 'TM 11/23/2020 19:12:13'!
tiempoPrestamoDe: unEjemplar 
	
	^ unEjemplar tiempoPrestamo.! !


!Biblioteca methodsFor: 'as yet unclassified' stamp: 'TM 11/21/2020 17:31:31'!
cantidadLibrosEnInventario
	^ ( inventario values )size! !

!Biblioteca methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 15:28:35'!
conAlmanaque: unAlmanaque
	almanaque _ unAlmanaque
	! !

!Biblioteca methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 22:28:27'!
fechaDeIngresoDe: anEjemplar 
	^anEjemplar fechaIngreso! !

!Biblioteca methodsFor: 'as yet unclassified' stamp: 'TM 11/21/2020 21:17:33'!
initialize
	socios := Set new.
	prestamosOtorgados := Set new.
	inventario := Dictionary new
	! !

!Biblioteca methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 22:38:17'!
numeroDeInventarioDe: unEjemplar
	^unEjemplar numeroEnInventario.! !


!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 15:38:58'!
añadirEjemplar: unEjemplar 	
	
	( (self ejemplaresDe: ( unEjemplar libro) ) includes: unEjemplar) ifTrue: [self error: self ejemplarYaExisteEnElInventario].
	
	self registrarEjemplar: unEjemplar.
	
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 17:55:24'!
añadirEl: unEjemplar a: unSocio 
	
	unSocio recibeElEjemplarDe: unEjemplar.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 17:51:27'!
añadirleElEjemplarDel: unLibro conNumero: unNumero al: unSocio 
	
	| ejemplar |
	
	ejemplar := self ejemplarDel: unLibro conNumero: unNumero.
	
	self añadirEl: ejemplar a: unSocio. ! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/23/2020 19:11:26'!
asignarTiempoDe: unTiempo a: anEjemplar 
	
	
	anEjemplar asignarleTiempo: unTiempo .! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 15:44:43'!
darleFechaDeIngresoA: unEjemplar

	unEjemplar darleFechaDeIngreso: (almanaque fechaActual).
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/21/2020 21:15:48'!
elSocio: aSocio recibeUnPrestamo: prestamo

	^ aSocio libros add: prestamo libro! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 18:32:13'!
otorgarPrestamoA: unSocio delLibro: unLibro conNumeroInventario: unNumero

	self validarSiElSocioEstaAptoParaSacarUnPrestamo: unSocio.
	self validarSiElEjemplarSeEncuentraDisponibleDel: unLibro conNumero: unNumero. 
	self validarSiNoSuperaElMaximoDeLibros: unSocio.
	self validarSiNoPoseeUnEjemplarDel: unLibro el: unSocio.
	
	self registrarPrestamoA: unSocio del: unLibro conNumero: unNumero.	
	
	
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 17:27:40'!
pasarTiempo: unTiempo 
	
	almanaque pasarTiempo: unTiempo.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/18/2020 19:06:47'!
pasarUnAño
	almanaque pasarUnAño.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 17:59:42'!
quitarDelInventarioEl: anEjemplarSemanal 
	self shouldBeImplemented.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 16:44:58'!
quitarEl: unEjemplar de: inventarioDeEjemplares
	inventarioDeEjemplares remove: unEjemplar.
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 18:01:56'!
quitarElEjemplarDel: unLibro conNumero: unNumero 
	|ejemplar ejemplares|
	
	ejemplar := self ejemplarDel: unLibro conNumero: unNumero.
	
	ejemplares := self ejemplaresDe: unLibro.
	
	self quitarEl: ejemplar de: ejemplares.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 15:44:43'!
registrarEjemplar: unEjemplar

	self darleFechaDeIngresoA: unEjemplar.
	( self ejemplaresDe: unEjemplar libro ) add: unEjemplar! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 18:49:12'!
registrarElPrestamoA: unSocio del: unLibro conNumero: unNumero 
	
	|unPrestamo ejemplar|
	
	ejemplar _ self ejemplarDel: unLibro conNumero: unNumero.
	
	unPrestamo _ Prestamo a: unSocio del: ejemplar enElDia: almanaque fechaActual .
	
	prestamosOtorgados add: unPrestamo.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 14:53:58'!
registrarLibro: unLibro
	( self seEncuentraRegistrado: unLibro) ifTrue: [self error: self yaExisteLibroConMismoISBN].
	inventario at: unLibro put: Set new! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/25/2020 18:09:02'!
registrarPrestamoA: unSocio del: unLibro conNumero: unNumero 
	
	self añadirleElEjemplarDel: unLibro conNumero: unNumero al: unSocio.
	self registrarElPrestamoA: unSocio del: unLibro conNumero: unNumero. 
	self quitarElEjemplarDel: unLibro conNumero: unNumero.
	
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/18/2020 15:39:49'!
registrarSocio: unSocio 
	socios add: (unSocio conFecha: almanaque fechaActual).! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 17:32:00'!
renovarPrestamo: aPrestamo
	aPrestamo renovarseElDia: (almanaque fechaActual).
	 ! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 17:08:30'!
renovarPrestamoA: aSocio de: aLibro 
	|prestamoARenovar|
	prestamoARenovar _ prestamosOtorgados detect: [:prestamo | prestamo esDelSocio: aSocio delLibro: aLibro].
	self renovarPrestamo: prestamoARenovar.! !

!Biblioteca methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 16:53:55'!
renovarPrestamoA: unSocio delLibro: unLibro
	self validarRenovacionDePrestamoA: unSocio de: unLibro.
	self renovarPrestamoA: unSocio de: unLibro.
	! !

!Biblioteca methodsFor: 'actions' stamp: 'TM 11/21/2020 17:31:09'!
seEncuentraRegistrado: unLibro

	^ (inventario keys) includes: unLibro! !


!Biblioteca methodsFor: 'testing' stamp: 'TM 11/21/2020 21:50:03'!
hayEjemplarDe: aLibro 
	
	^ ( self cantidadDeEjemplaresDe: aLibro ) > 0   .! !

!Biblioteca methodsFor: 'testing' stamp: 'TM 11/25/2020 18:36:53'!
noEstaSancionado: unSocio

	^ unSocio tieneSancion | unSocio estaVetado. 
	! !

!Biblioteca methodsFor: 'testing' stamp: 'TM 11/25/2020 18:34:29'!
noTieneRegistracionVencida: aSocio 
	
	^ almanaque fechaActual < aSocio fechaExpiracion.! !

!Biblioteca methodsFor: 'testing' stamp: 'TM 11/25/2020 19:01:49'!
puedePrestarEjemplarA: unSocio 
	
	 self validarSiElSocioEstaAptoParaSacarUnPrestamo: unSocio.
	
	^ true! !


!Biblioteca methodsFor: 'errors' stamp: 'TM - CEM 11/19/2020 22:00:53'!
ejemplarYaExisteEnElInventario
	^'El ejemplar ya se encuentra en el inventario'! !

!Biblioteca methodsFor: 'errors' stamp: 'TM 11/21/2020 21:54:31'!
errorAlOtorgarUnPrestamo
	
	^ 'No se ha podido otorgar el prestamo al socio'.! !

!Biblioteca methodsFor: 'errors' stamp: 'TM - CEM 11/19/2020 20:42:38'!
yaExisteLibroConMismoISBN
	^'Ya existe un libro con ese ISBN.'! !


!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:20:18'!
errorElEjemplarNoEstaDisponible

	^ 'No se encuentra el ejemplar en el inventario'! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:30:29'!
errorElSocioYaPoseeElMaximoDeEjemplares

	^ 'El socio ya posee el maximo de ejemplares'! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:38:07'!
errorElSocioYaPoseeUnEjemplarDelLibroElegido

	^ 'El socio ya posee un ejemplar del libro'! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 18:25:33'!
errorNoSeLePuedeDarElPrestamoAlSocio

	^ 'El socio no es valido para obtener un prestamo'! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:29:05'!
maximoDeEjemplaresPorSocio

	^ 5! !

!Biblioteca methodsFor: 'validations' stamp: 'TM - CEM 11/26/2020 17:49:53'!
validarRenovacionDePrestamoA: unSocio de: unLibro 
	|prestamoARenovar| 
	prestamoARenovar _ prestamosOtorgados detect: [:prestamo | prestamo esDelSocio: unSocio delLibro: unLibro].
	((prestamoARenovar fechaDeCierre) <= almanaque fechaActual) ifTrue: [self error: self errorAlRenovarPrestamo].! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:25:15'!
validarSiElEjemplarSeEncuentraDisponibleDel: aLibro conNumero: unNumero 
	
	( ( self ejemplaresDe: aLibro ) anySatisfy: [:unEjemplar| unEjemplar conElNumero: unNumero] )
			ifFalse:[self error: self errorElEjemplarNoEstaDisponible]! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 19:01:13'!
validarSiElSocioEstaAptoParaSacarUnPrestamo: unSocio

	( self noTieneRegistracionVencida: unSocio ) & ( self noEstaSancionado: unSocio )
		ifFalse: [self error: self errorNoSeLePuedeDarElPrestamoAlSocio] 
		
	! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 18:21:27'!
validarSiEstaAptoParaObtenerElPrestamoElSocio: UnSocio
	self shouldBeImplemented.! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:38:07'!
validarSiNoPoseeUnEjemplarDel: aLibro el: aSocio 
	
	( aSocio ejemplares anySatisfy: [:unEjemplar | unEjemplar noEsElLibro: aLibro])
		ifTrue: [self error: self errorElSocioYaPoseeUnEjemplarDelLibroElegido]! !

!Biblioteca methodsFor: 'validations' stamp: 'TM 11/25/2020 17:30:29'!
validarSiNoSuperaElMaximoDeLibros: aSocio 
	
	(aSocio cantidadDeEjemplares < self maximoDeEjemplaresPorSocio )
		ifFalse: [self error: self errorElSocioYaPoseeElMaximoDeEjemplares]	.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Biblioteca class' category: 'TP - Martinez - Mariño'!
Biblioteca class
	instanceVariableNames: ''!

!Biblioteca class methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 15:28:12'!
conAlmanaque: unAlmanaque 
	^ self new conAlmanaque: unAlmanaque ! !


!classDefinition: #Ejemplar category: 'TP - Martinez - Mariño'!
Object subclass: #Ejemplar
	instanceVariableNames: 'libro codigoDeInventario codigo libroDeEjemplar fechaIngreso numeroDeInventario tiempoDePrestamo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!Ejemplar methodsFor: 'initialization' stamp: 'TM - CEM 11/26/2020 16:41:23'!
de: aLibro conNroInventario: unNumero 
	
	libro := aLibro.
	numeroDeInventario := unNumero.
	! !


!Ejemplar methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 22:25:13'!
darleFechaDeIngreso: unaFecha 
	fechaIngreso _ unaFecha! !

!Ejemplar methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 22:28:37'!
fechaIngreso
	^fechaIngreso! !

!Ejemplar methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 22:38:35'!
numeroEnInventario
	^ numeroDeInventario.! !

!Ejemplar methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 16:32:07'!
tiempoPrestamo
	
	self subclassResponsibility .! !


!Ejemplar methodsFor: 'actions' stamp: 'TM - CEM 11/19/2020 22:37:44'!
asignarleNumeroDeInventario: unNumero
	numeroDeInventario _ unNumero.! !

!Ejemplar methodsFor: 'actions' stamp: 'TM 11/25/2020 14:04:32'!
asignarleTiempo: unTiempo 
	
	tiempoDePrestamo := unTiempo.! !


!Ejemplar methodsFor: 'testing' stamp: 'TM - CEM 11/26/2020 16:39:50'!
conElNumero: unNumero 
	
	^ numeroDeInventario = unNumero.! !

!Ejemplar methodsFor: 'testing' stamp: 'TM - CEM 11/26/2020 17:20:34'!
noEsElLibro: unLibro
	^(libro = unLibro) not! !


!Ejemplar methodsFor: 'accessing' stamp: 'TM - CEM 11/26/2020 16:39:55'!
libro
	
	^ libro.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Ejemplar class' category: 'TP - Martinez - Mariño'!
Ejemplar class
	instanceVariableNames: ''!

!Ejemplar class methodsFor: 'instance creation' stamp: 'TM - CEM 11/26/2020 16:41:23'!
de: unLibro conNroInventario: unNumeroDeInventario 
	
	^self new de: unLibro conNroInventario: unNumeroDeInventario ! !


!Ejemplar class methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 15:26:24'!
de: aLibro 
	self shouldBeImplemented.! !


!classDefinition: #EjemplarDiario category: 'TP - Martinez - Mariño'!
Ejemplar subclass: #EjemplarDiario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!EjemplarDiario methodsFor: 'accessing' stamp: 'TM 11/25/2020 16:32:46'!
tiempoPrestamo
	
	^ 1 * day.! !


!classDefinition: #EjemplarSemanal category: 'TP - Martinez - Mariño'!
Ejemplar subclass: #EjemplarSemanal
	instanceVariableNames: 'nroInventario'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!EjemplarSemanal methodsFor: 'accessing' stamp: 'TM 11/25/2020 16:32:58'!
tiempoPrestamo
	
	^ 7 * day.! !



!classDefinition: #Libro category: 'TP - Martinez - Mariño'!
Object subclass: #Libro
	instanceVariableNames: 'isbn autor titulo temasRelacionados fechaIngreso nroEnInventario'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!Libro methodsFor: 'initialization' stamp: 'TM - CEM 11/18/2020 15:54:33'!
initializeConISBN: unISBN autor: unAutor titulo: unTitulo temasRelacionados: unaListaDeTemas 
	isbn:= unISBN.
	autor := unAutor.
	titulo := unTitulo.
	temasRelacionados := unaListaDeTemas.! !


!Libro methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 16:58:54'!
isbn
	^isbn! !

!Libro methodsFor: 'accessing' stamp: 'TM - CEM 11/18/2020 17:14:52'!
numeroEnInventario
	^nroEnInventario.
	! !


!Libro methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 15:07:50'!
= unLibro
	^ self isbn = unLibro isbn
	! !

!Libro methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 17:13:02'!
conFecha: unaFecha conNroInventario: unNumeroDeInventario 
	fechaIngreso _ unaFecha.
	nroEnInventario _ unNumeroDeInventario. ! !

!Libro methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/19/2020 15:12:56'!
hash
	^self isbn.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Libro class' category: 'TP - Martinez - Mariño'!
Libro class
	instanceVariableNames: ''!

!Libro class methodsFor: 'instance creation' stamp: 'TM - CEM 11/18/2020 15:53:13'!
conISBN: unISBN autor: unAutor titulo: unTitulo temasRelacionados: unaListaDeTemas 
	^self new initializeConISBN: unISBN autor: unAutor titulo: unTitulo temasRelacionados: unaListaDeTemas ! !


!classDefinition: #Prestamo category: 'TP - Martinez - Mariño'!
Object subclass: #Prestamo
	instanceVariableNames: 'socio fechaDeInicio fechaDeCierre ejemplar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!Prestamo methodsFor: 'initialization' stamp: 'TM - CEM 11/26/2020 16:42:07'!
a: unSocio del: unEjemplar enElDia: unaFecha  
	
	socio _ unSocio.
	ejemplar _ unEjemplar.
	fechaDeInicio _ unaFecha.
	fechaDeCierre _ unaFecha next: unEjemplar tiempoPrestamo .! !


!Prestamo methodsFor: 'accessing' stamp: 'TM 11/24/2020 20:22:21'!
fechaDeCierre
	
	^fechaDeCierre! !

!Prestamo methodsFor: 'accessing' stamp: 'TM 11/24/2020 20:12:02'!
fechaDeInicio
	
	^fechaDeInicio! !

!Prestamo methodsFor: 'accessing' stamp: 'TM - CEM 11/26/2020 17:05:47'!
libro
	^ejemplar libro! !

!Prestamo methodsFor: 'accessing' stamp: 'TM - CEM 11/19/2020 15:33:30'!
socio
	^socio! !


!Prestamo methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 17:13:20'!
renovarse
	fechaDeCierre := fechaDeCierre next: 7 * day.! !

!Prestamo methodsFor: 'actions' stamp: 'TM - CEM 11/26/2020 17:32:37'!
renovarseElDia: unaFecha 
	fechaDeCierre _ unaFecha next: 7 * day.! !


!Prestamo methodsFor: 'as yet unclassified' stamp: 'TM 11/24/2020 20:18:32'!
conFechaDeIngreso: unaFecha
	
	| fechaDeEntrega |
	fechaDeEntrega _ unaFecha next: 7 * day.
	
	fechaDeInicio _ unaFecha.
	fechaDeCierre _ fechaDeEntrega.! !


!Prestamo methodsFor: 'testing' stamp: 'TM - CEM 11/26/2020 17:06:10'!
esDelSocio: unSocio delLibro: unLibro 
	^(socio = unSocio) & (self libro = unLibro) ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Prestamo class' category: 'TP - Martinez - Mariño'!
Prestamo class
	instanceVariableNames: ''!

!Prestamo class methodsFor: 'instance creation' stamp: 'TM - CEM 11/26/2020 16:42:07'!
a: unSocio del: unEjemplar enElDia: unaFecha  
	
	^self new a: unSocio del: unEjemplar enElDia: unaFecha! !

!Prestamo class methodsFor: 'instance creation' stamp: 'TM - CEM 11/18/2020 18:41:43'!
alSocio: unSocio delLibro: unLibro 
	^self new initializeAlSocio: unSocio delLibro: unLibro ! !


!classDefinition: #Socio category: 'TP - Martinez - Mariño'!
Object subclass: #Socio
	instanceVariableNames: 'nombre apellido dni fechaIngreso libros ejemplares fechaExpiracion sanciones'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP - Martinez - Mariño'!

!Socio methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 18:38:29'!
conFecha: unaFecha
	fechaIngreso _ unaFecha.
	ejemplares _ Set new.
	fechaExpiracion _ unaFecha next: 1 * year.
	sanciones _ Bag new.! !

!Socio methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 18:29:30'!
conNombre: unNombre apellido: unApellido dni: unDni 
	nombre _ unNombre.
	apellido _ unApellido.
	dni _ unDni. 
	! !

!Socio methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 17:39:25'!
ejemplares
	
	^ejemplares! !

!Socio methodsFor: 'as yet unclassified' stamp: 'TM 11/25/2020 17:56:35'!
recibeElEjemplarDe: unEjemplar

	ejemplares add: unEjemplar. 
	
	! !


!Socio methodsFor: 'accessing' stamp: 'TM 11/25/2020 17:31:09'!
cantidadDeEjemplares
	
	^ ejemplares size! !

!Socio methodsFor: 'accessing' stamp: 'TM 11/25/2020 18:38:57'!
estaVetado
	
	^ ( sanciones size ) < 3 ! !

!Socio methodsFor: 'accessing' stamp: 'TM 11/25/2020 18:33:43'!
fechaExpiracion
	
	^fechaExpiracion! !

!Socio methodsFor: 'accessing' stamp: 'TM 11/25/2020 18:37:35'!
tieneSancion
	
	^ false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Socio class' category: 'TP - Martinez - Mariño'!
Socio class
	instanceVariableNames: ''!

!Socio class methodsFor: 'as yet unclassified' stamp: 'TM - CEM 11/18/2020 15:36:25'!
conNombre: unNombre apellido: unApellido dni: unDni 
	^self new conNombre: unNombre apellido: unApellido dni: unDni ! !
