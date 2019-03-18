tests
testAllowsAlternativeEditorSpec

	| normal new |
	new := BTREditorMorphSpec inspector.
	normal := self method value copy editorMorphSpec.
	self deny: normal = new.
	self method editorMorphSpec: new.
	self deny: self method editorMorphSpec = normal.
	self assert: new equals: self method editorMorphSpec.