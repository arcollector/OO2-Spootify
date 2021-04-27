Class {
	#name : #Album,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'temas'
	],
	#category : #Spootify
}

{ #category : #'as yet unclassified' }
Album class >> crear: aNombre [
	^ self new nombre: aNombre ; yourself .
]

{ #category : #'private ' }
Album >> agregarTemas: aTemasCollection [
	temas addAll: aTemasCollection .
]

{ #category : #'private ' }
Album >> incluyeNombre: aNombre [
	^ nombre includesSubstring: aNombre caseSensitive: false .
]

{ #category : #'private ' }
Album >> incluyeTema: aNombre [
	^ temas select: [ :tema | tema incluyeNombre: aNombre ].
]

{ #category : #'private ' }
Album >> initialize [
	temas := Set new .
]

{ #category : #'private ' }
Album >> nombre: aNombre [
	nombre := aNombre .
]

{ #category : #private }
Album >> temas [
 ^ temas .
]

{ #category : #accessing }
Album >> temas: aTemasCollection [
	temas := aTemasCollection .
]
