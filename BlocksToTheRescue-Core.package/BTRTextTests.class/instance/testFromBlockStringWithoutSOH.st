testing
testFromBlockStringWithoutSOH

	| string text |
	string := 'Hello'.
	text := Text fromBTRBlockString: string.
	self assert: string equals: text string.