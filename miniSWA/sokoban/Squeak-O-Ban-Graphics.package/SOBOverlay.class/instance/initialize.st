initialize-release
initialize

	super initialize.
	self message: StringMorph new.
	self message emphasis: 1.
	self addMorphCentered: self message.
	self hide.