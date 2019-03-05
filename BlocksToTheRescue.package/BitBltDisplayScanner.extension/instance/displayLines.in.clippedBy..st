*BlocksToTheRescue
displayLines: linesInterval in: aParagraph clippedBy: visibleRectangle
	"The central display routine. The call on the primitive 
	(scanCharactersFrom:to:in:rightX:) will be interrupted according to an 
	array of stop conditions passed to the scanner at which time the code to 
	handle the stop condition is run and the call on the primitive continued 
	until a stop condition returns true (which means the line has 
	terminated)."
	| leftInRun |
	"leftInRun is the # of characters left to scan in the current run;
		when 0, it is time to call 'self setStopConditions'"
	morphicOffset := 0@0.
	leftInRun := 0.
	self initializeFromParagraph: aParagraph clippedBy: visibleRectangle.
	ignoreColorChanges := false.
	foregroundColor := defaultTextColor := aParagraph foregroundColor.
	backgroundColor := aParagraph backgroundColor.
	aParagraph backgroundColor isTransparent
		ifTrue: [fillBlt := nil]
		ifFalse: [fillBlt := bitBlt copy.  "Blt to fill spaces, tabs, margins"
				fillBlt sourceForm: nil; sourceOrigin: 0@0.
				fillBlt fillColor: aParagraph backgroundColor].
	rightMargin := aParagraph rightMarginForDisplay.
	lineY := aParagraph topAtLineIndex: linesInterval first.
	bitBlt destForm deferUpdatesIn: visibleRectangle while: [
		linesInterval do: 
			[:lineIndex | 
			| string startIndex lastPos runLength stopCondition baselineY lineHeight stop |
			line := aParagraph lines at: lineIndex.
			lastDisplayableIndex := lastIndex := line first.
			leftInRun <= 0
				ifTrue: [self setStopConditions.  "also sets the font, alignment and emphasisCode"
						leftInRun := text runLengthFor: line first].
			leftMargin := aParagraph leftMarginForDisplayForLine: lineIndex alignment: alignment.
			destX := leftMargin.
			lineHeight := line lineHeight.
			fillBlt == nil ifFalse:
				[fillBlt destX: visibleRectangle left destY: lineY
					width: visibleRectangle width height: lineHeight; copyBits].
			baselineY := lineY + line baseline.
			destY := baselineY - font ascent.  "Should have happened in setFont"
			runLength := leftInRun.
			runStopIndex := lastIndex + (runLength - 1) min: line last.
			leftInRun := leftInRun - (runStopIndex - lastIndex + 1).
			spaceCount := 0.
			string := text string.
			self handleIndentation.
			[
				"Reset the stopping conditions of this displaying loop, and also the font."
				stopConditionsMustBeReset
					ifTrue:[self setStopConditions].
				startIndex := lastIndex.
				lastPos := destX@destY.
				stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
							inText: text rightX: rightMargin.
				stop := self perform: stopCondition.
				lastDisplayableIndex >= startIndex ifTrue:[
					font displayString: string on: bitBlt 
						from: startIndex to: lastDisplayableIndex at: lastPos kern: kern].
				stop
			] whileFalse.
			fillBlt == nil ifFalse:
				[fillBlt destX: destX destY: lineY width: visibleRectangle right-destX height: lineHeight; copyBits].
			lineY := lineY + lineHeight]]