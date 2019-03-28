*ToolIconsPlus-Strategies
strategyMethodTraitHierarchy: aMethodReference
	| class message |
	class := aMethodReference actualClass.
	message := aMethodReference methodSymbol.
	"^ (class isSelectorOverride: message)
		ifTrue: [(class isSelectorOverridden: message)
			ifTrue: [#arrowUpAndDown]
			ifFalse: [#arrowUp]]
		ifFalse: [(class isSelectorOverridden: message)
			ifTrue: [#arrowDown]]"
	^ (class isTraitOverride: message)
		ifTrue: [(class isTraitOverridden: message)
			ifTrue: [#redArrowUpAndDown]
			ifFalse: [#redArrowUp]]
		ifFalse: [(class isTraitOverridden: message)
			ifTrue: [#redArrowDown]]