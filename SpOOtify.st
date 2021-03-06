﻿Object subclass: #Usuario
	instanceVariableNames: 'myMusic nombre sistema'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ObjetosPractica2Spootify'!
!Usuario commentStamp: '<historical>' prior: 0!
Clase que representa un usuario en el sistema Spootify.!


!Usuario methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:17'!
sistema: anObject
	sistema := anObject! !

!Usuario methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:17'!
myMusic
	^ myMusic! !

!Usuario methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:17'!
myMusic: anObject
	myMusic := anObject! !

!Usuario methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:17'!
sistema
	^ sistema! !


!Usuario methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:17'!
nombre
^nombre! !

!Usuario methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:17'!
nombre: unNombre
nombre:=unNombre! !

!Usuario methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:30'!
agregarCancion: unaCancion
	myMusic add: unaCancion.! !

!Usuario methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:31'!
removerCancion: unaCancion
	myMusic remove: unaCancion.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Usuario class
	instanceVariableNames: ''!

!Usuario class methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:27'!
new: unNombre
 |x|
 x:= super new.
 x nombre: unNombre.
 x myMusic: OrderedCollection new.
 ^x! !


Object subclass: #Spootify
	instanceVariableNames: 'usuarios autores'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ObjetosPractica2Spootify'!
!Spootify commentStamp: '<historical>' prior: 0!
Representa el objeto que sería el sistema Spootify.!


!Spootify methodsFor: 'as yet unclassified' stamp: 'fermin 4/11/2016 14:05'!
busquedaPorAutor: unAutor
	|aux|
	aux:=(autores select: [ :aut | aut nombre match: unAutor ]).
	^(aux collect: [ :autor | autor busquedaPorAutor ]) flattened asOrderedCollection.
! !

!Spootify methodsFor: 'as yet unclassified' stamp: 'fermin 4/11/2016 13:15'!
busquedaPorTitulo: unTitulo
	^ (autores collect: [ :aut | aut busquedaPorTitulo: unTitulo ]) flattened asOrderedCollection.! !

!Spootify methodsFor: 'as yet unclassified' stamp: 'fermin 4/11/2016 14:22'!
busquedaPorAlbum: unAlbum
	^(autores collect: [ :aut | aut busquedaPorAlbum: unAlbum ]) flattened asOrderedCollection.! !

!Spootify methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:11'!
agregarAutor: unAutor
autores add: unAutor! !

!Spootify methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:54'!
agregarUsuario: unUsuario
	usuarios add: unUsuario.
	unUsuario sistema: self.! !


!Spootify methodsFor: 'accesing' stamp: 'fermin 4/6/2016 13:08'!
usuarios: aCollection
usuarios:= aCollection! !

!Spootify methodsFor: 'accesing' stamp: 'fermin 4/6/2016 13:06'!
autores
^autores! !

!Spootify methodsFor: 'accesing' stamp: 'fermin 4/6/2016 13:06'!
autores: aCollection
autores:= aCollection! !

!Spootify methodsFor: 'accesing' stamp: 'fermin 4/6/2016 13:07'!
usuarios
^usuarios! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Spootify class
	instanceVariableNames: ''!

!Spootify class methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 13:26'!
new
	| x |
	x:= super new.
	x usuarios: OrderedCollection new.
	x autores: OrderedCollection new.
	^x! !


Object subclass: #Album
	instanceVariableNames: 'nombre canciones'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ObjetosPractica2Spootify'!
!Album commentStamp: '<historical>' prior: 0!
Clase que representa un album en el sistema Spootify.!


!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:40'!
canciones
	^ canciones! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 14:04'!
quitarCancion: unaCancion
	canciones remove: unaCancion! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/11/2016 12:13'!
busquedaPorTitulo: unTitulo
	^canciones select: [ :x | x nombre match:unTitulo ].! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:40'!
nombre
	^ nombre! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:40'!
canciones: anObject
	canciones := anObject! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 14:16'!
agregarCancion: unaCancion
	canciones add: unaCancion.! !

!Album methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:40'!
nombre: anObject
	nombre := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Album class
	instanceVariableNames: ''!

!Album class methodsFor: 'as yet unclassified' stamp: 'fermin 4/11/2016 13:57'!
newAlbum: unNombre
| x |
x := super new.
x nombre: unNombre.
x canciones: OrderedCollection new.
^x! !


Object subclass: #Cancion
	instanceVariableNames: 'nombre'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ObjetosPractica2Spootify'!
!Cancion commentStamp: '<historical>' prior: 0!
Clase que representa una cancion en el sistema Spootify.!


!Cancion methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:33'!
nombre
	^ nombre! !

!Cancion methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:33'!
nombre: anObject
	nombre := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cancion class
	instanceVariableNames: ''!

!Cancion class methodsFor: 'as yet unclassified' stamp: 'fermin 4/11/2016 13:58'!
newCancion: unNombre
	| x|
	x := super new.
	x nombre: unNombre.
	^x! !


Object subclass: #Autor
	instanceVariableNames: 'nombre albums'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ObjetosPractica2Spootify'!
!Autor commentStamp: '<historical>' prior: 0!
Clase que representa un autor en el sistema Spootify.!


!Autor methodsFor: 'accessing' stamp: 'fermin 4/11/2016 14:17'!
busquedaPorAlbum: unAlbum
	^((albums select: [ :alb | alb nombre match: unAlbum ]) collect: [ :x | x canciones ]) flattened asOrderedCollection.
! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 14:03'!
quitarAlbum: unAlbum
	albums remove: unAlbum.! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/11/2016 13:11'!
busquedaPorTitulo: unTitulo
	^(albums collect: [ :alb | alb busquedaPorTitulo: unTitulo ]) flattened asOrderedCollection.
! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:51'!
nombre
	^ nombre! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:51'!
albums: anObject
	albums := anObject! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:51'!
albums
	^ albums! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 14:03'!
agregarAlbum: unAlbum
	albums add: unAlbum.! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/11/2016 13:42'!
busquedaPorAutor
	^(albums collect: [ :alb | alb canciones ]) flattened asOrderedCollection.
! !

!Autor methodsFor: 'accessing' stamp: 'fermin 4/6/2016 13:51'!
nombre: anObject
	nombre := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Autor class
	instanceVariableNames: ''!

!Autor class methodsFor: 'as yet unclassified' stamp: 'fermin 4/6/2016 14:00'!
new: unNombre
| x|
x := super new.
x nombre: unNombre.
x albums: OrderedCollection new.
^x! !
