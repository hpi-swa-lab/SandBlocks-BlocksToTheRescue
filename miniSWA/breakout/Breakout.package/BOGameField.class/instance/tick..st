stepping and presenter
tick: deltaTimeInMS
	self window setLabel: (
		'fps: ', (1000.0 / deltaTimeInMS) asInteger asString,
		' rel: ', (self relativeMousePosition asString)).

	self tickEntities: deltaTimeInMS.