as yet unclassified
on: aBTRGraphBlock

	^ self basicNew
		graph: aBTRGraphBlock;
		in: [:instance | aBTRGraphBlock addDependent: instance];
		initialize;
		yourself