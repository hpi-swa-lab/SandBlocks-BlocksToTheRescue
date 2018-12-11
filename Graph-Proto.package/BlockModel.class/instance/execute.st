logic
execute

	| nextBlock |
	self action value.
	nextBlock := self nextBlock.
	nextBlock
		ifNotNil: [nextBlock execute]