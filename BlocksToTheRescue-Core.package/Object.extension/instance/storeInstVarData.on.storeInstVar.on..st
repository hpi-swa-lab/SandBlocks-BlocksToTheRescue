*BlocksToTheRescue-Core
storeInstVarData: anIndex on: aReferenceStream

	storeInstVar: aNumber on: aDataStream

	| instVarName|
	instVarName := (self class instVarNameForIndex: aNumber) asSymbol.
	(self transientInstVarNames includes: instVarName)
		ifTrue: [aDataStream nextPut: nil]
		ifFalse: [| instVarValue |
			instVarValue := self instVarAt: aNumber.
			(self transientInstVarNames includes: instVarName)
				ifTrue: [aDataStream nextPutWeak: instVarValue]
				ifFalse: [aDataStream nextPut: instVarValue]].