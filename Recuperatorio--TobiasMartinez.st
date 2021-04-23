!classDefinition: #CuistifyTest category: #'Recuperatorio-TobiasMartinez'!
TestCase subclass: #CuistifyTest
	instanceVariableNames: 'unaAppCuistify enzoL tomasJ albumG albumJ albumF alexR agustinM albumP'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!CuistifyTest methodsFor: 'usuario-test' stamp: 'TM 12/3/2020 17:21:49'!
test_001UnUsuarioArtistaSubeSuPrimerAlbumALaPlataforma

	|cuistifyApp santiL albumA albumB |
	"setup"
	albumA _ Album conTitulo: 'meteora' cantidadDeTemas: 15 precio: 15  * peso.
	albumB _ Album conTitulo: 'Led Zeppelin IV' cantidadDeTemas: 10 precio: 5  * peso.

	cuistifyApp _ Cuistify new.
	santiL _ UsuarioArtista new.
	
	
	cuistifyApp registrarA: santiL.
	cuistifyApp subirAlbum: albumA de: santiL.
	cuistifyApp subirAlbum: albumB de: santiL.
	
	Assert isTrue: (( cuistifyApp albumesDe: santiL ) includes: albumA).! !

!CuistifyTest methodsFor: 'usuario-test' stamp: 'TM 12/4/2020 14:26:52'!
test_002UnUsuarioMelomanoEscuchaUnAlbumYLasRegaliasDelAutorAumetnan

	
	unaAppCuistify cargarSaldo: ( 500 * peso ) a: enzoL.
	
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	
	
	
	Assert that: (unaAppCuistify regaliasDe: tomasJ) isEqualTo: 51 * peso.
	Assert that: (unaAppCuistify reputacionDe: enzoL) isEqualTo: 2.! !

!CuistifyTest methodsFor: 'usuario-test' stamp: 'TM 12/3/2020 16:35:21'!
test_003UnUsuarioArtistaEscuchaUnAlbum


	
	unaAppCuistify escucharAlbum: albumG por: alexR .
	
	
	Assert that: ( unaAppCuistify reputacionDe: tomasJ) isEqualTo: 1.! !

!CuistifyTest methodsFor: 'usuario-test' stamp: 'TM 12/4/2020 16:36:30'!
test_004UnUsuarioArtistaSabeSuPromedioDeTemas

	
	Assert that: (alexR promedioDeTemasDe: ( unaAppCuistify albumesDe:alexR) ) isEqualTo: 6.
	Assert that: (alexR promedioDeTemasDe: ( unaAppCuistify albumesDe:tomasJ) ) isEqualTo: 10.! !


!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/4/2020 16:40:48'!
setUp
	
	"Plataforma"
	unaAppCuistify _ Cuistify new.
	
	"Usuarios"
	
	enzoL _ UsuarioMelomano new.
	tomasJ _ UsuarioArtista new.
	alexR _  UsuarioArtista new.
	agustinM _ UsuarioMelomano new .
	
	"Usuarios registrados"
	
	unaAppCuistify registrarA: enzoL.
	unaAppCuistify registrarA: tomasJ.
	unaAppCuistify registrarA: alexR.
	"Albums de los usuarios artistas"
	
	albumG _ Album conTitulo: 'Racan' cantidadDeTemas: 10 precio: 51  * peso.
	albumJ _ Album conTitulo: 'White' cantidadDeTemas: 10 precio: 5  * peso.
	albumF _ Album conTitulo: 'Good' cantidadDeTemas: 10 precio: 10  * peso.
	albumP _ Album conTitulo: 'Rellow' cantidadDeTemas: 6 precio: 10 * peso.
	
	"Albums subidos a la app"
	
	unaAppCuistify subirAlbum: albumG de: tomasJ.
	unaAppCuistify subirAlbum: albumJ de: tomasJ.
	unaAppCuistify subirAlbum: albumF de: tomasJ.
	unaAppCuistify subirAlbum: albumP de: alexR.
	
	! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'tm 12/2/2020 22:01:43'!
test_001UUnaPlataformaCuistifyEsCreadaSinUsuarios

	
	|cuistifyApp|
	
	cuistifyApp _ Cuistify new.
	
	Assert that: cuistifyApp cantidadDeUsuarios isEqualTo: 0.! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'tm 12/2/2020 22:29:47'!
