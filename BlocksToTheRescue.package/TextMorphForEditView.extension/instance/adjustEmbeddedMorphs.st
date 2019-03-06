*BlocksToTheRescue
adjustEmbeddedMorphs

	|embeddedMorphs|
	embeddedMorphs := self text embeddedMorphs.
	self submorphsDo: [:each |
		(embeddedMorphs includes: each)
			 ifFalse: [each abandon]].
	self text embeddedMorphs do: [:each |
		(self submorphs includes: each)
			ifFalse: [self addMorph: each]].