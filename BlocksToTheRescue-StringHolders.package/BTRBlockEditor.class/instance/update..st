updating
update: anAspect

	anAspect caseOf: {
		[self content] -> 		[self hasUnacceptedEdits: true].
		[#accept] -> 			[self accept].
		[#wantToChange] -> 	[self canDiscardEdits ifFalse: [self promptForCancel]].
		[#contents] -> 			[(self model codeMorph = self viewPort) 
									ifTrue: [self updateContentsIfNecessary]
									ifFalse: [self model: nil]].
	} otherwise: [].