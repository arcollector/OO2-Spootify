Class {
	#name : #Spootify,
	#superclass : #Object,
	#instVars : [
		'usuarios',
		'autores'
	],
	#category : #Spootify
}

{ #category : #'as yet unclassified' }
Spootify class >> crear [
	^ self new .
]

{ #category : #'as yet unclassified' }
Spootify >> agregarAutor: anAutor [
	autores add: anAutor .
]

{ #category : #'as yet unclassified' }
Spootify >> agregarUsuario: aUsuario [
	usuarios add: aUsuario .
]

{ #category : #private }
Spootify >> autores [
	^ autores .
]

{ #category : #'as yet unclassified' }
Spootify >> buscarPorAlbum: anString [
	^ autores flatCollect: [ :autor | autor incluyeAlbum: anString ].
]

{ #category : #'as yet unclassified' }
Spootify >> buscarPorAutor: aString [
	^ autores select: [  :autor | autor incluyeNombre: aString ].
]

{ #category : #'as yet unclassified' }
Spootify >> buscarPorTitulo: anString [
	^ autores flatCollect: [ :autor | autor incluyeTema: anString ]
]

{ #category : #'as yet unclassified' }
Spootify >> initialize [ 
	usuarios := Set new .
	autores := Set new .
]

{ #category : #private }
Spootify >> usuarios [ 
	^ usuarios .
]
