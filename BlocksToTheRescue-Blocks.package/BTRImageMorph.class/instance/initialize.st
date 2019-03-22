initialization
initialize

	super initialize.
	self color: Color transparent.
	self borderWidth: 1.
	self borderColor: Color black.

	self imageMorph: BTRRescalingImageMorph new.
	self imageMorph bounds: self innerBounds.
	self addMorph: self imageMorph.
	self refreshImageMorph.