logic
executeNextBlock
	
	| nextBlock |
	nextBlock := self nextBlock.
	nextBlock ifNotNil: [nextBlock execute].