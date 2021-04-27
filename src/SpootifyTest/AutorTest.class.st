Class {
	#name : #AutorTest,
	#superclass : #TestCase,
	#instVars : [
		'autor',
		't1',
		't2',
		't3',
		'album1',
		'album2'
	],
	#category : #SpootifyTest
}

{ #category : #tests }
AutorTest >> setUp [
	autor := Autor crear: 'Autor 1'.
	album1 := Album crear: 'Album 1'.
	album2 := Album crear: 'Album 2'.
	t1 := Tema crear: 'Tema 1' conAlbum: album1 conAutor: nil.
	t2 := Tema crear: 'Tema 2' conAlbum: album1 conAutor: nil.
	t3 := Tema crear: 'Tema 3' conAlbum: album2 conAutor: nil.
	album1
		agregarTemas:
			{t1.
			t2}.
	album2 agregarTemas: {t3}
]

{ #category : #tests }
AutorTest >> testAgregarAlbum [
	self assert: autor albumes size equals: 0.
	autor agregarAlbum: album1.
	autor agregarAlbum: album2.
	self assert: autor albumes size equals: 2.
	self
		assert:
			(autor albumes
				includesAll:
					{album1.
					album2})
]

{ #category : #tests }
AutorTest >> testIncluyeAlbum [
	autor agregarAlbum: album1.
	autor agregarAlbum: album2.
	self assert: (autor incluyeAlbum: 'album') size equals: 2.
	self assert: (autor incluyeAlbum: 'album 1') size equals: 1.
	self assert: (autor incluyeAlbum: 'prueba') size equals: 0
]

{ #category : #tests }
AutorTest >> testIncluyeNombre [
	self assert: (autor incluyeNombre: 'autor').
	self assert: (autor incluyeNombre: 'AUTOR').
	self deny: (autor incluyeNombre: 'author')
]

{ #category : #tests }
AutorTest >> testIncluyeTema [
	autor agregarAlbum: album1.
	autor agregarAlbum: album2.
	self assert: (autor incluyeTema: 'tema') size equals: 3.
	self assert: (autor incluyeTema: 'tema 1') size equals: 1.
	self assert: (autor incluyeTema: 'prueba') size equals: 0
]
