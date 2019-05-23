accessing
anchoredMorph

	self blockModel ifNil: [^ nil].
	^ anchoredMorph
		ifNil: [anchoredMorph := [self viewForModel: self blockModel]
									on: Error
									do: [self brokenMorphIcon]]