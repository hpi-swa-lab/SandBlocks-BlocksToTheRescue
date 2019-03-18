instance creation
inspector

	^ self new
		setValueSelector: [:morph :value | morph model object: value];
		getValueSelector: [:morph | morph model object];
		valueChangedSelector: #inspectObject;
		constructor: 
			[self buildWindowFreeInspector
				beSticky;
				yourself]