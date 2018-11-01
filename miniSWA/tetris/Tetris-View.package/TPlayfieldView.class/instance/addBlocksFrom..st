as yet unclassified
addBlocksFrom: aTPlayField

	0 to: aTPlayField gridWidth - 1 do: [ :x |
		0 to: aTPlayField gridHeight - 1 do: [ :y |
			(aTPlayField gridAt: x @ y)
				ifNotNil: [:block | self addBlock: block at: x @ y ]]].