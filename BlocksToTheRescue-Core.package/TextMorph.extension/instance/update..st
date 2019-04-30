*BlocksToTheRescue-Core
update: anObject

	"We use asIdentitySet here because we need to make sure that the exact block models that are in our Text have caused this update.
	Otherwise some BlockModel that is still a dependent of us may cause this update, causing us to have unaccepted edits."
	(self hasUnacceptedEdits not and: [self text embeddedBlockModels asIdentitySet includes: anObject])
			ifTrue: [self hasUnacceptedEdits: true].
		
	^ super update: anObject