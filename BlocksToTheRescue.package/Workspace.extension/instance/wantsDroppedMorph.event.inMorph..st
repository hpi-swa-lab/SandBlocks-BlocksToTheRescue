*BlocksToTheRescue
wantsDroppedMorph: dropee event: evt inMorph: target

	^ acceptDroppedMorphs
		ifTrue: [acceptDroppedMorphs or: [dropee isKindOf: TransferMorph]]
		ifFalse: [super wantsDroppedMorph: dropee event: evt inMorph:target]
		