test_002UnaPlataformaCuistifyRegistraSuPrimerUsuarioMelomano

	
	|cuistifyApp tobiasM|
	cuistifyApp _ Cuistify new.
	tobiasM _ UsuarioMelomano new.
	
	cuistifyApp registrarA: tobiasM.
	
	Assert that: cuistifyApp cantidadDeUsuarios isEqualTo: 1.! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/3/2020 17:21:16'!
test_003UnaPlataformaCuistifyRegistraSuPrimerUsuarioArtista

	
	|cuistifyApp santiL|
		
	cuistifyApp _ Cuistify new.
	
	santiL _ UsuarioArtista new.
	
	cuistifyApp registrarA: santiL.
	
	Assert that: cuistifyApp cantidadDeUsuarios isEqualTo: 1.! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/3/2020 18:53:22'!
test_004UnaPlataformaCuistifyEncuentraAlPrimerUsuarioConMasDe5PuntosDeReputacion
	
	unaAppCuistify cargarSaldo: 500 * peso a: enzoL. 
	
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
		
	Assert that: ( unaAppCuistify primerUsuarioConMasDe5PuntosDeReputacion) isEqualTo: enzoL.! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/4/2020 14:21:58'!
test_005UnaPlataformaCuistifySabeSiHayUnArtistaQueTengaMasDe100PesosEnRegalias

	unaAppCuistify cargarSaldo: ( 500 * peso) a: agustinM. 
	unaAppCuistify cargarSaldo: ( 500 * peso) a: enzoL.

	unaAppCuistify escucharAlbum: albumG por: agustinM.
	unaAppCuistify escucharAlbum: albumG por: enzoL.
	
	
	Assert isTrue: unaAppCuistify tieneUnArtistaConMasDe100PesosEnRegalias .! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/4/2020 18:34:01'!
test_006UnaPlataformaCuistifyConoceSusUsuariosApaticos

	
	Assert isTrue: ( ( unaAppCuistify usuariosApaticos) includes: enzoL ). ! !

!CuistifyTest methodsFor: 'cuistifyTest' stamp: 'TM 12/4/2020 16:47:28'!
test_007UnaPlataformaCuistifySabeElPromedioTotalDeTemasPorAlbumDeTodosLosArtistas

	"Probablemente este ejercico lo hice mal, no llegue con el tiempo y no sabria si plantie bien el ejercicio, lo que hice fue sacar el promedio de temas de todos los artitas y sumarlos, para desspues obtener el promedio total de cuantos temas suben los artistas"
	
	Assert that: ( unaAppCuistify promedioTotalDe: (unaAppCuistify artistasQuePoseenAlbumes ))isEqualTo: 8.! !


!classDefinition: #Album category: #'Recuperatorio-TobiasMartinez'!
Object subclass: #Album
	instanceVariableNames: 'titulo cantidadDeTemas precio autor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!Album methodsFor: 'initialization' stamp: 'tm 12/2/2020 22:42:26'!
conTitulo: aString cantidadDeTemas: aSmallInteger precio: aSimpleMeasure 
	
	titulo _ aString.
	cantidadDeTemas _ aSmallInteger.
	precio _ aSimpleMeasure.! !


!Album methodsFor: 'actions' stamp: 'TM 12/3/2020 11:20:39'!
registrarAutorA: unUsuarioArtista 
	
	autor _ unUsuarioArtista. ! !


!Album methodsFor: 'accessing' stamp: 'TM 12/3/2020 11:55:47'!
autor
	
	^autor! !

!Album methodsFor: 'accessing' stamp: 'TM 12/4/2020 15:37:54'!
cantidadDeTemas
	
	^cantidadDeTemas! !

!Album methodsFor: 'accessing' stamp: 'TM 12/3/2020 11:53:28'!
precio
	
	^precio! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Album class' category: #'Recuperatorio-TobiasMartinez'!
Album class
	instanceVariableNames: ''!

!Album class methodsFor: 'instance creation' stamp: 'tm 12/2/2020 22:41:48'!
conTitulo: unTitulo cantidadDeTemas: unaCantidadDeTemas precio: unPrecio 
	
	^self new conTitulo: unTitulo cantidadDeTemas: unaCantidadDeTemas precio: unPrecio ! !


!classDefinition: #Cuistify category: #'Recuperatorio-TobiasMartinez'!
Object subclass: #Cuistify
	instanceVariableNames: 'usuarios artistasQuePoseenAlbumes albumsDeArtista'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!Cuistify methodsFor: 'initialization' stamp: 'TM 12/3/2020 16:44:27'!
