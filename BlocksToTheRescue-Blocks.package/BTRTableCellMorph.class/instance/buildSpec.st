initialization
buildSpec

	^ PluggableInputFieldSpec new
		model: self cellModel;
		getText: #value;
		setText: #value:;
		yourself
		