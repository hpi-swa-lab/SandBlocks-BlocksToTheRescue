accessing
anchoredMorph

	self blockModel ifNil: [^ nil].
	^ anchoredMorph ifNil: [anchoredMorph := self viewForModel: self blockModel]