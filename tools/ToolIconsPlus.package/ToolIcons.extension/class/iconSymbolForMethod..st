*ToolIconsPlus
iconSymbolForMethod: aMethodReference
	"Answer an icon symbol to be shown for the given method reference."
	
	aMethodReference methodSymbol isDoIt ifTrue: [^ #play].
	aMethodReference isValid ifFalse: [^ #brokenMorph].
	
	^ self
		selectIconUsing: #(
			strategyPragmaMessageIconSymbol:
			strategyPragmaMessageIconAt:
			strategyToolIconSelector:
			strategyMethodFeatures:
			strategyMethodClassHierarchy:
			strategyMethodTraitHierarchy:
			strategyMethodPrimitive:)
		with: aMethodReference
		ifNotFound: [#blank]