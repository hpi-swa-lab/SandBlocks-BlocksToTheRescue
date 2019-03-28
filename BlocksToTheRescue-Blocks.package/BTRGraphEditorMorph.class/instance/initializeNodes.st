as yet unclassified
initializeNodes

	| added removed |
	added := self graph nodes difference: self nodeViews keys.
	removed :=  self nodeViews keys difference: self graph nodes.
	self removeAllMorphsIn: (removed collect: [:each | self nodeViews removeKey: each]).
	self addAllMorphs: (added collect: [:each | self nodeViews at: each put: (BTRGraphNodeMorph on: each)])