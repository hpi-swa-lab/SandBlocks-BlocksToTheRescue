testing
testConversionMorphAsFirstCharacter

	| morph newMorph inlineViewDecorator text newText |
	morph := Morph new.
	text := 	(Text string: (String value: 1) attribute: (BTRBlockAttribute new blockModel: (BTRConstantModel for: morph))), 'foobar'.
	newText := Text fromBTRBlockString: text asBTRBlockString.

	self assert: text string equals: newText string.
	self assert: 1 equals: text embeddedMorphs size.
	inlineViewDecorator := text embeddedMorphs asOrderedCollection first.
	newMorph := inlineViewDecorator submorphs first.
	self assert: morph class equals: newMorph class.