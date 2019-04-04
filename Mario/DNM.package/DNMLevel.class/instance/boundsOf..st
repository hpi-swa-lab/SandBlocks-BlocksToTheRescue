utility
boundsOf: aType
	"Returns the bounds that an element of this type will have in game."
	^(DNMLevelElement newOfType: aType) bounds