*ToolIconsPlus-Strategies
strategyMethodPrimitive: aMethodReference

	^ aMethodReference actualClass methodDict
		at: aMethodReference methodSymbol
		ifPresent: [:method | method isCompiledMethod
			ifTrue: [(method primitive ~= 0 and: [method isQuick not])
				ifTrue: [#primitive]]]