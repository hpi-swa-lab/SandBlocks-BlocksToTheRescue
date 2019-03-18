updating
contentsChanged

	self morph 
		removeDependent: self;
		eventHandler: nil.
	self content: self model method.
	self resetValueSelectors.
	self acceptSpec: self content editorMorphSpec.
	self changed: #contentMorphs. 
	self morph 
		addDependent: self;
		eventHandler: self eventHandler.
	self cancel.