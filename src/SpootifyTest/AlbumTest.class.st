Class {
	#name : #AlbumTest,
	#superclass : #TestCase,
	#category : #SpootifyTest
}

{ #category : #tests }
AlbumTest >> testAgregarTema [
	| album t1 t2 t3 |
	album := Album crear: 'Test'.
	t1 := Tema crear: 'Tema 1' conAlbum: album conAutor: nil.
	t2 := Tema crear: 'Tema 2' conAlbum: album conAutor: nil.
	t3 := Tema crear: 'Tema 3' conAlbum: album conAutor: nil.
	self assert: album temas size equals: 0.
	album
		agregarTemas:
			{t1.
			t2.
			t3}.
	self assert: album temas size equals: 3.
	self
		assert:
			(album temas
				includesAll:
					{t1.
					t2.
					t3})
]

{ #category : #tests }
AlbumTest >> testIncluyeNombre [
	| album |
	album := Album crear: 'Test'.
	self assert: (album incluyeNombre: 'test').
	self deny: (album incluyeNombre: 'prueba')
]