initialize

	usuarios _ Set new.
	artistasQuePoseenAlbumes _ Dictionary new.
	albumsDeArtista _ Set new.! !


!Cuistify methodsFor: 'accessing' stamp: 'TM 12/4/2020 15:32:55'!
albumesDe: unUsuario 
	
	^ ( artistasQuePoseenAlbumes at: unUsuario )! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/4/2020 15:16:16'!
artistasQuePoseenAlbumes
	
	^artistasQuePoseenAlbumes! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 20:15:05'!
cantidadDeArtistasCon100PesosEnRegalias
	
	^ usuarios count: [: usuario | usuario poseeMasDeEnRegalias: ( 100 * peso )] .! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 10:48:32'!
cantidadDeUsuarios
	
	^ usuarios size.! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 17:18:30'!
primerUsuarioConMasDe5PuntosDeReputacion
	
	^ ( usuarios detect:[:usuario| usuario reputacion > 5] ).! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/4/2020 16:01:36'!
promedioTotalDe: aDictionary 
	
	| artistas |
	
	artistas := aDictionary keys.
	
	^ ( (artistas sum:[:usuario|usuario promedioDeTemasDe: ( self albumesDe:usuario) ]) / ( artistas size) )! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:10:06'!
regaliasDe: aUsuarioArtista 
	
	^ ( aUsuarioArtista regalias ).! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 17:36:16'!
reputacionDe: aUsuarioArtista 
	
	^ aUsuarioArtista reputacion! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 18:19:59'!
usuarios
	
	^usuarios! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/4/2020 14:46:41'!
usuariosApaticos
	
	^ usuarios select: [: usuario | usuario escuchados size < 1 ]! !

!Cuistify methodsFor: 'accessing' stamp: 'TM 12/3/2020 18:45:14'!
usuariosArtistas
	
	^ ( usuarios select: [:usuario | usuario esArtista ] )! !


!Cuistify methodsFor: 'actions' stamp: 'TM 12/4/2020 16:43:01'!
cargarSaldo: unaCantidadEnPesos a: unUsuario 
	
	unUsuario recibirSaldo: unaCantidadEnPesos! !

!Cuistify methodsFor: 'actions' stamp: 'TM 12/3/2020 12:06:37'!
escucharAlbum: unAlbum por: unUsuario

	self validarLaCompraDeUn: unUsuario paraUn: unAlbum.
	self añadirEl: unAlbum aEscuchadosDe:unUsuario.! !

!Cuistify methodsFor: 'actions' stamp: 'TM 12/3/2020 10:48:08'!
registrarA: unUsuario 
	
	self validarRegistracionDe: unUsuario.
	
	usuarios add: unUsuario.! !

!Cuistify methodsFor: 'actions' stamp: 'TM 12/4/2020 18:38:23'!
subirAlbum: unAlbum de: unUsuarioArtista 
	
	"artistasQuePoseenAlbumes at: unUsuarioArtista put: albumsDeArtista."
	
	
		
	unAlbum registrarAutorA: unUsuarioArtista.
	
	"quise hacer un extract method pero no me dejo, seria validarSiElUsuarioArtistaYaPoseeUnAlbum para fijarse si se tiene que crear una collecion de albumes de el "
	( ( artistasQuePoseenAlbumes keys) includes: unUsuarioArtista ) ifFalse:[ self registrarA: unUsuarioArtista yAñadirleUn: unAlbum ].
	
	( artistasQuePoseenAlbumes at: unUsuarioArtista ) add: unAlbum.! !


!Cuistify methodsFor: 'testing' stamp: 'TM 12/3/2020 10:49:09'!
seEncuentraRegistrado: unUsuario 
	

	
	^  usuarios includes: unUsuario.! !

!Cuistify methodsFor: 'testing' stamp: 'TM 12/4/2020 14:10:10'!
tieneUnArtistaConMasDe100PesosEnRegalias
	
	^ usuarios anySatisfy: [: usuario | usuario poseeMasDeEnRegalias: ( 100 * peso )] .! !


