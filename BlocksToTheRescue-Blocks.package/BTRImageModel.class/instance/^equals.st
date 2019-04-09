comparing
= other

	^ self class = other class
		and: [self hasImage
			ifTrue: [self image isPixelsEqualTo: other image]
			ifFalse: [other hasImage not]]