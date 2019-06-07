as yet unclassified
fixDependents

	self breakDependents.
	self nodes: self nodes.
	self edges: self edges.