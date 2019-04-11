views
editorView

	^ BTRMorphEditorMorph new 
		value: self value;
		in: [:editor | editor addDependent: self];
		yourself