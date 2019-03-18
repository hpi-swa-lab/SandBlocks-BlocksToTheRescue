accessing
image: anObject

	image := anObject.
	self imageMorph: ImageMorph new.
	self imageMorph newForm: (self image scaledToSize: self defaultSize - (5@5)).
	self submorphsDo: [:each | each abandon].
	self addMorphCentered: self imageMorph.