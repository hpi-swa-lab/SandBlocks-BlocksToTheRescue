coloring
color: newColor

	self image notNil
		ifTrue: [
			self image: self basicImage copy.
			self replacedColors do: [:aColor | self image mapColor: aColor to: newColor].
			self changed]
		ifFalse: [super color: newColor].