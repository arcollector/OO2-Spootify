Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nickname',
		'temas'
	],
	#category : #Spootify
}

{ #category : #'as yet unclassified' }
Usuario class >> crear: aNickname [
	^ self new nickname: aNickname ; yourself .
]

{ #category : #'as yet unclassified' }
Usuario >> agregar: aTema [
	temas add: aTema .
]

{ #category : #initialization }
Usuario >> initialize [
	temas := Set new .
]

{ #category : #private }
Usuario >> nickname: aNickname [
	nickname := aNickname .
]

{ #category : #'as yet unclassified' }
Usuario >> remover: aTema [
	temas remove: aTema ifAbsent: [ nil ]
]

{ #category : #private }
Usuario >> temas [
	^ temas .
]
