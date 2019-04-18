comparing
= other

	^ self class = other class 
		and: [self value = other value]
		and: [self rowIndex = other rowIndex]
		and: [self columnIndex = other columnIndex]