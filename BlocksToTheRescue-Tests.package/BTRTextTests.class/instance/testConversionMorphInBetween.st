testing
testConversionMorphInBetween

	| morph newMorph inlineViewDecorator text |
	morph := Morph new
		color: Color random;
		extent: 80 @ 20;
		addMorph: StarMorph new;
		yourself.
	text := (Text withAll: '^ '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new blockModel: (BTRConstantModel for: morph))),
			(Text withAll: ' extent: (500 random) @ (500 random).').
	text := Text fromBTRBlockString: text asBTRBlockString.

	self assert: 1 equals: text embeddedMorphs size.
	inlineViewDecorator := text embeddedMorphs asOrderedCollection first.
	newMorph := inlineViewDecorator submorphs first.
	self assert: morph class equals: newMorph class.
	self assert: morph color equals: newMorph color.
	self assert: morph extent equals: newMorph extent.
	self assert: (morph submorphs collect: [:each | each class]) equals: (newMorph submorphs collect: [:each | each class]).