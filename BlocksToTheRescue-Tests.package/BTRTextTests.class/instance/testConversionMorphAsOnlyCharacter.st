testing
testConversionMorphAsOnlyCharacter

	| morph newMorph text newText |
	morph := Morph new.
	text := 	(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: morph)).
	newText := Text fromBTRBlockString: text asBTRBlockString.

	self assert: text string equals: newText string.
	self assert: 1 equals: text embeddedMorphs size.
	newMorph := text embeddedMorphs asOrderedCollection first.
	self assert: morph class equals: newMorph class.