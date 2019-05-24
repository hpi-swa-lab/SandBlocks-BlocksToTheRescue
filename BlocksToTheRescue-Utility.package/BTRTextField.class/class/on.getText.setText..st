instance creation
on: aModel getText: getTextSel setText: setTextSel

	^ self basicNew
		model: aModel;
		in: [:instance | aModel addDependent: instance];
		buildInputFieldSpecWith: getTextSel and: setTextSel;
		initialize;
		yourself