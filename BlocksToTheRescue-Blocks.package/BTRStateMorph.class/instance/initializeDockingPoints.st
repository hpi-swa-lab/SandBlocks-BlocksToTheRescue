initialization
initializeDockingPoints

	self dockingPoints: (#(top right bottom left)
		collect: [:each | self createDockingPoint: each]).