accessing
renameTransitionsTargeting: oldName to: newName

	self transitions
		select: [:each | each targetStateName = oldName]
		thenDo: [:each | each targetStateName: newName].