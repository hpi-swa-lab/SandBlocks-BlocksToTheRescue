comparing
= other

	^ self class = other class
		and: [self value btrEquals: other value]