as yet unclassified
hasUnacceptedEdits

	^ super hasUnacceptedEdits or: [self submorphs anySatisfy: #hasUnacceptedEdits]