!Cuistify methodsFor: 'validations' stamp: 'TM 12/4/2020 14:25:57'!
validarLaCompraDeUn: unUsuario paraUn: unAlbum 
	
	"Si el oyente es un melomano, debera pagar por el album"
	
	(unUsuario debePagarPorElAlbum) ifTrue: [ self validarSiEl: unUsuario noPoseeEl:unAlbum].
	
	"Si el booleano falla es porque es un artista, por lo cual la reputacion del autor del album que queremos escuchar tendra que aumentar "
	self aumentarReputacioDe: ( unAlbum autor ) .! !

!Cuistify methodsFor: 'validations' stamp: 'TM 12/4/2020 14:17:08'!
validarRegistracionDe: unUsuario

	^ (self seEncuentraRegistrado: unUsuario) ifTrue: [self error: self errorElUsuarioYaSeEncuentraRegistado]! !

!Cuistify methodsFor: 'validations' stamp: 'TM 12/4/2020 18:33:15'!
validarSiEl: unUsuarioMelomano noPoseeEl: unAlbum 
	
	( ( unUsuarioMelomano escuchados ) includes: unAlbum ) ifFalse: [self realizarCobroDe: unAlbum a: unUsuarioMelomano]! !


!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/4/2020 18:32:54'!
añadirEl: unAlbum aEscuchadosDe: unUsuario 
	
	( unUsuario escuchados ) add: unAlbum.
	! !

!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/4/2020 14:29:39'!
aumentarReputacioDe: aUsuarioArtista 
	
	aUsuarioArtista subirReputacion.! !

!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/4/2020 16:42:19'!
darleRegaliasA: unUsuarioArtista porUnTotalDe: unaCantidadEnPesos 
	
	unUsuarioArtista aumentarRegaliasConElMonto: unaCantidadEnPesos.! !

!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/4/2020 18:32:36'!
realizarCobroDe: unAlbum a: unUsuarioMelomano 
	
	( unUsuarioMelomano saldo < unAlbum precio) ifTrue: [self error: self errorNoPoseeElSaldoSuficienteParaElAlbum].
	
	self restarleSaldoA: unUsuarioMelomano porElPrecioDe: ( unAlbum precio ).
	self darleRegaliasA: ( unAlbum autor) porUnTotalDe: ( unAlbum precio ).! !

!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/4/2020 18:36:32'!
registrarA: unUsuarioArtista yAñadirleUn: unAlbum 

	 artistasQuePoseenAlbumes at: unUsuarioArtista put: Set new.
	( artistasQuePoseenAlbumes at: unUsuarioArtista ) add: unAlbum.
	
	
	! !

!Cuistify methodsFor: 'private-actions' stamp: 'TM 12/3/2020 12:11:30'!
restarleSaldoA: unUsuario porElPrecioDe: unaCantidadEnPesos 
	
	unUsuario entregarElMonto: unaCantidadEnPesos.! !


!Cuistify methodsFor: 'errors' stamp: 'TM 12/4/2020 14:16:05'!
errorElUsuarioYaSeEncuentraRegistado

	^ 'El usuario ya se encuentra registrado'! !

!Cuistify methodsFor: 'errors' stamp: 'TM 12/4/2020 14:26:36'!
errorNoPoseeElSaldoSuficienteParaElAlbum
	
	^ 'El usuario no posee el saldo suficiente para el album'! !


!classDefinition: #Usuario category: #'Recuperatorio-TobiasMartinez'!
Object subclass: #Usuario
	instanceVariableNames: 'escuchados'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!Usuario methodsFor: 'accessing' stamp: 'TM 12/3/2020 17:35:38'!
reputacion
	
	self subclassResponsibility.! !

!Usuario methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:13:58'!
saldo
	
	^ self saldo.! !


!Usuario methodsFor: 'testing' stamp: 'TM 12/3/2020 18:27:51'!
esArtista
	self subclassResponsibility .! !

!Usuario methodsFor: 'testing' stamp: 'TM 12/4/2020 14:24:44'!
poseeMasDeEnRegalias: unaCantidadEnPesos 
	
	self subclassResponsibility .! !



!Usuario methodsFor: 'initialize' stamp: 'TM 12/3/2020 17:38:00'!
initialize
	
	
	escuchados _ Bag new.
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Usuario class' category: #'Recuperatorio-TobiasMartinez'!
Usuario class
	instanceVariableNames: ''!

!Usuario class methodsFor: 'instance creation' stamp: 'TM 12/4/2020 16:13:14'!
conNombre: unNombre apellido: unApellido 
	
	
	^self new conNombre: unNombre apellido: unApellido ! !


