initialization
buildInputFieldSpecWith: getTextSel and: setTextSel

	self inputFieldSpec: (PluggableInputFieldSpec new
		model: self model;
		getText: getTextSel;
		setText: setTextSel;
		yourself).