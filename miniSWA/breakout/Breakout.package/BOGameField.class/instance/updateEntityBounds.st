stepping and presenter
updateEntityBounds

	self stopStepping.
	self entityManagers do: [:manager |
		manager updateEntityBounds].
	self
		updateTickTime;
		startStepping.