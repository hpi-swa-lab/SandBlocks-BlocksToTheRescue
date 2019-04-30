accessing
dockingPointAt: aSymbol

	^ aSymbol caseOf: {
		[#top] -> [self topCenter].
		[#right] -> [self rightCenter].
		[#bottom] -> [self bottomCenter].
		[#left] -> [self leftCenter]
	}