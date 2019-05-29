testing
testConversionMorphAtLastCharacter
	"Regression test, because in earlier versions, Morphs were not properly serialized if they were the last character in a method"
	| morph newMorph inlineViewDecorator text newText |
	morph := Morph new.
	text := (Text withAll: ' '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new blockModel: (BTRConstantModel for: morph))).
	newText := Text fromBTRBlockString: text asBTRBlockString.

	self assert: text string equals: newText string.
	self assert: 1 equals: text embeddedMorphs size.
	inlineViewDecorator := text embeddedMorphs asOrderedCollection first.
	newMorph := inlineViewDecorator submorphs first.
	self assert: morph class equals: newMorph class.