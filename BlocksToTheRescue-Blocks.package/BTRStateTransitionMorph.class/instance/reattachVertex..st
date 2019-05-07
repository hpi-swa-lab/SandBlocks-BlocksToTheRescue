as yet unclassified
reattachVertex: index

	| vertex |
	vertex := self vertexAt: index.
	self stateMachineMorph stateMorphsDict values
		detect: [:stateMorph | stateMorph bounds containsPoint: vertex]
		ifFound: [:morph | self setVertexState: index to: morph state]
		ifNone: [].
	self updateVertices.