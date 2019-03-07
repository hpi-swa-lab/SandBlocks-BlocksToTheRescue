code pane
installConstantEditor

	BTRConstantEditor new
		model: self;
		getValueSelector: #method;
		"setValueSelector: #value:;"
		in: [:editor | self install: (ToolBuilder default build: editor)].
		"self methodReference compiledMethod asEditorMorph"