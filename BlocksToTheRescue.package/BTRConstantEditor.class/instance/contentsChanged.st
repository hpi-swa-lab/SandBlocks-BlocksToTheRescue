as yet unclassified
contentsChanged

	self morph removeDependent: self. 
	self content: self model method.
	self 
		getValueSelector: nil;
		setValueSelector: nil;
		valueChangedSelector: nil.
	self content editorMorphSpecs do: [:each | self instVarNamed: each key put: each value].
	self changed: #contentMorphs. 
	self morph addDependent: self.
	self cancel.