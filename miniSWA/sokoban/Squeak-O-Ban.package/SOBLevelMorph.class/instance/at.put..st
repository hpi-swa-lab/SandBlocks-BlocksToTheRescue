as yet unclassified
at: aPoint put: aMorph

	aMorph 
		position: (self positionFor: aPoint);
		extent: (self tileSize @ self tileSize). 
	self addMorph: aMorph.