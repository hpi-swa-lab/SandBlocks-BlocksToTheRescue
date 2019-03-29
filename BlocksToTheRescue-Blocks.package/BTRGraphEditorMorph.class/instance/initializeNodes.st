initialization
initializeNodes

	| added removed |
	added := self graph nodes reject: [:each | self nodeViews keys identityIncludes: each].
	removed :=  self nodeViews keys reject: [:each | self graph nodes identityIncludes: each].
	self removeAllMorphsIn: (removed collect: [:each | self nodeViews removeKey: each]).
	self addAllMorphs: (added collect: [:each | self nodeViews at: each put: (BTRGraphNodeMorph on: each)])