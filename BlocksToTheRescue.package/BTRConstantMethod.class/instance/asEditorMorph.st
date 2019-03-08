as yet unclassified
asEditorMorph

	self value isColor ifTrue: 
		[^ NewColorPickerMorph
			on: nil
			originalColor: self value
			setColorSelector: nil].
	self value isMorph ifTrue: 
		[^ BTRMorphEditorMorph new].
	self shouldBeImplemented.