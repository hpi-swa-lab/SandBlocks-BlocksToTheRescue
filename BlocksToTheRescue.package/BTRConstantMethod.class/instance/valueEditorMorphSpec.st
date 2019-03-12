accessing
valueEditorMorphSpec

	^ (self value respondsTo: #editorMorphSpec)
		ifTrue: [self value editorMorphSpec]
		ifFalse: [BTREditorMorphSpec inspector]