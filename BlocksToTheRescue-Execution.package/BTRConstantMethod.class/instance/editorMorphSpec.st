accessing
editorMorphSpec

	^ editorMorphSpec ifNil: [self valueEditorMorphSpec]