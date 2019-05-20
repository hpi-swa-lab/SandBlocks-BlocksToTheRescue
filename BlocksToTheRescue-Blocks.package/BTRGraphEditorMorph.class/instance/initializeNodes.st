initialization
initializeNodes

	| added removed |
	added := self graph nodes reject: [:each |
		self nodeViews keys identityIncludes: each].
	removed :=  self nodeViews keys reject: [:each |
		self graph nodes identityIncludes: each].

	self removeAllMorphsIn: (removed collect: [:each |
		self removeDependent: (self nodeViews removeKey: each)]).
	added do: [:each | self nodeViews at: each put: each createView].
	self addAllMorphs: (added
		collect: [:each | self addDependent: (self nodeViews at: each)]).