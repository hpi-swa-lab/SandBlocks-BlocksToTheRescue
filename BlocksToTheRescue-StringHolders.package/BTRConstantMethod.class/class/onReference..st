instance creation
onReference: aMethodReference

	 ^ self basicNew
		methodReference: aMethodReference;
		initialize;
		install;
		yourself