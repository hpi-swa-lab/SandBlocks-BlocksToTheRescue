actions
insertBlock: aBTRBlockModel

	| textMorph caretPosition |
	textMorph := ActiveHand keyboardFocus.
	caretPosition := textMorph editor startIndex.

	textMorph text insertBlock: aBTRBlockModel at: caretPosition.
	textMorph updateFromParagraph.