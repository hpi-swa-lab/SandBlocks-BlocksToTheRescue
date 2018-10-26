stepping and presenter
tick: deltaTimeInMS
	self hadLagSpike ifTrue: [Transcript showln: 'Lag detected: ', deltaTimeInMS, 'ms'].

	self window setLabel: (
		'fps: ', (1000.0 / deltaTimeInMS) asInteger asString,
		' rel: ', (self relativeMousePosition * 100) asIntegerPoint asString).

	self
		tickEntities: deltaTimeInMS;
		collideEntities.