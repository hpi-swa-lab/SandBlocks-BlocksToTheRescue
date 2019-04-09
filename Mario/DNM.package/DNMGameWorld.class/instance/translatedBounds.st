testing
translatedBounds

	^(self bounds translateBy: self offset) translateBy: (self position negated)
