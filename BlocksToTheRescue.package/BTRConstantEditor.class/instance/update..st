as yet unclassified
update: anAspect

	anAspect caseOf: {
		"[self getValueSelector] -> [self value: self modelValue]."
		[#acceptChanges] -> [self accept].
		[#revertChanges] -> [self cancel].
		[#editSelection] -> [].
		[#editorSwitched] -> [(self model codeMorph ~= self viewPort) ifTrue: [self model: nil]].
		[#contents] -> [self changed: #contentMorphs].
	} otherwise: [].