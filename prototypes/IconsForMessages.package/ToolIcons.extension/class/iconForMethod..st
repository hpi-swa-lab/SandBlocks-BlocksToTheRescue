*IconsForMessages
iconForMethod: aMethodReference
	"Answer an icon (!) to be shown for the given method reference."
	
	aMethodReference isValid ifFalse: [^ self brokenMorphIcon].
	
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
		self brokenMorphIcon]