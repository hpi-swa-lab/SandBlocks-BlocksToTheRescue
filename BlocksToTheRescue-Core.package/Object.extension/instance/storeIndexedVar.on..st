*BlocksToTheRescue-Core
storeIndexedVar: anIndex on: aReferenceStream

	(self isTransientIndexedVariable: anIndex)
		ifTrue: [aReferenceStream nextPut: nil]
		ifFalse: [| variableValue |
			variableValue := self basicAt: anIndex.
			(self isWeakIndexedVariable: anIndex)
				ifTrue: [aReferenceStream nextPutWeak: variableValue]
				ifFalse: [aReferenceStream nextPut: variableValue]].