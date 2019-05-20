geometry
updateDockingPositions

	self dockingMorphDict keysAndValuesDo: [:dock :morph |
		morph center: (self dockingPointPositionAt: dock)].