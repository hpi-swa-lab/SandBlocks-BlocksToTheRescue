as yet unclassified
update: anAspect

	anAspect caseOf: {
		"[self getValueSelector] -> [self value: self modelValue]."
		[self valueChangedSelector] -> [self valueChanged].
		[#wantToChange] -> [self canDiscardEdits ifFalse: [self promptForCancel]].
		[#contents] -> 
			[(self model codeMorph = self viewPort) 
				ifTrue: [self model method ~= self content ifTrue: [self contentsChanged]]
				ifFalse: [self model: nil]].
	} otherwise: [].