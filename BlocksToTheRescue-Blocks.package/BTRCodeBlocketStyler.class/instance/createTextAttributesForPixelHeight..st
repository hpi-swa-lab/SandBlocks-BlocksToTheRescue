as yet unclassified
createTextAttributesForPixelHeight: aNumber

	^ (super createTextAttributesForPixelHeight: aNumber) 
		at: self outsideVariable put: self outsideVariableAttributes