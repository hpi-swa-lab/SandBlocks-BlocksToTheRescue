placement
removeFullRowsPrivate

	0 to: self gridHeight - 1 do: [ :y |
		| missingBlock |
		missingBlock := false.
		0 to: self gridWidth - 1 do: [:x |
			missingBlock := missingBlock or: [ (self gridAt: x @ y) isNil ]].
		missingBlock 
			ifFalse: [self removeRow: y]].