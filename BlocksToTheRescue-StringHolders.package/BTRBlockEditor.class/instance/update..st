updating
update: anAspect

	anAspect caseOf: {
		[self content] -> [self hasUnacceptedEdits: true].
		[self valueChangedSelector] -> [self value ~= self content value ifTrue: [self valueChanged]].
		[#wantToChange] -> [self canDiscardEdits ifFalse: [self promptForCancel]].
		[#contents] -> 
			[self haltOnce.
			(self model codeMorph = self viewPort) 
				ifTrue: [self model method ~= self content ifTrue: [self contentsChanged]]
				ifFalse: [self model: nil]].
	} otherwise: [].