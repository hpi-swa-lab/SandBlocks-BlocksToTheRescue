testing
testConversionMissingMorphs

	| text oldString |
	oldString := '^ ', (String value: 1), ' extent: (500 random) @ (500 random)'.
	text := Text withAll: oldString.
	text := Text fromBTRBlockString: text asBTRBlockString.
	
	self assert: oldString equals: text string.
	self assert: 0 equals: text embeddedMorphs size.
	self assert: 0 equals: (text attributesAt: 3) size.