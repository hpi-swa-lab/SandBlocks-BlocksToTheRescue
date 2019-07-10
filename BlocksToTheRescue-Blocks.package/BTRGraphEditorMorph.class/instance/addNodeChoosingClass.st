menu actions
addNodeChoosingClass

	| blocketClass |
	blocketClass := BTRAbstractBlockModel userSelectBlockModelClass: 'Choose class of node content'.
	blocketClass ifNotNil: [self graph addNode: (BTRGraphNode for: blocketClass previewInstance)].