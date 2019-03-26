views
buildWindowFreeInspector

	^ ((MorphicToolBuilder newSubclass
		compile: 'buildPluggableWindow: spec ^ self buildPluggablePanel: spec';
		new) open: (Inspector inspect: self)) abandon "Do not accidentaly open the Inspector in the world"