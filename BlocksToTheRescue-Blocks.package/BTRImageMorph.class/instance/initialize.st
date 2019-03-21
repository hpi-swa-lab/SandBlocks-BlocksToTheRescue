initialization
initialize

	super initialize.
	self color: Color transparent.
	self borderWidth: 1.
	self borderColor: Color black.
	self imageMorph: ImageMorph new.
	self addMorph: self imageMorph.
	self refreshImageMorph.