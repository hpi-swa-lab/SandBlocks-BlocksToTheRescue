copying
copy

	self flag: #fixMe.
	^ self veryDeepCopy
		in: [:x | x states: x states];
		yourself