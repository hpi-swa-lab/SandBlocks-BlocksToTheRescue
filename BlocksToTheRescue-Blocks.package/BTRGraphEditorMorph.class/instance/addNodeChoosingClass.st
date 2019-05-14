menu actions
addNodeChoosingClass

	| blocketClass |
	blocketClass := BTRAbstractBlockModel userSelectBlockModelClass: 'Choose class of node content'.
	self graph addNode: (BTRGraphNode for: blocketClass previewInstance).