Class {
	#name : #TemaTest,
	#superclass : #TestCase,
	#category : #SpootifyTest
}

{ #category : #tests }
TemaTest >> testIncluyeNombre [
	| t |
	t := Tema crear: 'Tema' conAlbum: nil conAutor: nil.
	self assert: (t incluyeNombre: 'tema').
	self deny: (t incluyeNombre: 'prueba')
]
