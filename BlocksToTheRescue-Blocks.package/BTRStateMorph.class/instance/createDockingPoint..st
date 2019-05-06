initialization
createDockingPoint: aSymbol

	| morph |
	morph := CircleMorph new
		color: Color white;
		extent: 5 asPoint;
		center: (self dockingPointAt: aSymbol).
	self addMorph: morph.
	^ morph