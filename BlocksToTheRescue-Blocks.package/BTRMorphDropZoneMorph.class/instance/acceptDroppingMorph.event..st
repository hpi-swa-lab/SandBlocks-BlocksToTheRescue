layout
acceptDroppingMorph: aMorph event: evt

	| image |
	self morph: aMorph.
	self removeAllMorphs.
	image := (ImageMorph new newForm: (aMorph imageForm scaledToSize: self defaultSize - (5@5))).
	self addMorph: image.
	image center: self center.