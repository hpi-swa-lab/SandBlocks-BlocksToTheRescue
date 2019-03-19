*ToolIconsPlus
selectIconUsing: strategyCollection on: strategyContainer perform: aBlockClosure ifNotFound: notFoundBlock

	strategyCollection
		do: [:strategy | (aBlockClosure value: strategy)
			ifNotNil: [ :result |	((strategyContainer class >> strategy) pragmaAt: #iconSymbol:)
				ifNotNil: [ :pragma | result ifTrue: [^ pragma argumentAt: 1]]
				ifNil: [result ifNotNil: [^ result]]]].
	^ notFoundBlock value