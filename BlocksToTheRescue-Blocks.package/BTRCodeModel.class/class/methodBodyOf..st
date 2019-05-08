insertion
methodBodyOf: aMethod

	| ranges startIndexBody aTextOrString |
	aTextOrString := aMethod getSource.
	
	ranges := SHParserST80 new
		parseAMethod: true;
		rangesIn: aTextOrString classOrMetaClass: aMethod methodClass workspace: nil environment: nil.

	startIndexBody := (ranges at: 
							(ranges findFirst: [:each | 
								(each type = #patternUnary or: 
								[each type = #patternBinary] or:
								[each type = #patternKeyword] or:
								[each type = #patternArg]) not])) start.

	^ aTextOrString copyFrom: startIndexBody to: aTextOrString size