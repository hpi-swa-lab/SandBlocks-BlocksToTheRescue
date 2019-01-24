as yet unclassified
addLines: anOrderedCollection

	|lastChar|
	anOrderedCollection do: [:each | 
		lines addLast: each.
		actualHeight := actualHeight max: each lineHeight.
		currCharIndex := each last + 1.
		lastChar := theText at: each last].
	^ lastChar