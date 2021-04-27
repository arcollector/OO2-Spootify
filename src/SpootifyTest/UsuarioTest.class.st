Class {
	#name : #UsuarioTest,
	#superclass : #TestCase,
	#instVars : [
		'u'
	],
	#category : #SpootifyTest
}

{ #category : #tests }
UsuarioTest >> setUp [ 
	u  := Usuario crear: 'Nickname 1'.
	
]

{ #category : #tests }
UsuarioTest >> testAgregar [ 
	|t1 t2|
	t1 := Tema crear: 'Tema 1' conAlbum: nil conAutor: nil.
	t2 := Tema crear: 'Tema 2' conAlbum: nil conAutor: nil.
	self assert: u temas size equals: 0.
	u agregar: t1.
	u agregar: t2.
	self assert: u temas size equals: 2.
	self assert: (u temas includesAll: { t1 . t2 }).
]

{ #category : #tests }
UsuarioTest >> testRemover [
	| t1 t2 |
	t1 := Tema crear: 'Tema 1' conAlbum: nil conAutor: nil.
	t2 := Tema crear: 'Tema 2' conAlbum: nil conAutor: nil.
	u agregar: t1.
	u agregar: t2.
	self assert: u temas size equals: 2.
	u remover: nil.
	self assert: u temas size equals: 2.
	u remover: t1.
	self assert: u temas size equals: 1.
	u remover: t1.
	self assert: u temas size equals: 1.
	u remover: t2.
	self assert: u temas size equals: 0
]
