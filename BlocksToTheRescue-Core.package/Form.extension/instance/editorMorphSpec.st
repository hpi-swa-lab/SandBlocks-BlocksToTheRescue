*BlocksToTheRescue-Core
editorMorphSpec

	^ BTREditorMorphSpec default
		setValueSelector: [:morph :value | morph value image: value];
		getValueSelector: [:morph | morph value image];
		constructor: 
			[BTRMorphEditorMorph new
				value: self asMorph;
				yourself];
		yourself