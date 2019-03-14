*BlocksToTheRescue
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Return the dropee to its old position, and add a reference to it at the
	cursor point."
	| morphName externalName reference |
	(dropee isKindOf: TransferMorph)
		ifTrue: [reference := dropee passenger.
			externalName := dropee passenger className]
		ifFalse: [reference := dropee.
			externalName := dropee externalName].
	externalName := externalName isOctetString
				ifTrue: [externalName]
				ifFalse: ['a' , externalName].
	morphName :=  (Text string: (String value: 1) attributes: {(BTRBlockAttribute new anchoredMorph: dropee)}).
	targetMorph correctSelectionWithString: morphName.
	(dropee isKindOf: TransferMorph)
		ifFalse: [dropee rejectDropMorphEvent: evt].
	^ true"success"