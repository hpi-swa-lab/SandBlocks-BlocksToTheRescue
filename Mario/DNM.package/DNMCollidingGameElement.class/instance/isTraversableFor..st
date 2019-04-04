testing
isTraversableFor: aGameElement
	"By default, every object is either traversable or not traversable, no matter for which object, except that every object can of course be traversed by itself"
	^self isTraversable or: [aGameElement == self]