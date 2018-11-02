stepping and presenter
tick: deltaTimeInMS
	self hadLagSpike ifTrue: [self changed: #lag with: deltaTimeInMS].

	self
		tickEntities: deltaTimeInMS;
		collideEntities.