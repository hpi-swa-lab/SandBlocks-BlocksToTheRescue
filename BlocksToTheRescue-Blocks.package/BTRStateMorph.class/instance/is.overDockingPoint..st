testing
is: aPoint overDockingPoint: aSymbol

	^ (aPoint squaredDistanceTo: (self dockingPointPositionAt: aSymbol)) <= self dockingPointHoverRadius squared