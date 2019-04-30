accessing
viewForModel: aBTRBlockModel

	| theMorph |
	theMorph := aBTRBlockModel inlineView.
	theMorph isMorph "May be nil"
		ifTrue: [theMorph attachBlockModel: aBTRBlockModel].
	^ theMorph