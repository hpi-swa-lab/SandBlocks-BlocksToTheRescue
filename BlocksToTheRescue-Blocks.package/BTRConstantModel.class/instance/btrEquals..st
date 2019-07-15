comparing
btrEquals: other

	^ self class = other class
		and: [self value btrEquals: other value]