initialization
initializeDockingPoints

	#(top right bottom left) do: [:direc |
		self dockingMorphDict at: direc put: (
			CircleMorph new
				setProperty: #morphicLayerNumber toValue: 85;
				extent: self class dockingPointRadius asPoint * 2;
				center: (self dockingPointPositionAt: direc);
				color: Color gray;
				in: [:morph | self addMorph: morph];
				yourself)].
	self hideDockingPoints.