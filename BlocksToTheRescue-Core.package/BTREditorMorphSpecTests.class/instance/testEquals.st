tests
testEquals

	self 
		assert: 
			(BTREditorMorphSpec new
				getValueSelector: [:morph | morph value];
				setValueSelector: #value:;
				valueChangedSelector: #valueChanged;
				constructor: [Morph new])
		equals: 
			(BTREditorMorphSpec new
				getValueSelector: [:morph | morph value];
				setValueSelector: #value:;
				valueChangedSelector: #valueChanged;
				constructor: [Morph new]).
	

	