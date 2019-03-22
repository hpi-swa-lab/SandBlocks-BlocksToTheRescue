*BlocksToTheRescue-Core
wantsDroppedMorph: dropee event: aDropEvent inMorph: target

	^ (aDropEvent respondsTo: #causingEvent) and: [aDropEvent causingEvent shiftPressed]
		
