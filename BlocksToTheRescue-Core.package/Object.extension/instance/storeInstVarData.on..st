*BlocksToTheRescue-Core
storeInstVarData: anIndex on: aReferenceStream

	| instVarName|
	instVarName := (self class instVarNameForIndex: anIndex) asSymbol.
	(self transientInstVarNames includes: instVarName)
		ifTrue: [aReferenceStream nextPut: nil]
		ifFalse: [| instVarValue |
			instVarValue := self instVarAt: anIndex.
			(self weakInstVarNames includes: instVarName)
				ifTrue: [anIndex nextPutWeak: instVarValue]
				ifFalse: [anIndex nextPut: instVarValue]].