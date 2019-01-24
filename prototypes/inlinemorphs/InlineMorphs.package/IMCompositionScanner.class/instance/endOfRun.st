stop conditions
endOfRun
	"Answer true if scanning has reached the end of the paragraph. 
	Otherwise step conditions (mostly install potential new font) and answer 
	false."

	| runLength textConfig |
	textConfig := text runs at: lastIndex.
	FileStream stdout nextPutAll: textConfig printString, Character lf; flush.
	textConfig 
		detect: [:each | each isKindOf: IMTextAttribute]
		ifFound: [:attribute | 
			attribute inlineMorph topLeft: destX - 3 @ destY.
			lineHeight := lineHeight max: attribute inlineMorph height.
			line stop: lastIndex.
			spaceX := destX := destX + attribute inlineMorph width.
			line setRight: spaceX.
			line paddingWidth: rightMargin - destX.
			(lastIndex = text size)
				ifFalse: [
					self continueThisLine: rightMargin > 0.
					runLength := (text runLengthFor: (lastIndex := lastIndex + 1)).
					runStopIndex := lastIndex + (runLength - 1).
					self setStopConditions].
			leftMargin := spaceX.
			^ true]
		ifNone: [].
	(lastIndex = text size)
	ifTrue:	[line stop: lastIndex.
			spaceX := destX.
			line paddingWidth: rightMargin - destX.
			^true]
	ifFalse:	[runLength := (text runLengthFor: (lastIndex := lastIndex + 1)).
			runStopIndex := lastIndex + (runLength - 1).
			self setStopConditions.
			^false]