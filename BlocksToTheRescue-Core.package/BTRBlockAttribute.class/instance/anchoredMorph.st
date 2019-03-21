accessing
anchoredMorph

	^ anchoredMorph ifNil: [anchoredMorph := self anchoredBlock inlineMorphSpec construct]