*BlocksToTheRescue-Core
adjustEmbeddedMorphs

	|embeddedMorphs|
	self adjustEmbeddedBlockModels.
	embeddedMorphs := self text embeddedMorphs.
	self submorphsDo: [:each |
		(embeddedMorphs identityIncludes: each)
			 ifFalse: [each abandon]].
	self text embeddedMorphs do: [:each |
		(self submorphs identityIncludes: each)
			ifFalse: [self addMorph: each].
		each eventHandler ifNil: [ | eventHandler |
			eventHandler := EventHandler new on: #mouseDown send: #startDragging:onMorph: to: self.
				each eventHandler: eventHandler]].