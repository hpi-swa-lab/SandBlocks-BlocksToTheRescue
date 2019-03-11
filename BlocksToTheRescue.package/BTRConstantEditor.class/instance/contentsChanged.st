updating
contentsChanged

	self morph 
		removeDependent: self;
		eventHandler: nil.
	self content: self model method.
	self resetValueSelectors.
	self content editorMorphSpecs do: [:each | self instVarNamed: each key put: each value].
	self changed: #contentMorphs. 
	self morph 
		addDependent: self;
		eventHandler: self eventHandler.
	self cancel.