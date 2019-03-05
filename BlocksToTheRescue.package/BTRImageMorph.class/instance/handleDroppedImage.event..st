event handling
handleDroppedImage: aFileStream event: anEvent

	self removeAllMorphs.
	self image: (self formFrom: aFileStream).
	self imageMorph: ImageMorph new.
	self imageMorph newForm: (self image scaledToSize: self defaultSize - (5@5)).
	self addMorphCentered: self imageMorph.
	
	
	