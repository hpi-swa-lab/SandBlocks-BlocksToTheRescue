as yet unclassified
initialize

	super initialize.
	self imageMorph abandon.
	self imageMorph: BTRRescalingImageMorph new.
	self imageMorph bounds: self innerBounds.
	self addMorph: self imageMorph.