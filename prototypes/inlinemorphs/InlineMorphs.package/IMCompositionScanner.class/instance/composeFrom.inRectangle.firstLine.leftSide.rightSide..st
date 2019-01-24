scanning
composeFrom: startIndex inRectangle: lineRectangle
	firstLine: firstLine leftSide: leftSide rightSide: rightSide
	"Answer an Array of TextLineInterval that represents the next line in the paragraph."
	| runLength stopCondition lines |
	"Set up margins"
	leftMargin := lineRectangle left.
	leftSide ifTrue: [leftMargin := leftMargin +
						(firstLine ifTrue: [textStyle firstIndent]
								ifFalse: [textStyle restIndent])].
	destX := spaceX := leftMargin.
	rightMargin := lineRectangle right.
	rightSide ifTrue: [rightMargin := rightMargin - textStyle rightIndent].
	lastIndex := startIndex.	"scanning sets last index"
	destY := lineRectangle top.
	lineHeight := baseline := 0.  "Will be increased by setFont"
	self setStopConditions.	"also sets font"
	runLength := text runLengthFor: startIndex.
	runStopIndex := startIndex + (runLength - 1).
	nextIndexAfterLineBreak := spaceCount := 0.
	lastBreakIsNotASpace := false.
	self handleIndentation.
	leftMargin := destX.
	
	lines := OrderedCollection new.
	self continueThisLine: true.
	[self continueThisLine]
		whileTrue: [
			self continueThisLine: false.
			
			line := (TextLine start: lastIndex stop: 0 internalSpaces: 0 paddingWidth: 0)
				rectangle: lineRectangle.
			line leftMargin: leftMargin.

			[stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
				in: text string rightX: rightMargin.
			"See setStopConditions for stopping conditions for composing."
			self perform: stopCondition] whileFalse.
			lines add: (line
				lineHeight: lineHeight + textStyle leading
				baseline: baseline + textStyle leading)].
	
	^ lines