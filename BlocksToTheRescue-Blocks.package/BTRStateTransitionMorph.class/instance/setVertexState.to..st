accessing
setVertexState: vertexIndex to: aBTRState

	vertexIndex = 1 ifTrue: [
		self startState removeTransitionNamed: self transition name.
		aBTRState addTransition: self transition.
		self startState: aBTRState].
	vertexIndex = self vertices size ifTrue: [
		self transition targetStateName: aBTRState name].
	self updateVertices.