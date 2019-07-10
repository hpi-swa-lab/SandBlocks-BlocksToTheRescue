accessing
accumulator

	^ self accumulators
		at: self executionContext
		ifAbsentPut: OrderedCollection new