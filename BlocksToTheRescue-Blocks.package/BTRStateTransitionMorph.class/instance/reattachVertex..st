updating
reattachVertex: index

	| point |
	point := self vertexAt: index.
	self stateMachineMorph stateMorphsDict values
		detect: [:stateMorph | (stateMorph dockingPointFor: point) notNil]
		ifFound: [:morph |
			self setVertexState: index to: morph state dock: (morph dockingPointFor: point)]
		ifNone: [].
	self updateVertices.