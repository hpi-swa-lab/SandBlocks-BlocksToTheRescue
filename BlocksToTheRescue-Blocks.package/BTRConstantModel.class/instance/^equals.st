comparing
= other

	^ super = other
		and: [self value btrEquals: other value]