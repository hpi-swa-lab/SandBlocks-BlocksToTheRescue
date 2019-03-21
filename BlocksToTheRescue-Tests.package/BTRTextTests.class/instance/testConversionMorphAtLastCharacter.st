testing
testConversionMorphAtLastCharacter
	"Regression test, because in earlier versions, Morphs were not properly serialized if they were the last character in a method"
	| morph newMorph text newText |
	morph := Morph new.
	text := (Text withAll: ' '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredBlock: morph)).
	newText := Text fromBTRBlockString: text asBTRBlockString.

	self assert: text string equals: newText string.
	self assert: 1 equals: text embeddedMorphs size.
	newMorph := text embeddedMorphs asOrderedCollection first.
	self assert: morph class equals: newMorph class.