stepping and presenter
tick: deltaTimeInMS
	self window setLabel: ((1000.0 / deltaTimeInMS) asInteger asString, ' fps').

	self brickManager tickEntities: deltaTimeInMS.
	self paddleManager tickEntities: deltaTimeInMS.
	self ballManager tickEntities: deltaTimeInMS.