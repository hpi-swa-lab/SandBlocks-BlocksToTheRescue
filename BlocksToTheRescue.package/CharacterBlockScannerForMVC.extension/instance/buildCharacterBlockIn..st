*BlocksToTheRescue
buildCharacterBlockIn: para
	"This method is used by the MVC version only."
	
	| lineIndex runLength lineStop stopCondition |
	"handle nullText"
	(para numberOfLines = 0 or: [text size = 0])
		ifTrue:	[^ CharacterBlock new stringIndex: 1  "like being off end of string"
					text: para text
					topLeft: (para leftMarginForDisplayForLine: 1 alignment: (alignment ifNil:[textStyle alignment]))
								@ para compositionRectangle top
					extent: 0 @ textStyle lineGrid].
	"find the line"
	lineIndex := para lineIndexOfTop: characterPoint y.
	destY := para topAtLineIndex: lineIndex.
	line := para lines at: lineIndex.
	lastIndex := line first.
	rightMargin := para rightMarginForDisplay.
	self setStopConditions.  " also loads the font, alignment and all emphasis attributes "

	(lineIndex = para numberOfLines and:
		[(destY + line lineHeight) < characterPoint y])
			ifTrue:	["if beyond lastLine, force search to last character"
					self characterPointSetX: rightMargin]
			ifFalse:	[characterPoint y < (para compositionRectangle) top
						ifTrue: ["force search to first line"
								characterPoint := (para compositionRectangle) topLeft].
					characterPoint x > rightMargin
						ifTrue:	[self characterPointSetX: rightMargin]].
	destX := leftMargin := para leftMarginForDisplayForLine: lineIndex alignment: alignment.
	nextLeftMargin:= para leftMarginForDisplayForLine: lineIndex+1 alignment: alignment.
	runLength := text runLengthFor: line first.
	lineStop := characterIndex	"scanning for index"
		ifNil: [ line last ].			"scanning for point"
	runStopIndex := lastIndex + (runLength - 1) min: lineStop.
	lastCharacterWidth := 0.
	spaceCount := 0.
	self handleIndentation.

	[stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
			inText: text rightX: characterPoint x.
	"see setStopConditions for stopping conditions for character block operations."
	self perform: stopCondition] whileFalse.

	^characterIndex == nil
			ifTrue: ["characterBlockAtPoint"
					^ CharacterBlock new stringIndex: lastIndex text: text
						topLeft: characterPoint + (font descentKern @ 0)
						extent: lastCharacterWidth @ line lineHeight]
			ifFalse: ["characterBlockForIndex"
					^ CharacterBlock new stringIndex: lastIndex text: text
						topLeft: characterPoint + ((font descentKern) - kern @ 0)
						extent: lastCharacterWidth @ line lineHeight]