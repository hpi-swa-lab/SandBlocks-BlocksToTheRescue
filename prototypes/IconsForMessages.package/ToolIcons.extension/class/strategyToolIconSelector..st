*IconsForMessages-Strategies
strategyToolIconSelector: aMethodReference

	^ (aMethodReference actualClass respondsTo: #toolIconSelector)
		ifTrue: [aMethodReference actualClass
			toolIconSelector: aMethodReference methodSymbol]