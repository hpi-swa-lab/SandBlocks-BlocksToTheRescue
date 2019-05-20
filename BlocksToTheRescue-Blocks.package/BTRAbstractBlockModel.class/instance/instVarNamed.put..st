as yet unclassified
instVarNamed: aString put: anObject

	self oldInstVarNameMapping
		at: aString asSymbol
		ifPresent: [:newName | newName ifNotNil: (super instVarNamed: newName put: anObject)]
		ifAbsent: [super instVarNamed: aString put: anObject].