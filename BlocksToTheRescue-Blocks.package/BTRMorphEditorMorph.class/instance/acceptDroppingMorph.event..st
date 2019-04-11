as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	aMorph position: (self scroller transform globalPointToLocal: aMorph position).
	self value acceptDroppingMorph: aMorph event: anEvent.