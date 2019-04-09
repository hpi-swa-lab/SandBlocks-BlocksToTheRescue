accessing
value: aNumber

	super value: aNumber.
	self changed: #value. "notify slider"