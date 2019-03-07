as yet unclassified
update: anAspect

	anAspect caseOf: {
		"[self getValueSelector] -> [self value: self modelValue]."
		[#acceptChanges] -> [self accept].
		[#revertChanges] -> [self cancel].
		[#editSelection] -> [].
		[#contents] -> 
			[(self model codeMorph = self viewPort) 
				ifTrue: [self changed: #contentMorphs]
				ifFalse: [self model: nil]].
	} otherwise: [].