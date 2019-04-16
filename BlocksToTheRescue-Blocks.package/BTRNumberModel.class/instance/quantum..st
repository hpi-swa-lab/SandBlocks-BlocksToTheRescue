accessing
quantum: aNumber

	| oldQuantum |
	oldQuantum := quantum.
	quantum := aNumber.
	oldQuantum ~= quantum
		ifTrue: [
			self changed: #quantum.
			self changed].