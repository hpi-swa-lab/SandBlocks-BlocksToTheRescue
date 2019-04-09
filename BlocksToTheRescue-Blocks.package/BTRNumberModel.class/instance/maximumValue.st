accessing
maximumValue

	maximumValue ifNil: [self maximumValue: self defaultMaximumValue].
	^ maximumValue