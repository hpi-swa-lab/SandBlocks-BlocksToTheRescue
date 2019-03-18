*BlocksToTheRescue-Core
adjustEmbeddedMorphs

	|embeddedMorphs|
	embeddedMorphs := self text embeddedMorphs.
	self submorphsDo: [:each |
		(embeddedMorphs includes: each)
			 ifFalse: [ each abandon]].
	self text embeddedMorphs do: [:each |
		(self submorphs includes: each)
			ifFalse: [self addMorph: each].
		each eventHandler ifNil: [ |  eventHandler |
			eventHandler := EventHandler new on: #mouseDown send: #startDragging:onMorph: to: self.
				each eventHandler: eventHandler]].
		
		