as yet unclassified
on: aGraph

	^ self basicNew
		graph: aGraph;
		in: [:instance | aGraph addDependent: instance];
		initialize;
		yourself