*IconsForMessages
selectIconUsing: strategyCollection with: anObject ifNotFound: notFoundBlock

	strategyCollection
		do: [:strategy | | result |
			result := self perform: strategy with: anObject.
			((self class >> strategy) pragmaAt: #iconSymbol:)
				ifNotNil: [:pragma | result ifTrue: [^ pragma argumentAt: 1]]
				ifNil: [result ifNotNil: [^ result]]].
	^ notFoundBlock value