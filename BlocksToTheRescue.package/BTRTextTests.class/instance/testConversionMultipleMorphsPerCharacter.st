testing
testConversionMultipleMorphsPerCharacter

	| morph1 morph2 text |
	morph1 := Morph new.
	morph2 := StarMorph new.
	text := (Text withAll: '^ '),
			(Text string: (String value: 1) attributes: {(BTRBlockAttribute new anchoredMorph: morph1) . (BTRBlockAttribute new anchoredMorph: morph2)}),
			(Text withAll: ' extent: (500 random) @ (500 random)').
	text := Text fromBTRBlockString: text asBTRBlockString.
	self assert: 2 equals: text embeddedMorphs size.
	self assert: {morph1 class . morph2 class} asSet equals: (text embeddedMorphs collect: [:each | each class]).