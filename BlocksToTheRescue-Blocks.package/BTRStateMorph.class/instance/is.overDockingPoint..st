testing
is: aPoint overDockingPoint: aSymbol

	^ (aPoint squaredDistanceTo: (self dockingPointAt: aSymbol)) <= self dockingPointHoverRadius squared