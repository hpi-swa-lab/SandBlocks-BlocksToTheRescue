accessing
at: idx ifAbsentPutCell: aBTRCell

	"Return the cell at idx, however, if value does not exist (nil or out of bounds) 
	then add aBTRCell at idx (growing self if necessary)"

	[idx <= self size] whileFalse: [self add: nil].
	^ (self at: idx) ifNil: [self at: idx put: aBTRCell]