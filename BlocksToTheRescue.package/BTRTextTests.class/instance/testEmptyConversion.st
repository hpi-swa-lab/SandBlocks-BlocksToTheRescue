testing
testEmptyConversion

	| text newText |
	text := 	(Text fromString: '').
	newText := Text fromBTRBlockString: text asBTRBlockString.

	self assert: text string equals: newText string.