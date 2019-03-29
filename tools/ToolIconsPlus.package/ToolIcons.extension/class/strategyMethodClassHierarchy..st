*ToolIconsPlus-Strategies
strategyMethodClassHierarchy: aMethodReference
	| class message |
	class := aMethodReference actualClass.
	message := aMethodReference methodSymbol.
	^ (class isSelectorOverride: message)
		ifTrue: [(class isSelectorOverridden: message)
			ifTrue: [#arrowUpAndDown]
			ifFalse: [#arrowUp]]
		ifFalse: [(class isSelectorOverridden: message)
			ifTrue: [#arrowDown]]