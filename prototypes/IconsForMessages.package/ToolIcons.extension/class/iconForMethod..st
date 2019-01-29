*IconsForMessages
iconForMethod: aMethodReference
	"Answer an icon (!) to be shown for the given method reference."
	
	aMethodReference isValid ifFalse: [^ self emptyIcon].
	
	(aMethodReference compiledMethod pragmaAt: #messageIcon:)
		ifNotNil: [:pragma | ^ self icon: (pragma argumentAt: 1)].
	
	"self method: (aBehavior >> aSelector) priority: 1 ifRulesApplied: [:icon | ^ icon]."

	^ self icon: (self
		iconForClass: aMethodReference actualClass
		symbol: aMethodReference methodSymbol)