updating
update: anAspect

	anAspect caseOf: {
		[self content] -> [self hasUnacceptedEdits: true].
		[#wantToChange] -> [self canDiscardEdits ifFalse: [self promptForCancel]].
		[#contents] -> 
			[(self model codeMorph = self viewPort) 
				ifTrue: [
					(self model method ~= self content and: [self hasUnacceptedEdits not]) 
						ifTrue: [self contentsChanged]]
				ifFalse: [self model: nil]].
	} otherwise: [].