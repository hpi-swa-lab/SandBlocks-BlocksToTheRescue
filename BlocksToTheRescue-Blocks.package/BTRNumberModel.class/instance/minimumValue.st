accessing
minimumValue

	minimumValue ifNil: [self minimumValue: self defaultMinimumValue].
	^ minimumValue