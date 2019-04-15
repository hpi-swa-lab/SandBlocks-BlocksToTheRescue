initialization
buildSpec

	^ PluggableInputFieldSpec new
		model: self cellModel;
		getText: #valueExpression;
		setText: #valueExpression:;
		yourself
		