!classDefinition: #UsuarioArtista category: #'Recuperatorio-TobiasMartinez'!
Usuario subclass: #UsuarioArtista
	instanceVariableNames: 'regalias reputacion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!UsuarioArtista methodsFor: 'initialization' stamp: 'TM 12/3/2020 17:38:10'!
initialize
	
	super initialize .
	regalias _ 0 * peso.
	reputacion _ 0.
	! !


!UsuarioArtista methodsFor: 'actions' stamp: 'TM 12/4/2020 16:42:27'!
aumentarRegaliasConElMonto: unaCantidadEnPesos 
	
	regalias := regalias + ( unaCantidadEnPesos ).! !

!UsuarioArtista methodsFor: 'actions' stamp: 'TM 12/4/2020 14:29:52'!
subirReputacion
	
	reputacion := reputacion + 1! !


!UsuarioArtista methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:42:05'!
escuchados
	
	^escuchados! !

!UsuarioArtista methodsFor: 'accessing' stamp: 'TM 12/4/2020 16:32:12'!
promedioDeTemasDe: listaDeAlbums 
	
	
	 ^  ( ( listaDeAlbums sum:[: album| album cantidadDeTemas]) / listaDeAlbums size ). 
	
	 
	! !

!UsuarioArtista methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:10:21'!
regalias
	
	^regalias! !

!UsuarioArtista methodsFor: 'accessing' stamp: 'TM 12/3/2020 17:36:29'!
reputacion

	^ reputacion! !


!UsuarioArtista methodsFor: 'testing' stamp: 'TM 12/3/2020 16:26:52'!
debePagarPorElAlbum
	
	^ false.! !

!UsuarioArtista methodsFor: 'testing' stamp: 'TM 12/3/2020 18:26:55'!
esArtista
	
	^ true! !

!UsuarioArtista methodsFor: 'testing' stamp: 'TM 12/3/2020 19:53:28'!
poseeMasDeEnRegalias: aSimpleMeasure

	^ regalias > aSimpleMeasure. 

	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'UsuarioArtista class' category: #'Recuperatorio-TobiasMartinez'!
UsuarioArtista class
	instanceVariableNames: ''!

!UsuarioArtista class methodsFor: 'instance creation' stamp: 'tm 12/2/2020 22:43:45'!
conAlbumes: listaDeAlbumes 
	
	
	^self new conAlbumes: listaDeAlbumes ! !


!classDefinition: #UsuarioMelomano category: #'Recuperatorio-TobiasMartinez'!
Usuario subclass: #UsuarioMelomano
	instanceVariableNames: 'saldo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Recuperatorio-TobiasMartinez'!

!UsuarioMelomano methodsFor: 'testing' stamp: 'TM 12/3/2020 16:23:19'!
debePagarPorElAlbum
	
	^ true.! !

!UsuarioMelomano methodsFor: 'testing' stamp: 'TM 12/3/2020 18:27:04'!
esArtista

	^ false.! !

!UsuarioMelomano methodsFor: 'testing' stamp: 'TM 12/4/2020 16:43:23'!
poseeMasDeEnRegalias: unaCantidadEnPesos

	^ false ! !


!UsuarioMelomano methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:09:30'!
escuchados
	
	^escuchados! !

!UsuarioMelomano methodsFor: 'accessing' stamp: 'TM 12/3/2020 17:41:28'!
reputacion

	^ escuchados size ! !

!UsuarioMelomano methodsFor: 'accessing' stamp: 'TM 12/3/2020 12:16:16'!
saldo

	^ saldo.! !


!UsuarioMelomano methodsFor: 'actions' stamp: 'TM 12/3/2020 12:19:32'!
añadirSaldo: unaCantidadEnPeso 
	
	saldo := saldo + unaCantidadEnPeso! !

!UsuarioMelomano methodsFor: 'actions' stamp: 'TM 12/3/2020 12:13:20'!
entregarElMonto: aSimpleMeasure 
	
	saldo := saldo - ( aSimpleMeasure ).! !

!UsuarioMelomano methodsFor: 'actions' stamp: 'TM 12/4/2020 16:43:01'!
recibirSaldo: unaCantidadEnPeso 
	
	saldo := saldo + unaCantidadEnPeso! !


!UsuarioMelomano methodsFor: 'initialize' stamp: 'TM 12/3/2020 17:32:50'!
initialize

	super initialize.
	saldo _ 0 * peso.! !
