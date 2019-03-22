*BlocksToTheRescue-Core
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Return the dropee to its old position, and add a reference to it at the
	cursor point."
	| textWithMorph selectionPosition |
	textWithMorph :=  (Text string: (String value: 1) attributes: {BTRBlockAttribute new blockModel: (BTRConstantModel for: dropee)}).
	selectionPosition := (targetMorph textMorph paragraph characterBlockAtPoint: evt position + targetMorph scroller transform offset) stringIndex.
	targetMorph setSelection: (selectionPosition to: selectionPosition - 1).
	targetMorph correctSelectionWithString: textWithMorph.
	^ true"success"