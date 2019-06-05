as yet unclassified
attributesByPixelHeight

	^ super attributesByPixelHeight
		at: self outsideVariable ifAbsentPut: self outsideVariableAttributes;
		yourself
	