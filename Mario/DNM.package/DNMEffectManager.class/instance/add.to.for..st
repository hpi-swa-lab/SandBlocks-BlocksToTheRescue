accessing
add: anEffect to: aCollection for: aDuration
	aCollection add: anEffect.
	self remove: anEffect from: aCollection after: aDuration.