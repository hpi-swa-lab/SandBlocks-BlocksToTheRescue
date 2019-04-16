accessing
minimumValue: aNumber

	| oldMinimumValue |
	oldMinimumValue := minimumValue.
	minimumValue := aNumber.
	oldMinimumValue ~= minimumValue
		ifTrue: [
			self changed: #minimumValue.
			self changed].