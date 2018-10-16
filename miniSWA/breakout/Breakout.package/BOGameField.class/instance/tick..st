stepping and presenter
tick: deltaTimeInMS
	self owner setLabel: ((1000.0 / deltaTimeInMS) asInteger asString, ' fps').

	self brickManager tickEntities: deltaTimeInMS.
	self paddleManager tickEntities: deltaTimeInMS.
	self ballManager tickEntities: deltaTimeInMS.