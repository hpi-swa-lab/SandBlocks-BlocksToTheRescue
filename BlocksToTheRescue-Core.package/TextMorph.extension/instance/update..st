*BlocksToTheRescue-Core
update: anObject

	(self hasUnacceptedEdits not and: [self text embeddedBlockModels includes: anObject])
		ifTrue: [self hasUnacceptedEdits: true].
		
	^ super update: anObject