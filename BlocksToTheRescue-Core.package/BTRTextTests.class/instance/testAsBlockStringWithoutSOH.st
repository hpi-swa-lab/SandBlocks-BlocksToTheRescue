testing
testAsBlockStringWithoutSOH

	| string text |
	string := 'Hello'.
	text := string asText.
	self assert: string equals: text asBTRBlockString.