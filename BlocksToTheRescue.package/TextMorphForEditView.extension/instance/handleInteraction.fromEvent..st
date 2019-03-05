*BlocksToTheRescue
handleInteraction: interActionBlock fromEvent: evt
	"Overridden to pass along a model to the editor for, eg, link resolution, doits, etc"
	|result|
	self editor model: editView model.  "For evaluateSelection, etc"
	result := super handleInteraction: interActionBlock fromEvent: evt.
	self adjustEmbeddedMorphs.
	^ result