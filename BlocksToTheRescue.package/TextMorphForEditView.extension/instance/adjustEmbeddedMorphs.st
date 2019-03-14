*BlocksToTheRescue
adjustEmbeddedMorphs

	|embeddedMorphs|
	embeddedMorphs := self text embeddedMorphs.
	self submorphsDo: [:each |
		(embeddedMorphs includes: each)
			 ifFalse: [ each abandon]].
	self text embeddedMorphs do: [:each |
		(self submorphs includes: each)
			ifFalse: [ | eventHandler |
				eventHandler := EventHandler new on: #mouseDown send: #startDragging:onMorph: to: self.
				each eventHandler: eventHandler.
				self addMorph: each]].