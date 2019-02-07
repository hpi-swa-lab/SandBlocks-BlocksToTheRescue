*IconsForMessages-Strategies
strategyPragmaMessageIconSymbol: aMethodReference

	^ (aMethodReference compiledMethod pragmaAt: #messageIconSymbol:)
		ifNotNil: [:pragma | pragma argumentAt: 1]