as yet unclassified
addBlocksFrom: aTTetromino

	aTTetromino blocks do: [:each |
		self addMorph: ((TBlockView colored: each color)
							position: each gridPosition * TBlockView defaultWidth + self position);
							yourself].