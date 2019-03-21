asserting
assertForm: aForm1 equals: aForm2

	^ self
		assert: (aForm1 isPixelsEqualTo: aForm2)
		description: [self comparingStringBetween: aForm1 and: aForm2]