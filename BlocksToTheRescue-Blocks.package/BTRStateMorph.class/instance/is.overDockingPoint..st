testing
is: aPoint overDockingPoint: aSymbol

	^ (aPoint squaredDistanceTo: (self dockingPointPositionAt: aSymbol)) <= DockingPortMorph hoverRadius squared