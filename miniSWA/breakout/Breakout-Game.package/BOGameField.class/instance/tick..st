stepping and presenter
tick: deltaTimeInMS
	self hadLagSpike ifTrue: [Transcript showln: 'Lag detected: ', deltaTimeInMS, 'ms'].

	self window setLabel: 'Score: ', self score.

	self
		tickEntities: deltaTimeInMS;
		collideEntities.