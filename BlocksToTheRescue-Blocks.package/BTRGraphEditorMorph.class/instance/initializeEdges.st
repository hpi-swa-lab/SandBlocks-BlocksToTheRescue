initialization
initializeEdges

	| added removed |
	added := self graph edges difference: self edgeViews keys.
	removed :=  self edgeViews keys difference: self graph edges.
	self removeAllMorphsIn: (removed collect: [:each | self edgeViews removeKey: each]).
	self addAllMorphs: (added collect: [:each | self edgeViews at: each put: (self createEdgeViewFor: each)])