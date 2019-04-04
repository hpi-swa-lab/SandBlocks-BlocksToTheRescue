accessing
direction
	direction ifNil: [self direction: self representedObject orientation.].
	^direction