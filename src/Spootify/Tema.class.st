Class {
	#name : #Tema,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'autor',
		'album'
	],
	#category : #Spootify
}

{ #category : #'as yet unclassified' }
Tema class >> crear: aNombre conAlbum: anAlbum conAutor: anAutor [
	^ self new nombre: aNombre ; album: anAlbum ; autor: anAutor ; yourself .
]

{ #category : #public }
Tema >> album [
	^ album .
]

{ #category : #private }
Tema >> album: anAlbum [
	album := anAlbum .
]

{ #category : #public }
Tema >> autor [
	 ^ autor .
]

{ #category : #private }
Tema >> autor: anAutor [
	autor := anAutor .
]

{ #category : #accessing }
Tema >> incluyeNombre: aNombre [
	^ nombre includesSubstring: aNombre caseSensitive: false .
]

{ #category : #accessing }
Tema >> nombre: aNombre [
	nombre := aNombre .
]
