testing
testMorphPosition
	| lineHeight |
	self assert: 0 @ 0 equals: self morph position.
	self scanner
		displayLine: self line
		offset: 0 @ 0
		leftInRun: 0.
	lineHeight := (self font
				widthOfString: self text asString
				from: 1
				to: 3)
				+ (self textAttribute embeddedObjectPadding at: #left).
	self assert: lineHeight @ self textStyle leading equals: self morph position