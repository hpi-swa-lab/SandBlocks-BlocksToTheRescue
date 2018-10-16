accessing
tickEntities: deltaTime
	self entitySet do: [:entity | entity tick: deltaTime].