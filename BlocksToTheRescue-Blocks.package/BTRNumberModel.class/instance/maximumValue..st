accessing
maximumValue: aNumber

	| oldMaximumValue |
	oldMaximumValue := maximumValue.
	maximumValue := aNumber.
	oldMaximumValue ~= maximumValue
		ifTrue: [
			self changed: #maximumValue.
			self changed].