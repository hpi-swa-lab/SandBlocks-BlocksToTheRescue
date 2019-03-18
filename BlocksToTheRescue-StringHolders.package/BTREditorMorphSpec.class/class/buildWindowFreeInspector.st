helper
buildWindowFreeInspector

	^ (MorphicToolBuilder newSubclass
		compile: 'buildPluggableWindow: spec ^ self buildPluggablePanel: spec';
		new) open: (Inspector inspect: nil)