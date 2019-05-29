comparing
hasNext

	((self tokenAt: (iterator + 1)) == false) ifTrue: [^ false].
	^ true