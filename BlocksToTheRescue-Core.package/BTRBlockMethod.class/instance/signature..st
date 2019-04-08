accessing
signature: aString

	| ranges |
	self selector: (Parser new parseSelector: aString).
	ranges := SHParserST80 new
		parseAMethod: true;
		rangesIn: aString classOrMetaClass: self methodClass workspace: nil environment: nil.
	self parameterNames: (ranges
		select: [:each | each type = #patternArg]
		thenCollect: [:range | aString copyFrom: range start to: range end]).