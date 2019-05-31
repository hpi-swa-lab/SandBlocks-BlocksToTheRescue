*BlocksToTheRescue-Core
storeInstVarData: anIndex on: aReferenceStream

	| instVarName|
	instVarName := (self class instVarNameForIndex: anIndex) asSymbol.
	(self transientInstVarNames includes: instVarName)
		ifTrue: [aReferenceStream nextPut: nil]
		ifFalse: [| instVarValue |
			instVarValue := self instVarAt: anIndex.
			(self weakInstVarNames includes: instVarName)
				ifTrue: [aReferenceStream nextPutWeak: instVarValue]
				ifFalse: [aReferenceStream nextPut: instVarValue]].