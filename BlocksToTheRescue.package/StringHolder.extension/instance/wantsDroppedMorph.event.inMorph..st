*BlocksToTheRescue
wantsDroppedMorph: dropee event: aDropEvent inMorph: target

	^ ((aDropEvent respondsTo: #causingEvent) and: [aDropEvent causingEvent shiftPressed]) or: [dropee isKindOf: TransferMorph]
		