*BlocksToTheRescue
correctSelectionWithString: aText
	| result newPosition |
	"I can't tell if this is a hack or if it's the right thing to do."
	self setSelection: selectionInterval. 

	result := self correctFrom: selectionInterval first to: selectionInterval last with: aText.
	textMorph adjustEmbeddedMorphs.
	newPosition := selectionInterval first + aText size.
	self setSelection: (newPosition to: newPosition - 1).
	^ result