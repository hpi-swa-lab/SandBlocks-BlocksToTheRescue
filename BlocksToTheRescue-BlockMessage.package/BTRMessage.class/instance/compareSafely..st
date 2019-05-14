as yet unclassified
compareSafely: anObject
	^ self class = anObject class
		ifTrue: [ self identityHash < anObject identityHash ]
		ifFalse: [ self class name < anObject class name ]