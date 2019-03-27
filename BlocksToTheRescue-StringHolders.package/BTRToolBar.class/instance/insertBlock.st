actions
insertBlock

	self canInsertBlock ifTrue: [ | textMorph |
		textMorph := ActiveHand keyboardFocus.
		textMorph editor insertBlock].