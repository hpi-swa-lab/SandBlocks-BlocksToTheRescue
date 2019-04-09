updating
update: anAspect

	anAspect caseOf: {
		[self content] -> 		[self hasUnacceptedEdits: true].
		[#accept] -> 			[self accept].
		[#wantToChange] -> 	[self canDiscardEdits ifFalse: [self promptForCancel]].
		[#contents] -> 			[(self model codeMorph = self viewPort) 
									ifTrue: [
										(self model method ~= self blockMethod and: [self hasUnacceptedEdits not]) 
											ifTrue: [self contentsChanged]]
											ifFalse: [self model: nil]].
	} otherwise: [].