*BlocksToTheRescue-Core
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Return the dropee to its old position, and add a reference to it at the
	cursor point."
	| textWithMorph externalName reference selectionPosition |
	(dropee isKindOf: TransferMorph)
		ifTrue: [reference := dropee passenger.
			externalName := dropee passenger className]
		ifFalse: [reference := dropee.
			externalName := dropee externalName].
	externalName := externalName isOctetString
				ifTrue: [externalName]
				ifFalse: ['a' , externalName].
	textWithMorph :=  (Text string: (String value: 1) attributes: {(BTRBlockAttribute new anchoredBlock: dropee)}).
	selectionPosition := (targetMorph textMorph paragraph characterBlockAtPoint: evt position + targetMorph scroller transform offset) stringIndex.
	targetMorph setSelection: (selectionPosition to: selectionPosition - 1).
	targetMorph correctSelectionWithString: textWithMorph.
	(dropee isKindOf: TransferMorph)
		ifFalse: [dropee rejectDropMorphEvent: evt].
	^ true"success"