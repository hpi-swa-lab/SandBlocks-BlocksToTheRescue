as yet unclassified
for: aBTRGraphModel

	^ self basicNew
		graph: aBTRGraphModel;
		in: [:instance | aBTRGraphModel addDependent: instance];
		initialize;
		yourself