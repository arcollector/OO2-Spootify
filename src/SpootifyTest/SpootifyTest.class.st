Class {
	#name : #SpootifyTest,
	#superclass : #TestCase,
	#instVars : [
		'spootify',
		'a1',
		'a2',
		't1',
		't2',
		't3',
		'album1',
		'album2',
		'a3'
	],
	#category : #SpootifyTest
}

{ #category : #running }
SpootifyTest >> setUp [
	spootify := Spootify crear.
	a1 := Autor crear: 'Autor 1'.
	a2 := Autor crear: 'Autor 2'.
	a3 := Autor crear: 'Autor 3'.
	t1 := Tema crear: 'Tema 1' conAlbum: album1 conAutor: a1.
	t2 := Tema crear: 'Tema 2' conAlbum: album1 conAutor: a1.
	t3 := Tema crear: 'Tema 3' conAlbum: album2 conAutor: a2.
	album1 := Album crear: 'Album 1'.
	album1
		agregarTemas:
			{t1.
			t2}.
	album2 := Album crear: 'Album 2'.
	album2 agregarTemas: {t3}
]

{ #category : #tests }
SpootifyTest >> testAgregarAutor [
	a1 := Autor crear: 'Test 1'.
	a2 := Autor crear: 'Test 2'.
	self assert: spootify autores size equals: 0.
	spootify agregarAutor: a1 .
	spootify agregarAutor: a2 .
	self assert: spootify autores size equals: 2.
	self assert: (spootify autores includesAll: { a1 . a2 })
]

{ #category : #tests }
SpootifyTest >> testAgregarUsuario [
	|u1 u2|
	u1 := Usuario crear: 'Test 1'.
	u2 := Usuario crear: 'Test 2'.
	self assert: spootify usuarios size equals: 0.
	spootify agregarUsuario: u1 .
	spootify agregarUsuario: u2 .
	self assert: spootify usuarios size equals: 2.
	self assert: (spootify usuarios includesAll: { u1 . u2 })
]

{ #category : #tests }
SpootifyTest >> testBuscarPorAlbum [
	spootify agregarAutor: a1.
	spootify agregarAutor: a2.
	a1 agregarAlbum: album1.
	a2 agregarAlbum: album2.
	self assert: (spootify buscarPorAlbum: 'album') size equals: 2.
	self assert: (spootify buscarPorAlbum: 'album 1') size equals: 1.
	self assert: (spootify buscarPorAlbum: 'album 2') size equals: 1.
	self assert: (spootify buscarPorAlbum: 'test') size equals: 0
]

{ #category : #'as yet unclassified' }
SpootifyTest >> testBuscarPorAutor [
	spootify agregarAutor: a1.
	spootify agregarAutor: a2.
	spootify agregarAutor: a3.
	self assert: (spootify buscarPorAutor: 'autor') size equals: 3.
	self assert: (spootify buscarPorAutor: 'AUTOR 1') size equals: 1.
	self assert: (spootify buscarPorAutor: 'author') size equals: 0
]

{ #category : #tests }
SpootifyTest >> testBuscarPorTitulo [
	spootify agregarAutor: a1.
	spootify agregarAutor: a2.
	a1 agregarAlbum: album1.
	a2 agregarAlbum: album2.
	self assert: (spootify buscarPorTitulo: 'tema') size equals: 3.
	self assert: (spootify buscarPorTitulo: 'tema 1') size equals: 1.
	self assert: (spootify buscarPorTitulo: 'tema 2') size equals: 1.
	self assert: (spootify buscarPorTitulo: 'test') size equals: 0
]
