tests
testApplySelectors

	| editor |
	editor := BTRConstantEditor new.
	self fixture applyTo: editor.
	self assert: self fixture getValueSelector equals: editor getValueSelector.
	self assert: self fixture setValueSelector equals: editor setValueSelector.
	self assert: self fixture valueChangedSelector equals: editor valueChangedSelector.