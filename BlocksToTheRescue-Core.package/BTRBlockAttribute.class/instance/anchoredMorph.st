accessing
anchoredMorph

	^ anchoredMorph ifNil: [anchoredMorph := self blockModel inlineView]