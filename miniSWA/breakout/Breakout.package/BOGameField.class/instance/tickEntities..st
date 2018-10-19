stepping and presenter
tickEntities: deltaTimeInMS

	self entityManagers do: [:manager |
		manager tickEntities: deltaTimeInMS].