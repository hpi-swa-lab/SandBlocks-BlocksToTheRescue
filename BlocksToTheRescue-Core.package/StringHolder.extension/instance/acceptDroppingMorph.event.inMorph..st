*BlocksToTheRescue-Core
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Create a BlockModel for the dropped morph and insert it into the text."
	| textWithMorph selectionPosition |
	textWithMorph := BTRBlockAttribute asTextFrom: dropee.
	selectionPosition := (targetMorph textMorph paragraph
		characterBlockAtPoint: evt position + targetMorph scroller transform offset) stringIndex.
	targetMorph setSelection: (selectionPosition to: selectionPosition - 1).
	targetMorph correctSelectionWithString: textWithMorph.
	^ true "success"