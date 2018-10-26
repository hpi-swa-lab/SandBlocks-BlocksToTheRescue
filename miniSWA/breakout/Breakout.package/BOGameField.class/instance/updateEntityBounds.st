stepping and presenter
updateEntityBounds

	self stopStepping.
	self allEntities do: [:entity | entity forceBoundsUpdates].
	self startStepping.