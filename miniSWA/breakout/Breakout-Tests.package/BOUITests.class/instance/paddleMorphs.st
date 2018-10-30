accessing
paddleMorphs

	^ self paddleEntities
		collect: [:entity | entity morph]