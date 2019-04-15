*ToolIconsPlus
iconSymbolForMethod: aMethodReference
	"Answer an icon symbol (or form if no symbol is used) to be shown for the given method reference."
	
	aMethodReference methodSymbol isDoIt ifTrue: [^ #play].
	aMethodReference isValid ifFalse: [^ #brokenMorph].
	
	^ self
		selectIconUsing: #(
			strategyPragmaMessageIconSymbol:
			strategyPragmaMessageIconAt:
			strategyToolIconSelector:
			strategyMethodFeatures:
			strategyMethodTraitHierarchy:
			strategyMethodClassHierarchy:
			strategyMethodPrimitive:)
		with: aMethodReference
		ifNotFound: [#blank]