*IconsForMessages
iconForMethod: aMethodReference
	"Answer an icon (!) to be shown for the given method reference."
	
	aMethodReference isValid ifFalse: [^ self emptyIcon].
	
	"^ self icon: (self
		iconForClass: aMethodReference actualClass
		symbol: aMethodReference methodSymbol)"
	^ [self icon: (self
		selectIconUsing: #(
			strategyPragmaMessageIconSymbol:
			strategyPragmaMessageIconAt:
			strategyToolIconSelector:
			strategyMethodFeatures:
			strategyMethodHierarchy:
			strategyMethodPrimitive:)
		with: aMethodReference
		ifNotFound: [#blank])]
	on: Exception
	do: [:ex | (ex isKindOf: Halt) ifTrue: [ex pass].
		self icon: #brokenMorphIcon]