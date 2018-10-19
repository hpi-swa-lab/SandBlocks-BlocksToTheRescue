entity-ops
tickEntities: deltaTime
	self entityMorphMap
		keysDo: [:entity | entity isTicking ifTrue: [entity tick: deltaTime]].