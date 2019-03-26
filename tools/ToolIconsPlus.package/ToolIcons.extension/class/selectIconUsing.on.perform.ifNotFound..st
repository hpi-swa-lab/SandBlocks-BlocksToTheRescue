*ToolIconsPlus
selectIconUsing: strategyCollection on: strategyContainer perform: aBlockClosure ifNotFound: notFoundBlock

	strategyCollection
		do: [:strategy | (aBlockClosure value: strategy)
			ifNotNil: [ :result |	((self findMethodInBehavior: strategyContainer class selector: strategy) pragmaAt: #iconSymbol:)
				ifNotNil: [ :pragma | result ifTrue: [^ pragma argumentAt: 1]]
				ifNil: [result ifNotNil: [^ result]]]].
	^ notFoundBlock value