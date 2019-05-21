initialization
initializeDockingPoints

	#(top right bottom left) do: [:direc |
		self dockingMorphDict at: direc put: (
			DockingPortMorph new
				setProperty: #morphicLayerNumber toValue: 85;
				center: (self dockingPointPositionAt: direc);
				setProperty: #dockingDirection toValue: direc;
				on: #mouseDown send: #dockClickEvent:source: to: self;
				in: [:morph | self addMorph: morph];
				yourself)].
	self hideDockingPoints.