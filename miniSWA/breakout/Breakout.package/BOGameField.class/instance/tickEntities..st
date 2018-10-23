stepping and presenter
tickEntities: deltaTimeInMS

	self allTickingEntities do: [:entity | entity tick: deltaTimeInMS].