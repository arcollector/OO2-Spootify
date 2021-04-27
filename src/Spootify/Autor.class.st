Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'albumes',
		'temas'
	],
	#category : #Spootify
}

{ #category : #'as yet unclassified' }
Autor class >> crear: aNombre [
	^ self new nombre: aNombre ; yourself .
]

{ #category : #private }
Autor >> agregarAlbum: anAlbum [
	albumes add: anAlbum .
]

{ #category : #'as yet unclassified' }
Autor >> albumes [
	^ albumes .
]

{ #category : #private }
Autor >> incluyeAlbum: aString [
	^ albumes select: [ :album | album incluyeNombre: aString ].
]

{ #category : #private }
Autor >> incluyeNombre: aNombre [
	^ nombre includesSubstring: aNombre caseSensitive: false .
]

{ #category : #private }
Autor >> incluyeTema: anString [ 
	^ albumes flatCollect: [ :album | album incluyeTema: anString ] .
]

{ #category : #private }
Autor >> initialize [
	albumes := Set new .
	temas := Set new .
]

{ #category : #private }
Autor >> nombre: aNombre [
	nombre := aNombre .
]
