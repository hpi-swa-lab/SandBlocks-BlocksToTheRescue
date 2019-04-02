insertion
displayName

	^ (self name findString: 'BTR' startingAt: 1 caseSensitive: true) = 1
		ifTrue: [self name copyFrom: 4 to: self name size]
		ifFalse: [self name]