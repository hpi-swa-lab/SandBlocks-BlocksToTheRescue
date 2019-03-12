testing
testMorphPosition
	| t1 |
	self assert: 0 @ 0 equals: self morph position.
	self scanner
		displayLine: self line
		offset: 0 @ 0
		leftInRun: 0.
	t1 := (self font
				widthOfString: self text asString
				from: 1
				to: 3)
				+ (self textAttribute embeddedObjectPadding at: #left).
	self assert: t1 @ self textStyle leading equals: self morph position